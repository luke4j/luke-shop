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
    @Column(length = 40)
    String number ;
    @Column(length = 20)
    String state = "制单" ;
    /**制单人id*/
    Long makeId ;
    /**出纳人Id*/
    Long CashierId ;
    /**管理1Id*/
    Long admin1Id ;
    /**管理2Id*/
    Long admin2Id ;
    /**管理3Id*/
    Long admin3Id ;

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

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
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

    public Long getCashierId() {
        return CashierId;
    }

    public void setCashierId(Long cashierId) {
        CashierId = cashierId;
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
