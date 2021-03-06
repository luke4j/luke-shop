package com.luke.es.login.dao;

import com.luke.es.db.IDBDao;
import com.luke.es.md.*;
import com.luke.es.md.vo.login.VOInLogin;
import com.luke.es.tool.vo.VOutUser;

import java.util.List;

public interface ILoginDao  extends IDBDao {
    TU_User login(VOInLogin vo) throws Exception;

    TU_Info findUserInfo(Long id)throws Exception;

    TS_Store findUserStore(Long storeId)throws Exception;

    TU_Role findUserRole(Long roleId)throws Exception;

    TU_CWRole findUserCWRole(Long cwRoleId)throws Exception;

    List<TU_Item> loadMenu(String itemIds)throws Exception;

    void saveLoginToDB(VOutUser vOutUser) throws Exception;

    VOutUser getVOutUserFromDB(String token) throws Exception;

    void delVOutUserFromDB(String token) throws Exception;
}
