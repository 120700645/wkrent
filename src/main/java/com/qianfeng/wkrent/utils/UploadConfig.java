package com.qianfeng.wkrent.utils;

import org.springframework.stereotype.Repository;

@Repository
public class UploadConfig {
    private String filePath;

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }
}
