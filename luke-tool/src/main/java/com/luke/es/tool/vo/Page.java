package com.luke.es.tool.vo;

/**
 * Created by luke on 2018/11/1.
 */
public class Page extends VOIn {

    private Long count ;
    private Integer page = 1;
    private Integer limit = 10 ;
    private Integer start = 0 ;

    private String hql  ;

    public String getHql() {
        return hql;
    }

    public void setHql(String hql) {
        this.hql = hql;
    }

    public Long getCount() {
        return count;
    }

    public void setCount(Long count) {
        this.count = count;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getLimit() {
        return limit;
    }

    public void setLimit(Integer limit) {
        this.limit = limit;
    }

    public Integer getStart() {
        this.start = ((page-1)*limit) ;
        return start;
    }

    public void setStart(Integer start) {
        this.start = start;
    }
}
