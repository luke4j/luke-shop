package com.luke.es.login.service.impl;

import com.luke.es.login.dao.IItemDao;
import com.luke.es.login.service.IItemService;
import com.luke.es.md.TU_Item;
import com.luke.es.md.vo.dev.VOInItem;
import com.luke.es.tool.tl.LK;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.List;

@Service
public class ItemService implements IItemService {

    @Resource
    IItemDao itemDao;

    public List<TU_Item> findAllItems() throws Exception {
        List<TU_Item> listItem = this.itemDao.findAllTimes() ;
        return listItem;
    }

    @Transactional
    public void updateItem(VOInItem vo) throws Exception {
        TU_Item item = this.itemDao.get(TU_Item.class,vo.getId()) ;
        BeanUtils.copyProperties(vo,item);
        item.setPy(LK.NameToPingYinLong(item.getName()));
    }

    @Transactional
    public void addItem(VOInItem vo) throws Exception {
        TU_Item item = new TU_Item() ;
        BeanUtils.copyProperties(vo,item);
        item.setPy(LK.NameToPingYinLong(item.getName()));
        this.itemDao.save(item) ;
    }
    @Transactional
    public void delItem(Long id) throws Exception {
        TU_Item item = this.itemDao.get(TU_Item.class,id) ;
        item.set_isDel(true);
    }
}
