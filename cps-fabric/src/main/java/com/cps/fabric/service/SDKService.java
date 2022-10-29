package com.cps.fabric.service;

import com.cps.fabric.bean.Path;
import com.cps.fabric.bean.UserContext;
import com.cps.fabric.client.FabricClient;
import com.cps.fabric.utils.UserUtils;
import org.apache.ibatis.annotations.Mapper;
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

    public FabricClient fabricClient;

    public void Init() throws Exception{
        System.out.println("Init SDKService");
        UserContext userContext = new UserContext();
        userContext.setAffiliation("Org1");
        userContext.setMspId("Org1MSP");
        userContext.setAccount("李伟");
        userContext.setName("admin");
        Enrollment enrollment = UserUtils.getEnrollment(path.keyFolderPath, path.keyFileName, path.certFolderPath, path.certFileName);
        userContext.setEnrollment(enrollment);
        System.out.println(enrollment);
        fabricClient = new FabricClient(userContext);
    }

    public void initChainCode() throws Exception {
        System.out.println("initChainCode");
        Peer peer = fabricClient.getPeer("peer0.org1.example.com", "grpcs://peer0.org1.example.com:7051", path.tlsPeerFilePath);
        Orderer order = fabricClient.getOrderer("orderer.example.com", "grpcs://orderer.example.com:7050", path.tlsOrderFilePath);
        String initArgs[] = {""};
        //fabricClient.initChaincode("mychannel", TransactionRequest.Type.JAVA, "basicinfo", "1.0.0", order, peer, "init", initArgs);
        fabricClient.upgradeChaincode("mychannel", TransactionRequest.Type.JAVA,"basicinfo","1.0.9",order,peer,"init",initArgs);
    }

    public void chainCodeInstall() throws Exception {
        System.out.println("chainCodeInstall");
        Peer peer0 = fabricClient.getPeer("peer0.org1.example.com", "grpcs://peer0.org1.example.com:7051",
                path.tlsPeerFilePath);
//        Peer peer1 = fabricClient.getPeer("peer1.org1.example.com", "grpcs://peer1.org1.example.com:8051",
//                path.tlsPeerFilePath1);
        List<Peer> peers = new ArrayList<Peer>();
        peers.add(peer0);
//        peers.add(peer1);
        fabricClient.installChaincode(TransactionRequest.Type.JAVA, "basicinfo", "1.0.9", "D:\\chaincode_purchase_record",
                null, peers);
    }

    public void chainCodeInvoke(String func, String[] args) throws Exception {
        Peer peer0 = fabricClient.getPeer("peer0.org1.example.com", "grpcs://peer0.org1.example.com:7051", path.tlsPeerFilePath);
        //Peer peer1 = fabricClient.getPeer("peer0.org2.example.com", "grpcs://peer0.org2.example.com:9051", tlsPeerFilePathAddtion);
        List<Peer> peers = new ArrayList<>();
        peers.add(peer0);
        //peers.add(peer1);
        Orderer order = fabricClient.getOrderer("orderer.example.com", "grpcs://orderer.example.com:7050", path.tlsOrderFilePath);
        fabricClient.invoke("mychannel", TransactionRequest.Type.JAVA, "basicinfo", order, peers, func, args);
    }

    public String queryChainCode(String func,String[] args) throws Exception {
        Peer peer0 = fabricClient.getPeer("peer0.org1.example.com", "grpcs://peer0.org1.example.com:7051", path.tlsPeerFilePath);
        //Peer peer1 = fabricClient.getPeer("peer0.org2.example.com", "grpcs://peer0.org2.example.com:9051", tlsPeerFilePathAddtion);
        List<Peer> peers = new ArrayList<>();
        peers.add(peer0);
        //peers.add(peer1);
        Map map = fabricClient.queryChaincode(peers, "mychannel", TransactionRequest.Type.JAVA, "basicinfo", func, args);

        return String.valueOf(map.get(200));
    }
}
