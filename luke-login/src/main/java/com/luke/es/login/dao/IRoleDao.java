package com.luke.es.login.dao;

import com.luke.es.db.IDBDao;
import com.luke.es.md.vo.login.role.UIVOCheckItems4Tree;
import com.luke.es.md.vo.login.role.UIVORole;
import com.luke.es.md.vo.login.role.VOFindRole;
import com.luke.es.tool.vo.Page;

import java.util.List;

public interface IRoleDao extends IDBDao {


    List<UIVORole> findAllUnion(VOFindRole vo, Page page) throws Exception ;

    /**
     * 查询所有功能为树提供数据
     * @return
     * @throws Exception
     */
    List<UIVOCheckItems4Tree> findAllItems4Tree()throws Exception ;
}
