package com.luke.es.md;

import com.luke.es.tool.model._M;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class TK_KCTimeLS extends _M {

    @Column(length = 40)
   String uuid ;

    Long ywId ;
    String tableName ;
    Long tableId ;

    /**有效期商品ID*/
    Long kctimeId ;

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public Long getYwId() {
        return ywId;
    }

    public void setYwId(Long ywId) {
        this.ywId = ywId;
    }

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    public Long getTableId() {
        return tableId;
    }

    public void setTableId(Long tableId) {
        this.tableId = tableId;
    }

    public Long getKctimeId() {
        return kctimeId;
    }

    public void setKctimeId(Long kctimeId) {
        this.kctimeId = kctimeId;
    }
}
