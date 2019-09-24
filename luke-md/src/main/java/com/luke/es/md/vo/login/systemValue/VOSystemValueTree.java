package com.luke.es.md.vo.login.systemValue;


import java.util.List;

public class VOSystemValueTree {

    Long id ;
    Long fid ;
    String xText ;
    String xValue ;

    List<VOSystemValueTree> children  ;
    String title ;
    Boolean spread = true ;
    Boolean disabled = false;
    Boolean checked = false ;

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
        this.title = xText ;
    }

    public String getxValue() {
        return xValue;
    }

    public void setxValue(String xValue) {
        this.xValue = xValue;
    }

    public List<VOSystemValueTree> getChildren() {
        return children;
    }

    public void setChildren(List<VOSystemValueTree> children) {
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

    public Boolean getChecked() {
        return checked;
    }

    public void setChecked(Boolean checked) {
        this.checked = checked;
    }
}
