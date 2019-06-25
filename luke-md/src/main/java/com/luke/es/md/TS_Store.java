package com.luke.es.md;

import com.luke.es.tool.model._M;

import javax.persistence.Entity;

@Entity
public class TS_Store extends _M {
    String name ;
    String addr ;
    String tel ;
    Long adminId ;

    /***
     * 站点类型：直属；非直属（加盟）
     */
    String c_type ;
    /**
     * 是否加工
     */
    String isdo ;

    Long fid ;
}
