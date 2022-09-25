package com.cps.wh.task;

import com.cps.wh.service.IWhStorageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * @description:
 * @author: cps
 */
@Component("storageTask")
public class StorageTask {

    @Autowired
    private IWhStorageService whStorageService;

    public void updateisEmptyTask() {
        whStorageService.updateisEmptyTask();
        System.out.println("执行无参方法");
    }
}
