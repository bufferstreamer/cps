package com.cps.fabric.controller;

import com.cps.fabric.bean.Path;
import com.cps.fabric.client.FabricClient;
import com.cps.fabric.service.SDKService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/sdk")
public class ChainCodeController {


    @Autowired
    private SDKService sdkService;

    //安装链码(智能合约:Java版本)
    @RequestMapping("/chainCodeInstall")
    @ResponseBody
    public String chainCodeInstallJava() throws Exception {
        FabricClient fabricClient = sdkService.initFabricClient();
        sdkService.chainCodeInstall(fabricClient);
        return "install chainCode success";
    }

    //合约实例化
    @RequestMapping("/chainCodeInit")
    @ResponseBody
    public String initChainCodeJava() throws Exception {
        FabricClient fabricClient = sdkService.initFabricClient();
        sdkService.chainCodeInit(fabricClient);
        return "init success";
    }

    //合约实例化
    @RequestMapping("/chainCodeUpdate")
    @ResponseBody
    public String updateChainCodeJava() throws Exception {
        FabricClient fabricClient = sdkService.initFabricClient();
        sdkService.chainCodeInit(fabricClient);
        return "init success";
    }

    //合约的增
    @RequestMapping("/add")
    @ResponseBody
    public String invokeChainCodeJavaAdd() throws Exception {
        FabricClient fabricClient = sdkService.initFabricClient();
        String initArgs[] = new String[2];
        initArgs[0] = "xuefan123";
        initArgs[1] = "test222222";
        sdkService.chainCodeOfInvoke(fabricClient,"add",initArgs);
        return "add success";
    }

    //合约的删
    @RequestMapping("/delete")
    @ResponseBody
    public String invokeChainCodeJavaDelete() throws Exception {
        FabricClient fabricClient = sdkService.initFabricClient();
        String initArgs[] = new String[1];
        initArgs[0] = "dut";
        sdkService.chainCodeOfInvoke(fabricClient,"delete",initArgs);
        return "delete success";
    }

    //合约的改
    @RequestMapping("/update")
    @ResponseBody
    public String invokeChainCodeJavaUpdate() throws Exception {
        FabricClient fabricClient = sdkService.initFabricClient();
        String initArgs[] = new String[2];
        initArgs[0] = "xuefan123";
        initArgs[1] = "111111111111";
        sdkService.chainCodeOfInvoke(fabricClient,"update",initArgs);
        return "update success";
    }

    //合约的查
    @RequestMapping("/query")
    @ResponseBody
    public String invokeChainCodeJavaQuery() throws Exception {
        FabricClient fabricClient = sdkService.initFabricClient();
        String initArgs[] = new String[1];
        initArgs[0] = "29bad6cf86b248f3987e877b69dc120d";
//        sdkService.chainCodeOfQuery(fabricClient,"query",initArgs);
//        return "query success";
        return sdkService.chainCodeOfQuery(fabricClient,"query",initArgs);
    }

    @RequestMapping("/queryHistory")
    @ResponseBody
    public String invokeChainCodeJavaQueryHistory() throws Exception {
        FabricClient fabricClient = sdkService.initFabricClient();
        String initArgs[] = new String[1];
        initArgs[0] = "34e2033bac4e41f2a3975c37c0518681";
//        sdkService.chainCodeOfQuery(fabricClient,"query",initArgs);
//        return "query success";
        return sdkService.chainCodeOfQueryHistory(fabricClient,"queryHistory",initArgs);
    }
}
