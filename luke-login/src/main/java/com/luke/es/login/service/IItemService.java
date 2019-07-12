package com.luke.es.login.service;

import com.luke.es.md.TU_Item;
import com.luke.es.md.vo.dev.VOInItem;

import javax.transaction.Transactional;
import java.util.List;

public interface IItemService {
    List<TU_Item> findAllItems() throws Exception;

    void updateItem(VOInItem vo)throws Exception;

    void addItem(VOInItem vo)throws Exception;

    void delItem(Long id)throws Exception;
}
