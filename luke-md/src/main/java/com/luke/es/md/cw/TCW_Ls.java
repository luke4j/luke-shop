package com.luke.es.md.cw;

import com.luke.es.tool.model._M;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class TCW_Ls extends _M {
    /**金额*/
    @Column(nullable = false)
    Double amount ;
    /**出纳ID*/
    @Column(nullable = false)
    Long cashierId ;
    /**备注*/
    @Column(length = 50,nullable = false)
    String notes ;
    @Column(length = 10,nullable = false)
    String state = "确认" ;
    /**支付方式*/
    @Column(length = 20,nullable = false)
    String xtype ;
    /**付款 银行*/
    @Column(length = 50,nullable = false)
    String sendBank ;
    /**收款银行*/
    @Column(length = 50,nullable = false)
    String takeBank ;
    /**收支类型*/
    @Column(length = 2,nullable = false)
    String sendOrTake ;
    /**流水号*/
    @Column(length = 20,nullable = false)
    String serial ;

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

    public String getSerial() {
        return serial;
    }

    public void setSerial(String serial) {
        this.serial = serial;
    }

    public String getSendOrTake() {
        return sendOrTake;
    }

    public void setSendOrTake(String sendOrTake) {
        this.sendOrTake = sendOrTake;
    }

    public String getXtype() {
        return xtype;
    }

    public void setXtype(String xtype) {
        this.xtype = xtype;
    }

    public String getSendBank() {
        return sendBank;
    }

    public void setSendBank(String sendBank) {
        this.sendBank = sendBank;
    }

    public String getTakeBank() {
        return takeBank;
    }

    public void setTakeBank(String takeBank) {
        this.takeBank = takeBank;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public Long getCashierId() {
        return cashierId;
    }

    public void setCashierId(Long cashierId) {
        this.cashierId = cashierId;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }
}
