package com.luke.es.md.vo.goods.vo;

import com.luke.es.tool.vo.VOut;

public class VOGoodsAttrCfg extends VOut {

    public VOGoodsAttrCfg(){

    }

    public VOGoodsAttrCfg(Long id, Long xtypeId, String xtypeName, String colName, String col, String eleType, String fun) {
        this.id = id;
        this.xtypeId = xtypeId;
        this.xtypeName = xtypeName;
        this.colName = colName;
        this.col = col;
        this.eleType = eleType ;
        this.fun = fun;
    }

    Long id ;
    Long xtypeId ;
    String xtypeName ;
    String colName ;
    String col ;
    String fun ;
    String eleType ;

    boolean lay_checked ;

    public boolean isLay_checked() {
        return lay_checked;
    }

    public void setLay_checked(boolean lay_checked) {
        this.lay_checked = lay_checked;
    }

    public String getEleType() {
        return eleType;
    }

    public void setEleType(String eleType) {
        this.eleType = eleType;
    }

    public String getXtypeName() {
        return xtypeName;
    }

    public void setXtypeName(String xtypeName) {
        this.xtypeName = xtypeName;
    }

    public String getFun() {
        return fun;
    }

    public void setFun(String fun) {
        this.fun = fun;
    }

    public Long getXtypeId() {
        return xtypeId;
    }

    public void setXtypeId(Long xtypeId) {
        this.xtypeId = xtypeId;
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
