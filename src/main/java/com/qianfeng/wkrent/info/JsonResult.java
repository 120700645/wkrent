package com.qianfeng.wkrent.info;


import com.qianfeng.wkrent.dto.Car;

import java.util.List;

public class JsonResult {
    /**
     *状态码
     */
    private String code;
    /**
     * 具体信息
     */
    private String msg;
    /**
     * 结果集
     */
    private Object resultData;



    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    //----------添加resultDAte-------------


    public Object getResultData() {
        return resultData;
    }

    public void setResultData(Object resultData) {
        this.resultData = resultData;
    }



    public static JsonResult createSuccessJsonResult(Object object){
        return new JsonResult("0", "", object);
    }

    public static JsonResult createFailJsonResult(String code, String msg){
        return new JsonResult(code, msg, null);
    }

    public JsonResult() {
    }

    public JsonResult(String code, String msg, Object resultData) {
        this.code = code;
        this.msg = msg;
        this.resultData = resultData;
    }
}
