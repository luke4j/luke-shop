package com.luke.es.tool.controller;

import com.luke.es.tool.tl.LKMap;

import java.util.Map;

/**
 * 所有contoller中的方法，返回json的，都是由这个类包装
 */
public class ActResult {

    Boolean success = true ;
    Object rt ;
    String msg = "操作成功" ;
    String url = "" ;
    Throwable error ;
    LKMap<String,Object> more = new LKMap<>();

    public Boolean getSuccess() {
        return success;
    }

    public void setSuccess(Boolean success) {
        this.success = success;
    }

    public Object getRt() {
        return rt;
    }

    public void setRt(Object rt) {
        this.rt = rt;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Throwable getError() {
        return error;
    }

    public void setError(Throwable error) {
        this.error = error;
    }

    public LKMap<String, Object> getMore() {
        return more;
    }

    public void setMore(LKMap<String, Object> more) {
        this.more = more;
    }
}
