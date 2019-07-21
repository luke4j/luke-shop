package com.luke.es.md.vo.login.role;

public class UIVOCheckItems4Tree {

    public UIVOCheckItems4Tree(){} ;
    public UIVOCheckItems4Tree(Long id,Long fid,String name){
        this.id = id ;
        this.fid = fid ;
        this.name = name ;
    } ;


    Long id ;
    Long fid ;
    String name ;

    Boolean lay_checked = false ;

    public Boolean getLay_checked() {
        return lay_checked;
    }

    public void setLay_checked(Boolean lay_checked) {
        this.lay_checked = lay_checked;
    }

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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
