package com.luke.es.md.sys;

import com.luke.es.tool.model._M;

import javax.persistence.Entity;

@Entity
public class TSys_BusinessType extends _M {
    /**编码*/
    String bm ;
    /**名称*/
    String name ;
    /**说明*/
    String description ;
    /**类型*/
    String xtype ;
    /**操作*/
    String operate ;

    public String getBm() {
        return bm;
    }

    public void setBm(String bm) {
        this.bm = bm;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getXtype() {
        return xtype;
    }

    public void setXtype(String xtype) {
        this.xtype = xtype;
    }

    public String getOperate() {
        return operate;
    }

    public void setOperate(String operate) {
        this.operate = operate;
    }
}
