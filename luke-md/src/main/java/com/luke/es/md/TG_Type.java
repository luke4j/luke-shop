package com.luke.es.md;

import com.luke.es.tool.model._M;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class TG_Type extends _M {
    @Column(length = 10)
    String c_type ;

    @Column(length = 40)
    String name ;

    Long fid ;

    /**是否定制加工*/
    Boolean isdo ;

    /**是否度数*/
    Boolean isLens ;

    /**是否库存*/
    Boolean isLib ;

    /**是否有效期*/
    Boolean isTime ;

    public String getC_type() {
        return c_type;
    }

    public void setC_type(String c_type) {
        this.c_type = c_type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getFid() {
        return fid;
    }

    public void setFid(Long fid) {
        this.fid = fid;
    }

    public Boolean getIsdo() {
        return isdo;
    }

    public void setIsdo(Boolean isdo) {
        this.isdo = isdo;
    }

    public Boolean getLens() {
        return isLens;
    }

    public void setLens(Boolean lens) {
        isLens = lens;
    }

    public Boolean getLib() {
        return isLib;
    }

    public void setLib(Boolean lib) {
        isLib = lib;
    }

    public Boolean getTime() {
        return isTime;
    }

    public void setTime(Boolean time) {
        isTime = time;
    }
}
