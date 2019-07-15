package com.luke.es.md.vo;

import java.util.List;

public class UIVOTree {
    String title ;
    Long id ;
    List<UIVOTree> children ;
    Boolean spread = false ;
    Boolean checked = false ;
    Boolean disabled = false ;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public List<UIVOTree> getChildren() {
        return children;
    }

    public void setChildren(List<UIVOTree> children) {
        this.children = children;
    }

    public Boolean getSpread() {
        return spread;
    }

    public void setSpread(Boolean spread) {
        this.spread = spread;
    }

    public Boolean getChecked() {
        return checked;
    }

    public void setChecked(Boolean checked) {
        this.checked = checked;
    }

    public Boolean getDisabled() {
        return disabled;
    }

    public void setDisabled(Boolean disabled) {
        this.disabled = disabled;
    }
}
