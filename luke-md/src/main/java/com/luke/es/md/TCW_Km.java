package com.luke.es.md;

import com.luke.es.tool.model._M;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class TCW_Km extends _M {

    @Column(length = 20,nullable = false)
    String bm ;

    @Column(length = 40,nullable = false)
    String name ;

    /**类型*/
    @Column(length = 16,nullable = false)
    String xtype ;
    /**适用范围*/
    @Column(length = 40)
    String scope ;

    /**备注说明*/
    @Column(length = 60)
    String notes ;

    /**账套ID*/
    Long ztId ;

    /**余额方向*/
    @Column(length = 4)
    String fx ;

    public String getFx() {
        return fx;
    }

    public void setFx(String fx) {
        this.fx = fx;
    }

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

    public String getXtype() {
        return xtype;
    }

    public void setXtype(String xtype) {
        this.xtype = xtype;
    }

    public String getScope() {
        return scope;
    }

    public void setScope(String scope) {
        this.scope = scope;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public Long getZtId() {
        return ztId;
    }

    public void setZtId(Long ztId) {
        this.ztId = ztId;
    }
}
