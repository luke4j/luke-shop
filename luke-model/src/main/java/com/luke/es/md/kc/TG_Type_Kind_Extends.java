package com.luke.es.md.kc;

import com.luke.es.tool.model._M;

import javax.persistence.Entity;

@Entity
public class TG_Type_Kind_Extends extends _M {
    Long typeKindId ;

    /**是否是服务*/
    Boolean blnEntity ;
    /**是否度数*/
    Boolean blnLens ;
    /**是否库存*/
    Boolean blnLib ;
    /**是否有效期*/
    Boolean blnTime ;

    public Long getTypeKindId() {
        return typeKindId;
    }

    public void setTypeKindId(Long typeKindId) {
        this.typeKindId = typeKindId;
    }

    public Boolean getBlnEntity() {
        return blnEntity;
    }

    public void setBlnEntity(Boolean blnEntity) {
        this.blnEntity = blnEntity;
    }

    public Boolean getBlnLens() {
        return blnLens;
    }

    public void setBlnLens(Boolean blnLens) {
        this.blnLens = blnLens;
    }

    public Boolean getBlnLib() {
        return blnLib;
    }

    public void setBlnLib(Boolean blnLib) {
        this.blnLib = blnLib;
    }

    public Boolean getBlnTime() {
        return blnTime;
    }

    public void setBlnTime(Boolean blnTime) {
        this.blnTime = blnTime;
    }
}
