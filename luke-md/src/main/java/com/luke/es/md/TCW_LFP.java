package com.luke.es.md;

import com.luke.es.tool.model._M;

import javax.persistence.Column;
import javax.persistence.Entity;

/**
 * 流水 ，发票，凭证，三者联系 （收据是一个辅助数据）
 * */
@Entity
public class TCW_LFP  extends _M {

    /**流水ID*/
    Long lsId ;
    /**发票ID*/
    Long billId ;
    /**凭证ID*/
    Long proofId ;
    /**收据ID*/
    Long sjId ;

    /**相关业务表名：销售表，入库表，退销售表，退采购表*/
    String xtable ;
    /**相关数据ID*/
    Long dataId ;

    /**状态*/
    @Column(length = 20)
    String state ;
    /**关系名*/
    @Column(length = 40)
    String name ;

    public String getXtable() {
        return xtable;
    }

    public void setXtable(String xtable) {
        this.xtable = xtable;
    }

    public Long getDataId() {
        return dataId;
    }

    public void setDataId(Long dataId) {
        this.dataId = dataId;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getSjId() {
        return sjId;
    }

    public void setSjId(Long sjId) {
        this.sjId = sjId;
    }

    public Long getLsId() {
        return lsId;
    }

    public void setLsId(Long lsId) {
        this.lsId = lsId;
    }

    public Long getBillId() {
        return billId;
    }

    public void setBillId(Long billId) {
        this.billId = billId;
    }

    public Long getProofId() {
        return proofId;
    }

    public void setProofId(Long proofId) {
        this.proofId = proofId;
    }
}
