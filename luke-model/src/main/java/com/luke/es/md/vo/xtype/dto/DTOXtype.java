package com.luke.es.md.vo.xtype.dto;

public class DTOXtype {

    Long id ;

    Long fid ;
    String c_type ;
    String name ;
    String py ;


    Boolean isLens ;
    Boolean isTime ;
    Boolean isLib ;
    Boolean isEntity ;

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

    public Boolean getLens() {
        return isLens;
    }

    public void setLens(Boolean lens) {
        isLens = lens;
    }

    public Boolean getTime() {
        return isTime;
    }

    public void setTime(Boolean time) {
        isTime = time;
    }

    public Boolean getLib() {
        return isLib;
    }

    public void setLib(Boolean lib) {
        isLib = lib;
    }

    public Boolean getEntity() {
        return isEntity;
    }

    public void setEntity(Boolean entity) {
        isEntity = entity;
    }
}
