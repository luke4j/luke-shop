package com.luke.es.md;

import com.luke.es.tool.model._M;

import javax.persistence.Column;
import javax.persistence.Entity;

/**
 * 收据，是因为一笔交易没有完时的临时凭证<br>
 *    一般是在销售商品时，客户先交付定金，这里交易没有完成，还不能开发票
 */
@Entity
public class TCW_Sj extends _M {

    Double amount ;

    /**开票人ID*/
    Long kprId ;

    /**客户ID*/
    Long customerId ;

    /**客户电话*/
    @Column(length = 20)
    String customerPhone ;

    /**收据类型*/
    @Column(length = 10)
    String xtype ;

    /**序号*/
    Long serial ;

    public String getXtype() {
        return xtype;
    }

    public void setXtype(String xtype) {
        this.xtype = xtype;
    }

    public Long getSerial() {
        return serial;
    }

    public void setSerial(Long serial) {
        this.serial = serial;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public Long getKprId() {
        return kprId;
    }

    public void setKprId(Long kprId) {
        this.kprId = kprId;
    }

    public Long getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Long customerId) {
        this.customerId = customerId;
    }

    public String getCustomerPhone() {
        return customerPhone;
    }

    public void setCustomerPhone(String customerPhone) {
        this.customerPhone = customerPhone;
    }
}
