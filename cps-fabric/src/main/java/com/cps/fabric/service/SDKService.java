package com.cps.fabric.service;

import com.cps.fabric.bean.Path;
import com.cps.fabric.bean.UserContext;
import com.cps.fabric.client.FabricClient;
import com.cps.fabric.utils.UserUtils;
import org.hyperledger.fabric.sdk.Enrollment;
import org.hyperledger.fabric.sdk.Orderer;
import org.hyperledger.fabric.sdk.Peer;
import org.hyperledger.fabric.sdk.TransactionRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/***
 *@author M S I
 *@date 27/10/2022 19:21:32
 *@description
 */
@Service
public class SDKService {

    @Autowired
    private Path path;

    public FabricClient initFabricClient() throws Exception{
        UserContext userContext = new UserContext();
        userContext.setAffiliation("Org1");
        userContext.setMspId("Org1MSP");
        userContext.setAccount("李伟");
        userContext.setName("admin");
        Enrollment enrollment = UserUtils.getEnrollment(path.keyFolderPath, path.keyFileName, path.certFolderPath, path.certFileName);
        userContext.setEnrollment(enrollment);
        System.out.println(enrollment);
        FabricClient fabricClient = new FabricClient(userContext);
        return fabricClient;
    }

    //合约的安装
    public void chainCodeInstall(FabricClient fabricClient) throws Exception {
        Peer peer0 = fabricClient.getPeer("peer0.org1.example.com", "grpcs://peer0.org1.example.com:7051",
                path.tlsPeerFilePath);
        Peer peer1 = fabricClient.getPeer("peer1.org1.example.com", "grpcs://peer1.org1.example.com:8051",
                path.tlsPeerFilePathAddition);
        List<Peer> peers = new ArrayList<Peer>();
        peers.add(peer0);
        peers.add(peer1);
        fabricClient.installChaincode(TransactionRequest.Type.JAVA, "contractInfo", "3.0", "G:\\Code\\chaincode",
                null, peers);
    }

    //合约的实例化
    public void chainCodeInit(FabricClient fabricClient) throws Exception {
        Peer peer = fabricClient.getPeer("peer0.org1.example.com", "grpcs://peer0.org1.example.com:7051", path.tlsPeerFilePath);
        Orderer order = fabricClient.getOrderer("orderer.example.com", "grpcs://orderer.example.com:7050", path.tlsOrderFilePath);
        String initArgs[] = {""};
        fabricClient.initChaincode("mychannel", TransactionRequest.Type.JAVA,"contractInfo","3.0",order,peer,"init",initArgs);
    }


    /**
     * 合约的调用
     * @param func 合约调用的方法名，add delete update
     * @param args add: 2 args; delete: 1 arg;update 2args
     * @throws Exception
     */
    public void chainCodeOfInvoke(FabricClient fabricClient,String func, String[] args) throws Exception {
        Peer peer0 = fabricClient.getPeer("peer0.org1.example.com", "grpcs://peer0.org1.example.com:7051", path.tlsPeerFilePath);
        List<Peer> peers = new ArrayList<>();
        peers.add(peer0);
        Orderer order = fabricClient.getOrderer("orderer.example.com", "grpcs://orderer.example.com:7050", path.tlsOrderFilePath);
        fabricClient.invoke("mychannel", TransactionRequest.Type.JAVA, "contractInfo", order, peers, func, args);
    }

    /**
     *
     * @param fabricClient
     * @param func query
     * @param args query: 1 arg(contractId)
     * @return
     * @throws Exception
     */
    public String chainCodeOfQuery(FabricClient fabricClient,String func,String[] args) throws Exception {
        Peer peer0 = fabricClient.getPeer("peer0.org1.example.com", "grpcs://peer0.org1.example.com:7051", path.tlsPeerFilePath);
        List<Peer> peers = new ArrayList<>();
        peers.add(peer0);
        Map map = fabricClient.queryChaincode(peers, "mychannel", TransactionRequest.Type.JAVA, "contractInfo", func, args);
        return String.valueOf(map.get(200));
    }
}
