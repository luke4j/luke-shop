package com.luke.es.md.vo.login.role;

import com.luke.es.tool.annotation.QLParam;
import com.luke.es.tool.vo.VOIn;

public class VOFindRole extends VOIn {

    @QLParam(bm = "r")
    Long id;
    @QLParam(bm = "r")
    String name;
    @QLParam(bm = "r")
    String itemIds;
    @QLParam(bm = "r")
    Boolean _isDel ;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getItemIds() {
        return itemIds;
    }

    public void setItemIds(String itemIds) {
        this.itemIds = itemIds;
    }

    public Boolean get_isDel() {
        return _isDel;
    }

    public void set_isDel(Boolean _isDel) {
        this._isDel = _isDel;
    }
}
