package com.luke.es.login.service.impl;

import com.luke.es.login.dao.IItemDao;
import com.luke.es.login.service.IItemService;
import com.luke.es.md.TU_Item;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ItemService implements IItemService {

    @Resource
    IItemDao itemDao;

    public List<TU_Item> findAllItems() throws Exception {
        List<TU_Item> listItem = this.itemDao.findAllTimes() ;
        return listItem;
    }
}
