package com.luke.es.login.dao.impl;

import com.luke.es.db.DBDao;
import com.luke.es.login.dao.ILoginDao;
import com.luke.es.md.*;
import com.luke.es.md.vo.login.VOInLogin;
import com.luke.es.tool.tl.LKMap;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class LoginDao  extends DBDao implements ILoginDao {

    public TU_User login(VOInLogin vo) throws Exception {
        List<TU_User> users = this.find("From TU_User u where u.loginName=:loginName and u.loginPwd=:loginPwd and u._isDel=false",
                new LKMap().put1("loginName",vo.getLoginName()).put1("loginPwd",vo.getLoginPwd())) ;
        return users.size()==1?users.get(0):null;
    }

    public TU_Info findUserInfo(Long id) throws Exception {
        List<TU_Info> lst = this.find("From TU_Info i where i.userId=:userId and i._isDel=false ",new LKMap().put1("userId",id)) ;
        return lst.size()==1?lst.get(0):null;
    }

    public TS_Store findUserStore(Long storeId) throws Exception {
        return this.get(TS_Store.class,storeId);
    }

    public TU_Role findUserRole(Long roleId) throws Exception {
        return this.get(TU_Role.class,roleId);
    }

    public TU_CWRole findUserCWRole(Long cwRoleId) throws Exception {
        return  this.get(TU_CWRole.class,cwRoleId);
    }

    public List<TU_Item> loadMenu(String itemIds) throws Exception {
        String hql = "From TU_Item i where i.id in ("+itemIds+") and i._isDel=false order by c_type,px" ;
        return this.find(hql);
    }
}
