package com.luke.es.md.vo.login.role;

import java.util.List;

public class UIVOCheckItems4Tree {

    public UIVOCheckItems4Tree(){} ;
    public UIVOCheckItems4Tree(Long id,Long fid,String name){
        this.id = id ;
        this.fid = fid ;
        this.name = name ;
        this.title = name ;
    } ;


    Long id ;
    Long fid ;
    String name ;

    List<UIVOCheckItems4Tree> children  ;
    String title ;
    Boolean spread = true ;
    Boolean disabled = false;
    Boolean checked = false ;

    public List<UIVOCheckItems4Tree> getChildren() {
        return children;
    }

    public void setChildren(List<UIVOCheckItems4Tree> children) {
        this.children = children;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Boolean getSpread() {
        return spread;
    }

    public void setSpread(Boolean spread) {
        this.spread = spread;
    }

    public Boolean getDisabled() {
        return disabled;
    }

    public void setDisabled(Boolean disabled) {
        this.disabled = disabled;
    }

    public Long getId() {
        return id;
    }

    public Boolean getChecked() {
        return checked;
    }

    public void setChecked(Boolean checked) {
        this.checked = checked;
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
