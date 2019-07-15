package com.luke.es.login.dao;

import com.luke.es.db.IDBDao;
import com.luke.es.md.vo.UIVOList;

import java.util.List;

public interface IUserDao extends IDBDao {
    List<UIVOList> findAlllUser4List() throws Exception;
}
