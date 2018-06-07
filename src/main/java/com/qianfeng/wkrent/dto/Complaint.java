package com.qianfeng.wkrent.dto;

import java.util.Date;

public class Complaint {
    private Short complaintId;

    private Short userId;

    private String complaintContent;

    private Date complaintTime;

    public Short getComplaintId() {
        return complaintId;
    }

    public void setComplaintId(Short complaintId) {
        this.complaintId = complaintId;
    }

    public Short getUserId() {
        return userId;
    }

    public void setUserId(Short userId) {
        this.userId = userId;
    }

    public String getComplaintContent() {
        return complaintContent;
    }

    public void setComplaintContent(String complaintContent) {
        this.complaintContent = complaintContent == null ? null : complaintContent.trim();
    }

    public Date getComplaintTime() {
        return complaintTime;
    }

    public void setComplaintTime(Date complaintTime) {
        this.complaintTime = complaintTime;
    }
}