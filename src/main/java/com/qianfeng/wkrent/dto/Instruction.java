package com.qianfeng.wkrent.dto;

public class Instruction {
    private Short instructionId;

    private String instructionContent;

    public Short getInstructionId() {
        return instructionId;
    }

    public void setInstructionId(Short instructionId) {
        this.instructionId = instructionId;
    }

    public String getInstructionContent() {
        return instructionContent;
    }

    public void setInstructionContent(String instructionContent) {
        this.instructionContent = instructionContent == null ? null : instructionContent.trim();
    }
}