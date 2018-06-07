package com.qianfeng.wkrent.dto;

public class Tag {
    private Short tagId;

    private String tagName;

    public Short getTagId() {
        return tagId;
    }

    public void setTagId(Short tagId) {
        this.tagId = tagId;
    }

    public String getTagName() {
        return tagName;
    }

    public void setTagName(String tagName) {
        this.tagName = tagName == null ? null : tagName.trim();
    }
}