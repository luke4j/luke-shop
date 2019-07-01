package com.luke.es.login.dao;

import com.luke.es.db.IDBDao;
import com.luke.es.md.TU_Item;

import java.util.List;

public interface IItemDao extends IDBDao {
    List<TU_Item> findAllTimes() throws Exception;
}
