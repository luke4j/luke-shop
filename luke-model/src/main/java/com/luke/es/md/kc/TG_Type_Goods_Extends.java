package com.luke.es.md.kc;

import com.luke.es.tool.model._M;

import javax.persistence.Entity;

@Entity
public class TG_Type_Goods_Extends extends _M {
    Long typeGoodsId ;
    Long keyId ;
    Long keyValue ;

    public Long getTypeGoodsId() {
        return typeGoodsId;
    }

    public void setTypeGoodsId(Long typeGoodsId) {
        this.typeGoodsId = typeGoodsId;
    }

    public Long getKeyId() {
        return keyId;
    }

    public void setKeyId(Long keyId) {
        this.keyId = keyId;
    }

    public Long getKeyValue() {
        return keyValue;
    }

    public void setKeyValue(Long keyValue) {
        this.keyValue = keyValue;
    }
}
