package com.luke.es.login.dao.impl;

import com.luke.es.db.DBDao;
import com.luke.es.login.dao.IItemDao;
import com.luke.es.md.TU_Item;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class ItemDao extends DBDao implements IItemDao {

    public List<TU_Item> findAllTimes() throws Exception {
        String hql = "From TU_Item i order by id" ;
        List<TU_Item> items = this.find(hql) ;
        return items;
    }
}
