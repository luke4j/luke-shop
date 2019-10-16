package com.luke.es.md.vo.goods.vo;

import com.luke.es.tool.vo.VOut;

public class VOGoodsAttrCfg extends VOut {

    public VOGoodsAttrCfg(){

    }

    public VOGoodsAttrCfg(Long id, Long kindId, String kindName, String colName, String col, String xtype, String fun) {
        this.id = id;
        this.kindId = kindId;
        this.kindName = kindName;
        this.colName = colName;
        this.col = col;
        this.xtype = xtype;
        this.fun = fun;
    }

    Long id ;
    Long kindId ;
    String kindName ;
    String colName ;
    String col ;
    String xtype ;
    String fun ;

    public String getKindName() {
        return kindName;
    }

    public void setKindName(String kindName) {
        this.kindName = kindName;
    }

    public String getXtype() {
        return xtype;
    }

    public void setXtype(String xtype) {
        this.xtype = xtype;
    }

    public String getFun() {
        return fun;
    }

    public void setFun(String fun) {
        this.fun = fun;
    }

    public Long getKindId() {
        return kindId;
    }

    public void setKindId(Long kindId) {
        this.kindId = kindId;
    }

    public String getColName() {
        return colName;
    }

    public void setColName(String colName) {
        this.colName = colName;
    }

    public String getCol() {
        return col;
    }

    public void setCol(String col) {
        this.col = col;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
