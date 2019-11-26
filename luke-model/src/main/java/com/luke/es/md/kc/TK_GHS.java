package com.luke.es.md.kc;

import com.luke.es.tool.model._M;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Index;
import javax.persistence.Table;

@Entity
@Table(indexes = {
        @Index(columnList = "kindId"),
        @Index(columnList = "brandId")
})
public class TK_GHS extends _M {
    @Column(length = 80)
    String name ;

    @Column(length = 20)
    String lsrName ;

    @Column(length = 20)
    String lsrNameTel ;

    @Column(length = 80)
    String addr ;

    Long kindId ;
    Long brandId ;

    public Long getKindId() {
        return kindId;
    }

    public void setKindId(Long kindId) {
        this.kindId = kindId;
    }

    public Long getBrandId() {
        return brandId;
    }

    public void setBrandId(Long brandId) {
        this.brandId = brandId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLsrName() {
        return lsrName;
    }

    public void setLsrName(String lsrName) {
        this.lsrName = lsrName;
    }

    public String getLsrNameTel() {
        return lsrNameTel;
    }

    public void setLsrNameTel(String lsrNameTel) {
        this.lsrNameTel = lsrNameTel;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }
}
