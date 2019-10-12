package com.luke.es.md;

import com.luke.es.tool.model._M;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class TCW_Proof extends _M {


    /**账套ID*/
    Long ztId ;
    /**会计期*/
    String cwTime ;
    /**序号*/
    Long serial ;
    @Column(length = 20)
    String state = "制单" ;
    /**制单人id*/
    Long makeId ;

    /**管理1Id*/
    Long admin1Id ;
    /**管理2Id*/
    Long admin2Id ;
    /**管理3Id*/
    Long admin3Id ;
    /**凭证类型*/
    @Column(length = 20,nullable = false)
    String xtype ;

    /**业务表名*/
    String tableName ;
    /**数据ID*/
    Long dataId ;

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    public Long getDataId() {
        return dataId;
    }

    public void setDataId(Long dataId) {
        this.dataId = dataId;
    }

    public Long getSerial() {
        return serial;
    }

    public void setSerial(Long serial) {
        this.serial = serial;
    }

    public String getXtype() {
        return xtype;
    }

    public void setXtype(String xtype) {
        this.xtype = xtype;
    }



    public Long getZtId() {
        return ztId;
    }

    public void setZtId(Long ztId) {
        this.ztId = ztId;
    }

    public String getCwTime() {
        return cwTime;
    }

    public void setCwTime(String cwTime) {
        this.cwTime = cwTime;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public Long getMakeId() {
        return makeId;
    }

    public void setMakeId(Long makeId) {
        this.makeId = makeId;
    }

    public Long getAdmin1Id() {
        return admin1Id;
    }

    public void setAdmin1Id(Long admin1Id) {
        this.admin1Id = admin1Id;
    }

    public Long getAdmin2Id() {
        return admin2Id;
    }

    public void setAdmin2Id(Long admin2Id) {
        this.admin2Id = admin2Id;
    }

    public Long getAdmin3Id() {
        return admin3Id;
    }

    public void setAdmin3Id(Long admin3Id) {
        this.admin3Id = admin3Id;
    }
}
