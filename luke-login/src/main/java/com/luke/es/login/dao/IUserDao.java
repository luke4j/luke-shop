package com.luke.es.login.dao;

import com.luke.es.db.IDBDao;
import com.luke.es.md.TU_Info;
import com.luke.es.md.vo.UIVOList;
import com.luke.es.md.vo.login.user.UIVOUser;
import com.luke.es.tool.vo.Page;

import java.util.List;

public interface IUserDao extends IDBDao {
    List<UIVOList> findAlllUser4List() throws Exception;

    /**
     * 以userId 查询 TU_Info数据
     * @param userId
     * @return
     * @throws Exception
     */
    TU_Info getUnique(Long userId)throws Exception;


    List<UIVOUser> findAllUnion(Boolean b,UIVOUser vo, Page page)throws Exception;
}
