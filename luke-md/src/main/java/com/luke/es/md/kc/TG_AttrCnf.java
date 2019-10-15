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
public class TG_AttrCnf extends _M {
    Long kindId ;
    @Column(length = 10)
    String colName ;
    @Column(length = 40)
    String col ;

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
