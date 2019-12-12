package com.luke.es.md.vo.xtype;

public class VOXtypeZTreeNode {

    public VOXtypeZTreeNode(Long id, String c_type, String name, String py, Long fid) {
        this.id = id;
        this.c_type = c_type;
        this.name = name;
        this.py = py;
        this.fid = fid;

    }

    public VOXtypeZTreeNode(Long id, String c_type, String name, String py, Long fid,Boolean blnEntity,Boolean blnLens,Boolean blnLib,Boolean blnTime) {
        this.id = id;
        this.c_type = c_type;
        this.name = name;
        this.py = py;
        this.fid = fid;
        this.blnEntity = blnEntity ;
        this.blnLens = blnLens ;
        this.blnLib = blnLib ;
        this.blnTime = blnTime ;
    }

    Long id ;
    String c_type ;
    String name ;
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

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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
