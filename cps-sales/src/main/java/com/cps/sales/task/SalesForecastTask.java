package com.cps.sales.task;

import org.springframework.stereotype.Component;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;

@Component("SalesForecastTask")
public class SalesForecastTask {
    public void renewSalesForecast(){
        System.out.println(111111112);
        Process proc;
        try {
            /*这里要换成绝对路径*/
            //String[] arg = new String[]{"python", "E:\\IdeaProjects\\cps-3\\cps-sales\\src\\main\\resources\\salesForecast.py"};
            File directory = new File("");//参数为空
            String courseFile = directory.getCanonicalPath() ;
            //proc = Runtime.getRuntime().exec("python e:/IdeaProjects/cps-3/cps-sales/src/main/resources/salesForecast.py");// 执行py文件
            //proc = Runtime.getRuntime().exec("python e:/IdeaProjects/cps-3/cps-sales/src/main/resources/salesForecast.py");

            //proc = Runtime.getRuntime().exec("cmd.exe /c start python "+courseFile+"\\document\\otherPython\\salesForecast.py");
//            proc = Runtime.getRuntime().exec(" python3 "+courseFile+"/otherPython/salesForecast.py");
            proc = Runtime.getRuntime().exec(" python3 "+"/home/cps/otherPython/salesForecast.py");

            //用输入输出流来截取结果
            BufferedReader in = new BufferedReader(new InputStreamReader(proc.getInputStream()));
            String line = null;
            while ((line = in.readLine()) != null) {
                System.out.println(line);
            }
            //if(proc.exitValue() != 0){
            //    System.out.println("ERROR:销量预测读取失败，请检查算法文件正确，且路径准确");
            //}
            in.close();
            proc.waitFor();
        } catch (IOException e) {
            System.out.println("失败1");
            e.printStackTrace();
        } catch (InterruptedException e) {
            System.out.println("失败2");
            e.printStackTrace();
        }
    }
}
