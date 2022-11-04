package com.cps.cp.service.impl;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;
        import com.cps.common.utils.DateUtils;
import com.cps.cp.domain.TenderSeed;
import com.cps.cp.mapper.TenderSeedMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cps.cp.mapper.TrenderInformationMapper;
import com.cps.cp.domain.TrenderInformation;
import com.cps.cp.service.ITrenderInformationService;
import com.cps.common.core.text.Convert;
import org.springframework.transaction.annotation.Transactional;

/**
 * 自动生成标书信息Service业务层处理
 *
 * @author cps
 * @date 2022-10-24
 */
@Service
public class TrenderInformationServiceImpl implements ITrenderInformationService {
    @Autowired
    private TrenderInformationMapper trenderInformationMapper;

    @Autowired
    private TenderSeedMapper tenderSeedMapper;

    /**
     * 查询自动生成标书信息
     *
     * @param id 自动生成标书信息主键
     * @return 自动生成标书信息
     */
    @Override
    public TrenderInformation selectTrenderInformationById(Long id) {
        return trenderInformationMapper.selectTrenderInformationById(id);
    }

    /**
     * 查询自动生成标书信息列表
     *
     * @param trenderInformation 自动生成标书信息
     * @return 自动生成标书信息
     */
    @Override
    public List<TrenderInformation> selectTrenderInformationList(TrenderInformation trenderInformation) {
        return trenderInformationMapper.selectTrenderInformationList(trenderInformation);
    }

    /**
     * 新增自动生成标书信息
     *
     * @param trenderInformation 自动生成标书信息
     * @return 结果
     */
    @Override
    public int insertTrenderInformation(TrenderInformation trenderInformation) {
        trenderInformation.setCreateTime(DateUtils.getNowDate());
//        TenderSeed tenderSeed = new TenderSeed();
        int result = trenderInformationMapper.insertTrenderInformation(trenderInformation);
//        tenderSeed.setTenderInformationId(trenderInformation.getId());
//        result = tenderSeedMapper.insertTenderSeed(tenderSeed);
        /*System.out.println(trenderInformation.getId());
        Process proc;
        try {
            *//*这里要换成绝对路径*//*
            //String[] arg = new String[]{"python", "E:\\IdeaProjects\\cps-3\\cps-sales\\src\\main\\resources\\salesForecast.py"};
            //proc = Runtime.getRuntime().exec("python e:/IdeaProjects/cps-3/cps-sales/src/main/resources/salesForecast.py");// 执行py文件
            File directory = new File("");//参数为空
            String courseFile = directory.getCanonicalPath() ;
            proc = Runtime.getRuntime().exec("python "+courseFile+"\\document\\otherPython\\招标文件生成.py "+ 189);
            //proc = Runtime.getRuntime().exec("python E:\\IdeaProjects\\cps-3\\document\\otherPython\\招标文件生成.py 2");
            //用输入输出流来截取结果
            BufferedReader in = new BufferedReader(new InputStreamReader(proc.getInputStream()));
            String line = null;
            while ((line = in.readLine()) != null) {
                System.out.println(line);
            }
            if(proc.exitValue() != 0){
                System.out.println("ERROR:生成招标文件失败，请检查算法文件正确，且路径准确");
            }
            in.close();
            proc.waitFor();
        } catch (IOException e) {
            System.out.println("失败1");
            e.printStackTrace();
        } catch (InterruptedException e) {
            System.out.println("失败2");
            e.printStackTrace();
        }*/
            return result;
    }

    /**
     * 修改自动生成标书信息
     *
     * @param trenderInformation 自动生成标书信息
     * @return 结果
     */
    @Override
    public int updateTrenderInformation(TrenderInformation trenderInformation) {

        int result = trenderInformationMapper.updateTrenderInformation(trenderInformation);
        System.out.println(trenderInformation.getId());
        Process proc;
        try {

            //String[] arg = new String[]{"python", "E:\\IdeaProjects\\cps-3\\cps-sales\\src\\main\\resources\\salesForecast.py"};
            //proc = Runtime.getRuntime().exec("python e:/IdeaProjects/cps-3/cps-sales/src/main/resources/salesForecast.py");// 执行py文件
            File directory = new File("");//参数为空
            String courseFile = directory.getCanonicalPath() ;
            proc = Runtime.getRuntime().exec("python "+courseFile+"\\document\\otherPython\\招标文件生成.py "+ trenderInformation.getId());
            //proc = Runtime.getRuntime().exec("python E:\\IdeaProjects\\cps-3\\document\\otherPython\\招标文件生成.py 2");
            //用输入输出流来截取结果
            BufferedReader in = new BufferedReader(new InputStreamReader(proc.getInputStream()));
            String line = null;
            while ((line = in.readLine()) != null) {
                System.out.println(line);
            }
            if(proc.exitValue() != 0){
                System.out.println("ERROR:生成招标文件失败，请检查算法文件正确，且路径准确");
            }
            in.close();
            proc.waitFor();
        } catch (IOException e) {
            System.out.println("失败1");
            e.printStackTrace();
        } catch (InterruptedException e) {
            System.out.println("失败2");
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 批量删除自动生成标书信息
     *
     * @param ids 需要删除的自动生成标书信息主键
     * @return 结果
     */
    @Override
    public int deleteTrenderInformationByIds(String ids) {
        return trenderInformationMapper.deleteTrenderInformationByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除自动生成标书信息信息
     *
     * @param id 自动生成标书信息主键
     * @return 结果
     */
    @Override
    public int deleteTrenderInformationById(Long id) {
        return trenderInformationMapper.deleteTrenderInformationById(id);
    }
}
