package com.luke.es.md.vo.login.systemValue;

import com.luke.es.tool.vo.VOIn;

public class DTOSystemValue extends VOIn {

    Long id ;
    Long fid ;
    String xText ;
    String xValue ;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getFid() {
        return fid;
    }

    public void setFid(Long fid) {
        this.fid = fid;
    }

    public String getxText() {
        return xText;
    }

    public void setxText(String xText) {
        this.xText = xText;
    }

    public String getxValue() {
        return xValue;
    }

    public void setxValue(String xValue) {
        this.xValue = xValue;
    }
}
