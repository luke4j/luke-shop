package com.luke.es.md;

import com.luke.es.tool.model._M;

import javax.persistence.Column;
import javax.persistence.Entity;


@Entity
public class TSys_Number extends _M {

    /**类型*/
    @Column(length = 40)
    String xtype ;
    /**最大编号*/
    Long maxNum = 1L ;

    public String getXtype() {
        return xtype;
    }

    public void setXtype(String xtype) {
        this.xtype = xtype;
    }

    public Long getMaxNum() {
        return maxNum;
    }

    public void setMaxNum(Long maxNum) {
        this.maxNum = maxNum;
    }
}
