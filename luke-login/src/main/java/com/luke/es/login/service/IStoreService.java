package com.luke.es.login.service;

import com.luke.es.md.TS_Store;
import com.luke.es.md.vo.dev.VOInItem;
import com.luke.es.md.vo.login.store.VOInStore;
import com.luke.es.tool.vo.VOutUser;

import java.util.List;

public interface IStoreService {
    List<TS_Store> findAll() throws Exception;

    void addModel(VOInStore vo, VOutUser currentUser)throws Exception;

    void delModel(VOInItem vo, VOutUser currentUser)throws Exception;

    void updateModel(VOInItem vo, VOutUser currentUser)throws Exception;
}
