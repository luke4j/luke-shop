package com.luke.es.md.vo.dev;

import com.luke.es.tool.vo.VOIn;

public class VOInItem extends VOIn {


    Long id ;
    /**功能名*/
    String name ;
    /**功能类型：菜单组，菜单，按钮*/
    String c_type ;
    Long fid ;
    /**js入口文件*/
    String js ;
    /**功能图标*/
    String icon ;

    Integer px = 0 ;

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

    public Integer getPx() {
        return px;
    }

    public void setPx(Integer px) {
        this.px = px;
    }
}
