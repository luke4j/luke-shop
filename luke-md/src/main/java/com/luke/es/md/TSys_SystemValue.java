package com.luke.es.md;

import com.luke.es.tool.model._M;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class TSys_SystemValue  extends _M {

    Long fid ;
    @Column(length = 30)
    String xText ;
    @Column(length = 30)
    String xValue ;


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
