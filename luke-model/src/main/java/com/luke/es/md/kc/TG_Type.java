package com.luke.es.md.kc;

import com.luke.es.tool.model._M;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Index;
import javax.persistence.Table;

@Entity
@Table(indexes = {
        @Index(columnList = "fid")
})
public class TG_Type extends _M {
    @Column(length = 10)
    String c_type ;

    @Column(length = 40)
    String name ;
    @Column(length = 80)
    String py ;


    /**父ID*/
    Long fid ;
    /***/
    Boolean blnEntity ;
    /**是否度数*/
    Boolean blnLens ;
    /**是否库存*/
    Boolean blnLib ;
    /**是否有效期*/
    Boolean blnTime ;

    public String getC_type() {
        return c_type;
    }

    public void setC_type(String c_type) {
        this.c_type = c_type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPy() {
        return py;
    }

    public void setPy(String py) {
        this.py = py;
    }

    public Long getFid() {
        return fid;
    }

    public void setFid(Long fid) {
        this.fid = fid;
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
