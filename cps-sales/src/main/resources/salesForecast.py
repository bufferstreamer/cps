# -*- coding: utf-8 -*-

# import pickle
import pandas as pd
import matplotlib.pyplot as plt
from pandas.io import sql    
plt.rcParams['font.sans-serif'] = ['SimHei']    #定义使其正常显示中文字体黑体
plt.rcParams['axes.unicode_minus'] = False      #用来正常显示表示负号
import warnings
warnings.filterwarnings("ignore")
import statsmodels.api as sm
import pymysql
import datetime

print("sales forecast analysis")
#连接数据库
try:
    #210.30.97.22
    db_cps = pymysql.connect(host='210.30.97.22',
                      user='root',
                      password='root',
                      database='cps')
    cursor_cps = db_cps.cursor()
except:
        print("\033[1;31m ERROR:When updating the sales forecast, the database control failed. Please check whether the database information is correct \033[0m")
        
sql_select_productId = "select product_id from sales_forecast"
cursor_cps.execute(sql_select_productId)
productList = list(cursor_cps.fetchall())
for a in range(productList.__len__()):
    product_id = list(productList[a])[0]
    print("Forecast the sales volume of "+str(product_id)+" commodity")
    # print(product_id)
    # print(type(product_id))
    sql_select_sales = "select create_time,actual_number \
                        from wms_wh_outbound_order_seed \
                        where shop_goods_id=%d and create_time > date_sub(NOW(),interval 2 YEAR) \
                        order by create_time asc"%(product_id)
    #执行sql语句
    cursor_cps.execute(sql_select_sales)
    try:
        # 编写年份
        result = list(cursor_cps.fetchall())
        for i in range(result.__len__()):
            result[i] = list(result[i])
        index = [str(result[0][0])[0:7]]
        data = [0]
        now = str(datetime.datetime.now())[0:7]
        old = str(result[0][0])[0:7]
        while(old!=now):
            #print(index[-1])
            #年份不等
            if(old[0:4]!=now[0:4]):
                if(old[5:7]!="12"):
                    nextMonth = int(old[5:7])+1
                    if(nextMonth>=10):
                        old = old[0:5]+str(nextMonth)
                    else:
                        old = old[0:5]+"0"+str(nextMonth)
                    index.append(old)
                    data.append(0)
                else:
                    old = str(int(old[0:4])+1)+"-"+"01"
                    index.append(old)
                    data.append(0)
            #年份相等
            else:
                nextMonth = int(old[5:7])+1
                if(nextMonth>=10):
                    old = old[0:5]+str(nextMonth)
                else:
                    old = old[0:5]+"0"+str(nextMonth)
                index.append(old)
                data.append(0)
        #print(index)
        for i in range(result.__len__()):
            indexSeed = index.index(str(result[i][0])[0:7])
            data[indexSeed] = data[indexSeed]+float(result[i][1])
        #print(data)
        data = pd.DataFrame(data,index=index,columns=['销量'])
        data.index.name = '日期'
        # print(data)
    except:
        print("\033[1;31m WARNING:The construction of sales data failed, which may be caused by insufficient sales data \033[0m")
        sales_forecast_1 = "销量信息不足，暂无法预测"
        sales_forecast_2 = "销量信息不足，暂无法预测"
    # #标准误差为：
    # error = predictions[1]
    # print(u'标准误差为：',error)
    # #置信区间为：
    # confidence = predictions[2]
    # print(u'置信区间为：',confidence)
        sql_update = "update sales_forecast \
                          set `sales_forecast_1`='%s', \
                              `sales_forecast_2`='%s' \
                          where product_id = %d"\
                          %(sales_forecast_1,sales_forecast_2,product_id)
        cursor_cps.execute(sql_update)
        db_cps.commit()
        print(str(product_id)+"product,finish sales forecast!")
        continue
        #sql_insert = "insert into sales_ forecast (`sales_forecast_1`,`sales_forecast_2`) \
        #                values ('%s','%s') where product_id = %d"%(sales_forecast_1,sales_forecast_2,2)
        # sql_insert = "insert into sales_forecast (`sales_forecast_1`,`sales_forecast_2`) \
                        # values ('%s','%s') "%(sales_forecast_1,sales_forecast_2)
        # cursor_cps.execute(sql_insert)``
        
    # data = pd.read_excel('E:/1-PythonProject/Arima-master/product17.xls', index_col = u'日期',header = 0)
    # print(data)
    # 画出时序图
    # data.plot()
    # plt.show()
    # 对数据进行差分后得到 自相关图和 偏相关图
    D_data = data.diff().dropna()
    D_data.columns = [u'销量差分']
    #对模型进行定阶
    pmax = int(len(D_data) / 10)    #一般阶数不超过 length /10
    qmax = int(len(D_data) / 10)
    bic_matrix = []
    for p in range(pmax +1):
        temp = []
        for q in range(qmax+1):
            try:
                value = sm.tsa.arima.ARIMA(D_data, order=(p,1,q)).fit().bic
                temp.append(value)
            except:
                temp.append(None)
            bic_matrix.append(temp)
    bic_matrix = pd.DataFrame(bic_matrix)   #将其转换成Dataframe 数据结构
    try:
        p,q = bic_matrix.stack().astype('float64').idxmin()   #先使用stack 展平， 然后使用 idxmin 找出最小值的位置
        # print(u'BIC 最小的p值 和 q 值：%s,%s' %(p,q))  #  BIC 最小的p值 和 q 值：0,1
        #所以可以建立ARIMA 模型
        model = sm.tsa.arima.ARIMA(data, order=(p,1,q)).fit()
        model.summary()
        #保存模型
        # model.save('model.pkl')
        # f = open('model.pkl','rb')
        # content =  pickle.load(f)
        # print(content.summary())
        #预测未来3个单位
        predictions=model.forecast(2)
        # print(predictions)
        # print(type(predictions))
        # print(predictions.values)
        # print(type(predictions.values))
        # print(predictions.values[0])
        # print(predictions.values[1])
        if(int(predictions.values[0])>0):
            if(predictions.values[0]-int(predictions.values[0])>=0.5):
                sales_forecast_1 = int(predictions.values[0])+1
            else:
                sales_forecast_1 = int(predictions.values[0])
        else:
                sales_forecast_1 = "销量信息不足，暂无法预测"
        if(int(predictions.values[1])>0):
            if(predictions.values[1]-int(predictions.values[1])>=0.5):
                sales_forecast_2 = int(predictions.values[1])+1
            else:
                sales_forecast_2 = int(predictions.values[1])
        else:
                sales_forecast_2 = "销量信息不足，暂无法预测"
        #预测结果为：
        pre_result = predictions.values[0]
        print(u'Forecast results:',pre_result)
    except:
        print("\033[1;31m WARNING:The construction of sales data failed, which may be caused by insufficient sales data \033[0m")
        sales_forecast_1 = "销量信息不足，暂无法预测"
        sales_forecast_2 = "销量信息不足，暂无法预测"
    # #标准误差为：
    # error = predictions[1]
    # print(u'标准误差为：',error)
    # #置信区间为：
    # confidence = predictions[2]
    # print(u'置信区间为：',confidence)
    sql_update = "update sales_forecast \
                      set `sales_forecast_1`='%s', \
                          `sales_forecast_2`='%s' \
                      where product_id = %d"\
                      %(sales_forecast_1,sales_forecast_2,product_id)
    cursor_cps.execute(sql_update)
    db_cps.commit()
    # sql_insert = "insert into sales_ forecast (`sales_forecast_1`,`sales_forecast_2`) \
    #                values ('%s','%s') where product_id = %d"%(sales_forecast_1,sales_forecast_2,2)
    # sql_insert = "insert into sales_forecast (`sales_forecast_1`,`sales_forecast_2`) \
                    # values ('%s','%s') "%(sales_forecast_1,sales_forecast_2)
    # cursor_cps.execute(sql_insert)
    
    print(str(product_id)+"product,finish sales forecast!")
db_cps.commit()
db_cps.close()
     

