package com.luke.es.md.kc;

import com.luke.es.tool.model._M;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Index;
import javax.persistence.Table;

@Entity
@Table(indexes = {
        @Index(columnList = "kindId")
})
public class TG_GoodsAttrCnf extends _M {
    Long kindId ;
    @Column(length = 10)
    String colName ;
    @Column(length = 40)
    String col ;

    /**页面展示的元素类型*/
    @Column(length = 10)
    String xtype ;
    /**需要执行的代码，比如这是一个下拉菜单，在渲染完成之后，需要添加的下拉数据取得的代码，一般是一个js函数*/
    @Column(length = 20)
    String fun ;


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
}
