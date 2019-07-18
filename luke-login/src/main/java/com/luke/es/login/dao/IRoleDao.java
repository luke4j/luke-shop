package com.luke.es.login.dao;

import com.luke.es.db.IDBDao;
import com.luke.es.md.vo.login.role.UIVORole;
import com.luke.es.tool.vo.Page;

import java.util.List;

public interface IRoleDao extends IDBDao {


    List<UIVORole> findAllUnion(Boolean b, UIVORole vo, Page page) throws Exception ;
}
