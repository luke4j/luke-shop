package com.luke.es.md;

import com.luke.es.tool.model._M;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class TU_CWRole extends _M {

    @Column(length = 40)
    String name ;
    /**角色所包函财务的功能*/
    @Column(length = 4000)
    String cwIds ;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCwIds() {
        return cwIds;
    }

    public void setCwIds(String cwIds) {
        this.cwIds = cwIds;
    }
}
