package com.cps.fabric.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Component
public class Path {
    /**
     * #Org1(2)组织管理员admin用户私钥的路径
     * peerOrganization-org1(2)-users-Admin-msp-keystore
     */
    @Value("${keyFolderPath}")
    public String keyFolderPath;
    @Value("${keyFolderPath2}")
    public String keyFolderPath2;
    /**
     * #Org1(2)组织管理员admin用户私钥的值
     * 就是上面路径的值 xxx_sk
     */
    @Value("${keyFileName}")
    public String keyFileName;
    @Value("${keyFileName2}")
    public String keyFileName2;
    /**
     * #Org1组织管理员admin的身份验证证书的路径
     * peerOrganization-org1(2)-users-Admin-msp-admincerts
     */
    @Value("${certFolderPath}")
    public String certFolderPath;
    @Value("${certFolderPath2}")
    public String certFolderPath2;
    /**
     * #Org1(2)组织管理员admin的身份验证证书的值
     * 就是上面路径的值 xxx_pem
     */
    @Value("${certFileName}")
    public String certFileName;
    @Value("${certFileName2}")
    public String certFileName2;

    /**
     * order的tls的证书路径
     * orderOrganization-tlsca-xxx.pem
     */
    @Value("${tlsOrderFilePath}")
    public String tlsOrderFilePath;

    /**
     * 命令创建channel时的tx文件路径
     */
//    @Value("${txfilePath}")
//    public String txfilePath;

    /**
     * peer的tls的证书路径
     * peerOrganization-org1-peers-peer0-msp-tlscacerts-com-xxx.pem
     */
    @Value("${tlsPeerFilePath}")
    public String tlsPeerFilePath;
    @Value("${tlsPeerFilePathAddition}")
    public String tlsPeerFilePathAddition;

    /**
     * order节点信息
     */
    @Value("${orderName}")
    public String orderName;
    @Value("${orderGrpc}")
    public String orderGrpc;

    /**
     * peer节点信息
     */
    @Value("${peer0Name}")
    public String peer0Name;
    @Value("${peer0Grpc}")
    public String peer0Grpc;
    @Value("${peer1Name}")
    public String peer1Name;
    @Value("${peer1Grpc}")
    public String peer1Grpc;

    @Value("${peer0Name2}")
    public String peer0Name2;
    @Value("${peer0Grpc2}")
    public String peer0Grpc2;
    @Value("${peer1Name2}")
    public String peer1Name2;
    @Value("${peer1Grpc2}")
    public String peer1Grpc2;
}
