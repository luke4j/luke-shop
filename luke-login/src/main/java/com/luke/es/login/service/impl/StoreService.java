package com.luke.es.login.service.impl;

import com.luke.es.login.dao.IStoreDao;
import com.luke.es.login.service.IStoreService;
import com.luke.es.md.TS_Store;
import com.luke.es.md.vo.dev.VOInItem;
import com.luke.es.md.vo.login.store.VOInStore;
import com.luke.es.tool.tl.LK;
import com.luke.es.tool.vo.VOutUser;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.List;

@Service
public class StoreService implements IStoreService {

    @Resource
    IStoreDao storeDao ;

    public List<TS_Store> findAll() throws Exception {
        List<TS_Store> lstStore = this.storeDao.findAll("TS_Store") ;
        return lstStore;
    }

    @Transactional
    public void addModel(VOInStore vo, VOutUser currentUser) throws Exception {
        TS_Store store = new TS_Store() ;
        BeanUtils.copyProperties(vo,store);
        store.setPy(LK.NameToPingYinShort(store.getName()));
        this.storeDao.save(store);
    }

    @Transactional
    public void delModel(VOInItem vo, VOutUser currentUser) throws Exception {
        TS_Store store = this.storeDao.get(TS_Store.class,vo.getId()) ;
        store.setIsdo(true);
    }

    @Transactional
    public void updateModel(VOInItem vo, VOutUser currentUser) throws Exception {
        TS_Store store = this.storeDao.get(TS_Store.class,vo.getId()) ;
        BeanUtils.copyProperties(vo,store);
    }
}
