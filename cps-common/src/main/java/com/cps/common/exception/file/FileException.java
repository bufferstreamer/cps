package com.cps.common.exception.file;

import com.cps.common.exception.base.BaseException;

/**
 * 文件信息异常类
 *
 * @author cps
 */
public class FileException extends BaseException {
    private static final long serialVersionUID = 1L;

    public FileException(String code, Object[] args) {
        super("file", code, args, null);
    }

}
