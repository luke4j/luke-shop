package com.luke.es.tool.vo;

/**
 * Created by luke on 2018/11/1.
 */
public class Page extends VOIn {

    private Long count ;
    private Integer start = 0;
    private Integer limit = 10 ;


    public Long getCount() {
        return count;
    }

    public void setCount(Long count) {
        this.count = count;
    }

    public Integer getStart() {
        return start;
    }

    public void setStart(Integer start) {
        this.start = start;
    }

    public Integer getLimit() {
        return limit;
    }

    public void setLimit(Integer limit) {
        this.limit = limit;
    }
}
