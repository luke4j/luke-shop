package com.luke.es.md.vo.login.store;

import com.luke.es.tool.vo.VOIn;

public class VOInStore extends VOIn {

    Long id ;
    String name ;
    String py ;
    String addr ;
    String tel ;
    Long adminId ;
    String c_type ;
    Boolean isdo ;
    Long fid ;


    public String getPy() {
        return py;
    }

    public void setPy(String py) {
        this.py = py;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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
