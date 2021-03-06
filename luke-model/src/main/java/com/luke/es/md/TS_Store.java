package com.luke.es.md;

import com.luke.es.tool.model._M;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Index;
import javax.persistence.Table;

@Entity
@Table(indexes = {
        @Index(columnList = "fid")
})
public class TS_Store extends _M {
    @Column(length = 40)
    String name ;
    @Column(length = 80)
    String py ;
    @Column(length = 80)
    String addr ;
    @Column(length = 15)
    String tel ;
    Long adminId ;

    /***
     * 站点类型：直属；非直属（加盟）
     */
    @Column(length = 10)
    String c_type ;
    /**
     * 是否加工
     */
    Boolean isdo ;

    Long fid ;


    public String getPy() {
        return py;
    }

    public void setPy(String py) {
        this.py = py;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public Long getAdminId() {
        return adminId;
    }

    public void setAdminId(Long adminId) {
        this.adminId = adminId;
    }

    public String getC_type() {
        return c_type;
    }

    public void setC_type(String c_type) {
        this.c_type = c_type;
    }


    public Boolean getIsdo() {
        return isdo;
    }

    public void setIsdo(Boolean isdo) {
        this.isdo = isdo;
    }

    public Long getFid() {
        return fid;
    }

    public void setFid(Long fid) {
        this.fid = fid;
    }
}
