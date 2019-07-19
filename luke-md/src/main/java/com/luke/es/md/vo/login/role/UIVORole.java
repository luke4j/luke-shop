package com.luke.es.md.vo.login.role;

import com.luke.es.md.TU_Item;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

import java.util.List;

public class UIVORole {



    Long id;

    @NotBlank(message = "角色名不能为空")
    String name;
    @NotBlank(message = "未分配权限")
    String itemIds ;
    List<TU_Item> items ;

    public String getItemIds() {
        return itemIds;
    }

    public void setItemIds(String itemIds) {
        this.itemIds = itemIds;
    }

    public List<TU_Item> getItems() {
        return items;
    }

    public void setItems(List<TU_Item> items) {
        this.items = items;
    }

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


}
