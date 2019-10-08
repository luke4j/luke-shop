package com.luke.es.md;

import com.luke.es.tool.model._M;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class TCW_Time extends _M {

    /**是否结账*/
    Boolean jz = false ;

    @Column(length = 20 ,nullable = false)
    String kjq ;

    public Boolean getJz() {
        return jz;
    }

    public void setJz(Boolean jz) {
        this.jz = jz;
    }

    public String getKjq() {
        return kjq;
    }

    public void setKjq(String kjq) {
        this.kjq = kjq;
    }
}
