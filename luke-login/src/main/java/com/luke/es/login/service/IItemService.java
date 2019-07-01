package com.luke.es.login.service;

import com.luke.es.md.TU_Item;

import java.util.List;

public interface IItemService {
    List<TU_Item> findAllItems() throws Exception;
}
