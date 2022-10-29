package com.cps.fabric.bean;

import org.hyperledger.fabric.sdk.Enrollment;

import java.security.PrivateKey;

/***
 *@author M S I
 *@date 27/10/2022 19:06:52
 *@description
 */
public class CAEnrollment implements Enrollment {
    private PrivateKey key;
    private String ecert;

    public CAEnrollment(PrivateKey key, String ecert) {
        this.key = key;
        this.ecert = ecert;
    }

    @Override
    public PrivateKey getKey() {
        return key;
    }

    @Override
    public String getCert() {
        return ecert;
    }
}
