package com.luke.es.md;

import com.luke.es.tool.model._M;

import javax.persistence.Entity;

/**发票明细*/
@Entity
public class TCW_BillList extends _M {
    /**发票ID*/
    Long billId ;
    Long lineNumber ;
    Long goodsId ;
    Float sph ;
    Float cyl ;
    Long number ;
    /**单价*/
    Double unitPrice ;
    /**税率*/
    Double taxRate ;
    /**税额*/
    Double tax ;
    /**价税合计*/
    Double priceAndTax ;

    public Long getBillId() {
        return billId;
    }

    public void setBillId(Long billId) {
        this.billId = billId;
    }

    public Long getLineNumber() {
        return lineNumber;
    }

    public void setLineNumber(Long lineNumber) {
        this.lineNumber = lineNumber;
    }

    public Long getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }

    public Float getSph() {
        return sph;
    }

    public void setSph(Float sph) {
        this.sph = sph;
    }

    public Float getCyl() {
        return cyl;
    }

    public void setCyl(Float cyl) {
        this.cyl = cyl;
    }

    public Long getNumber() {
        return number;
    }

    public void setNumber(Long number) {
        this.number = number;
    }

    public Double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(Double unitPrice) {
        this.unitPrice = unitPrice;
    }

    public Double getTaxRate() {
        return taxRate;
    }

    public void setTaxRate(Double taxRate) {
        this.taxRate = taxRate;
    }

    public Double getTax() {
        return tax;
    }

    public void setTax(Double tax) {
        this.tax = tax;
    }

    public Double getPriceAndTax() {
        return priceAndTax;
    }

    public void setPriceAndTax(Double priceAndTax) {
        this.priceAndTax = priceAndTax;
    }
}
