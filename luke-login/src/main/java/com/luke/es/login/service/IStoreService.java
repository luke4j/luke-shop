package com.luke.es.login.service;

import com.luke.es.md.TS_Store;
import com.luke.es.md.vo.login.store.VOInStore;
import com.luke.es.tool.vo.VOutUser;

import java.util.List;

public interface IStoreService {
    List<TS_Store> findAll() throws Exception;

    void addModel(VOInStore vo, VOutUser currentUser)throws Exception;

    void delModel(Long id, VOutUser currentUser)throws Exception;

    void updateModel(VOInStore vo, VOutUser currentUser)throws Exception;

    List<TS_Store> findAllBack()throws Exception;

}
