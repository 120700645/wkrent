package com.qianfeng.wkrent.dto;

public class Instruction {
    private Integer instructionId;

    private String instructionContent;

    public Integer getInstructionId() {
        return instructionId;
    }

    public void setInstructionId(Integer instructionId) {
        this.instructionId = instructionId;
    }

    public String getInstructionContent() {
        return instructionContent;
    }

    public void setInstructionContent(String instructionContent) {
        this.instructionContent = instructionContent == null ? null : instructionContent.trim();
    }
}