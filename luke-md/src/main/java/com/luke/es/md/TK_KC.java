package com.luke.es.md;

import com.luke.es.tool.model._M;

import javax.persistence.Entity;

@Entity
public class TK_KC extends _M {
    Long goodsId ;
    Long storeId ;
    /**当前正品数量*/
    Long num ;

    /**当前次品数量*/
    Long cipin  ;

    /**当前残品数量*/
    Long canpin ;

    Float sph ;
    Float cyl ;

    Double pin ;
    Double pout ;

    public Double getPin() {
        return pin;
    }

    public void setPin(Double pin) {
        this.pin = pin;
    }

    public Double getPout() {
        return pout;
    }

    public void setPout(Double pout) {
        this.pout = pout;
    }

    public Long getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }

    public Long getStoreId() {
        return storeId;
    }

    public void setStoreId(Long storeId) {
        this.storeId = storeId;
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
}
