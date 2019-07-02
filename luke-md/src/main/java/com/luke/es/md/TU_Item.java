package com.luke.es.md;

import com.luke.es.tool.model._M;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class TU_Item extends _M {
    /**功能名*/
    @Column(length = 20)
    String name ;
    @Column(length = 40)
    String py ;
    /**功能类型：菜单组，菜单，按钮*/
    @Column(length = 10)
    String c_type ;
    Long fid ;
    /**js入口文件*/
    @Column(length = 120)
    String js ;
    /**功能图标*/
    @Column(length = 20)
    String icon ;

    Integer px = 0 ;

    public String getPy() {
        return py;
    }

    public void setPy(String py) {
        this.py = py;
    }

    public Integer getPx() {
        return px;
    }

    public void setPx(Integer px) {
        this.px = px;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getC_type() {
        return c_type;
    }

    public void setC_type(String c_type) {
        this.c_type = c_type;
    }

    public Long getFid() {
        return fid;
    }

    public void setFid(Long fid) {
        this.fid = fid;
    }

    public String getJs() {
        return js;
    }

    public void setJs(String js) {
        this.js = js;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }
}
