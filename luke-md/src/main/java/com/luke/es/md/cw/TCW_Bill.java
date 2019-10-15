package com.luke.es.md.cw;

import com.luke.es.tool.model._M;

import javax.persistence.Entity;
import java.util.Date;

/**发票*/
@Entity
public class TCW_Bill extends _M {

    /**发货方ID*/
    Long sendId ;
    /**收货方ID*/
    Long takeId ;
    /**发票类型*/
    String xtype ;
    /**发票号*/
    String number ;
    /**发票日期*/
    Date day ;
    /**发货方地址*/
    String sendAddr ;
    /**发货方电话*/
    String sendPhone ;
    /**发货方银行*/
    String sendBank ;
    /**收货方电话*/
    String takePhone ;
    /**收货方银行*/
    String takeBank ;
    /**收货方地址*/
    String takeAddr ;
    /**序号*/
    Long serial ;
    /**纳税人识别号*/
    String xTag ;
    /**是否打印*/
    Boolean print ;

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

    public Boolean getPrint() {
        return print;
    }

    public void setPrint(Boolean print) {
        this.print = print;
    }



    public String getxTag() {
        return xTag;
    }

    public void setxTag(String xTag) {
        this.xTag = xTag;
    }

    public Long getSendId() {
        return sendId;
    }

    public void setSendId(Long sendId) {
        this.sendId = sendId;
    }

    public Long getTakeId() {
        return takeId;
    }

    public void setTakeId(Long takeId) {
        this.takeId = takeId;
    }

    public String getXtype() {
        return xtype;
    }

    public void setXtype(String xtype) {
        this.xtype = xtype;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public Date getDay() {
        return day;
    }

    public void setDay(Date day) {
        this.day = day;
    }

    public String getSendAddr() {
        return sendAddr;
    }

    public void setSendAddr(String sendAddr) {
        this.sendAddr = sendAddr;
    }

    public String getSendPhone() {
        return sendPhone;
    }

    public void setSendPhone(String sendPhone) {
        this.sendPhone = sendPhone;
    }

    public String getSendBank() {
        return sendBank;
    }

    public void setSendBank(String sendBank) {
        this.sendBank = sendBank;
    }

    public String getTakePhone() {
        return takePhone;
    }

    public void setTakePhone(String takePhone) {
        this.takePhone = takePhone;
    }

    public String getTakeBank() {
        return takeBank;
    }

    public void setTakeBank(String takeBank) {
        this.takeBank = takeBank;
    }

    public String getTakeAddr() {
        return takeAddr;
    }

    public void setTakeAddr(String takeAddr) {
        this.takeAddr = takeAddr;
    }

    public Long getSerial() {
        return serial;
    }

    public void setSerial(Long serial) {
        this.serial = serial;
    }
}
