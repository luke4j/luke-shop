package com.luke.es.md.vo;

public class UIVOList {

    public UIVOList(){} ;

    public UIVOList(Long val,String text) {
        this.text = text;
        this.val = val;
    }

    String text ;
    Long val ;

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Long getVal() {
        return val;
    }

    public void setVal(Long val) {
        this.val = val;
    }
}
