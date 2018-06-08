package com.qianfeng.wkrent.dto;

public class Combo {
    private Integer comboId;

    private String comboName;

    private Integer comboPrice;

    private String comboSite;

    private String comboType;

    private Integer comboDays;

    private Integer instructionId;

    private Integer noticeId;

    private String comboImg1;

    private String comboImg2;

    private String comboImg3;

    private String comboImg4;

    private String comboImg5;

    private String comboLight;

    private Instruction instruction;

    private Notice notice;

    public Instruction getInstruction() {
        return instruction;
    }

    public void setInstruction(Instruction instruction) {
        this.instruction = instruction;
    }

    public Notice getNotice() {
        return notice;
    }

    public void setNotice(Notice notice) {
        this.notice = notice;
    }

    public Integer getComboId() {
        return comboId;
    }

    public void setComboId(Integer comboId) {
        this.comboId = comboId;
    }

    public String getComboName() {
        return comboName;
    }

    public void setComboName(String comboName) {
        this.comboName = comboName == null ? null : comboName.trim();
    }

    public Integer getComboPrice() {
        return comboPrice;
    }

    public void setComboPrice(Integer comboPrice) {
        this.comboPrice = comboPrice;
    }

    public String getComboSite() {
        return comboSite;
    }

    public void setComboSite(String comboSite) {
        this.comboSite = comboSite == null ? null : comboSite.trim();
    }

    public String getComboType() {
        return comboType;
    }

    public void setComboType(String comboType) {
        this.comboType = comboType == null ? null : comboType.trim();
    }

    public Integer getComboDays() {
        return comboDays;
    }

    public void setComboDays(Integer comboDays) {
        this.comboDays = comboDays;
    }

    public Integer getInstructionId() {
        return instructionId;
    }

    public void setInstructionId(Integer instructionId) {
        this.instructionId = instructionId;
    }

    public Integer getNoticeId() {
        return noticeId;
    }

    public void setNoticeId(Integer noticeId) {
        this.noticeId = noticeId;
    }

    public String getComboImg1() {
        return comboImg1;
    }

    public void setComboImg1(String comboImg1) {
        this.comboImg1 = comboImg1 == null ? null : comboImg1.trim();
    }

    public String getComboImg2() {
        return comboImg2;
    }

    public void setComboImg2(String comboImg2) {
        this.comboImg2 = comboImg2 == null ? null : comboImg2.trim();
    }

    public String getComboImg3() {
        return comboImg3;
    }

    public void setComboImg3(String comboImg3) {
        this.comboImg3 = comboImg3 == null ? null : comboImg3.trim();
    }

    public String getComboImg4() {
        return comboImg4;
    }

    public void setComboImg4(String comboImg4) {
        this.comboImg4 = comboImg4 == null ? null : comboImg4.trim();
    }

    public String getComboImg5() {
        return comboImg5;
    }

    public void setComboImg5(String comboImg5) {
        this.comboImg5 = comboImg5 == null ? null : comboImg5.trim();
    }

    public String getComboLight() {
        return comboLight;
    }

    public void setComboLight(String comboLight) {
        this.comboLight = comboLight == null ? null : comboLight.trim();
    }
}