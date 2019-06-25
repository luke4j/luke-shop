package com.luke.es.md;

import com.luke.es.tool.model._M;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class TK_KCLS extends _M {

    Long kcId ;
    /**当前正品数量*/
    Long num ;
    /**当前次品数量*/
    Long cipin  ;
    /**当前残品数量*/
    Long canpin ;
    /**操作量*/
    Long sl ;
    /**业务ID*/
    Long ywId ;

    /**业务表*/
    @Column(length = 40)
    String ywTable ;
    /**业务实际数据ID*/
    Long ywTableId ;
    /**业务单号*/
    Long dh ;

    public Long getKcId() {
        return kcId;
    }

    public void setKcId(Long kcId) {
        this.kcId = kcId;
    }

    public Long getNum() {
        return num;
    }

    public void setNum(Long num) {
        this.num = num;
    }

    public Long getCipin() {
        return cipin;
    }

    public void setCipin(Long cipin) {
        this.cipin = cipin;
    }

    public Long getCanpin() {
        return canpin;
    }

    public void setCanpin(Long canpin) {
        this.canpin = canpin;
    }

    public Long getSl() {
        return sl;
    }

    public void setSl(Long sl) {
        this.sl = sl;
    }

    public Long getYwId() {
        return ywId;
    }

    public void setYwId(Long ywId) {
        this.ywId = ywId;
    }

    public String getYwTable() {
        return ywTable;
    }

    public void setYwTable(String ywTable) {
        this.ywTable = ywTable;
    }

    public Long getYwTableId() {
        return ywTableId;
    }

    public void setYwTableId(Long ywTableId) {
        this.ywTableId = ywTableId;
    }

    public Long getDh() {
        return dh;
    }

    public void setDh(Long dh) {
        this.dh = dh;
    }
}
