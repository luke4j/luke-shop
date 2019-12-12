package com.luke.es.md.vo.xtype.dto;

public class DTOXtype {

    Long id ;

    Long fid ;
    String c_type ;
    String name ;
    String py ;


    Boolean blnLens ;
    Boolean blnTime ;
    Boolean blnLib ;
    Boolean blnEntity ;

    /**这是json字符串*/
    String goodsInfos ;



    public String getGoodsInfos() {
        return goodsInfos;
    }

    public void setGoodsInfos(String goodsInfos) {
        this.goodsInfos = goodsInfos;
    }

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

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getFid() {
        return fid;
    }

    public void setFid(Long fid) {
        this.fid = fid;
    }


    public Boolean getBlnLens() {
        return blnLens;
    }

    public void setBlnLens(Boolean blnLens) {
        this.blnLens = blnLens;
    }

    public Boolean getBlnTime() {
        return blnTime;
    }

    public void setBlnTime(Boolean blnTime) {
        this.blnTime = blnTime;
    }

    public Boolean getBlnLib() {
        return blnLib;
    }

    public void setBlnLib(Boolean blnLib) {
        this.blnLib = blnLib;
    }

    public Boolean getBlnEntity() {
        return blnEntity;
    }

    public void setBlnEntity(Boolean blnEntity) {
        this.blnEntity = blnEntity;
    }
}
