package com.luke.es.md.vo.goods.dto;


import com.luke.es.tool.vo.VOIn;

public class DTOGoodsAttrCfg extends VOIn {
    String colName ;
    String col ;
    Long id ;
    Long xtypeId ;
    String fun ;
    String eleType ;

    public String getEleType() {
        return eleType;
    }

    public void setEleType(String eleType) {
        this.eleType = eleType;
    }

    public Long getXtypeId() {
        return xtypeId;
    }

    public void setXtypeId(Long xtypeId) {
        this.xtypeId = xtypeId;
    }

    public String getFun() {
        return fun;
    }

    public void setFun(String fun) {
        this.fun = fun;
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
