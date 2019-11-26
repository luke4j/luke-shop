package com.luke.es.md.kc;

import com.luke.es.tool.model._M;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Index;
import javax.persistence.Table;

@Entity
@Table(indexes = {
        @Index(columnList = "zdrId"),
        @Index(columnList = "ghsId"),
        @Index(columnList = "dh"),
        @Index(columnList = "shrId")
})
public class TK_Order extends _M {
    /**制单人ID*/
    Long zdrId ;
    /**供货商ID*/
    Long ghsId ;
    @Column(length = 40)
    String dh ;
    /**是否付款*/
    Boolean is_fk ;
    /**收货人ID*/
    Long shrId ;
    /**其它费用*/
    Long qtfy ;
    /**备注*/
    @Column(length = 150)
    String bz ;


    public Long getZdrId() {
        return zdrId;
    }

    public void setZdrId(Long zdrId) {
        this.zdrId = zdrId;
    }

    public Long getGhsId() {
        return ghsId;
    }

    public void setGhsId(Long ghsId) {
        this.ghsId = ghsId;
    }

    public String getDh() {
        return dh;
    }

    public void setDh(String dh) {
        this.dh = dh;
    }

    public Boolean getIs_fk() {
        return is_fk;
    }

    public void setIs_fk(Boolean is_fk) {
        this.is_fk = is_fk;
    }

    public Long getShrId() {
        return shrId;
    }

    public void setShrId(Long shrId) {
        this.shrId = shrId;
    }

    public Long getQtfy() {
        return qtfy;
    }

    public void setQtfy(Long qtfy) {
        this.qtfy = qtfy;
    }

    public String getBz() {
        return bz;
    }

    public void setBz(String bz) {
        this.bz = bz;
    }

}
