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
        List<TU_User> users = this.find("From TU_User u where u.loginName=:loginName and u.loginPwd=:loginPwd",
                new LKMap().put1("loginName",vo.getLoginName()).put1("loginPwd",vo.getLoginPwd())) ;
        return users==null?null: users.get(0);
    }

    public TU_Info findUserInfo(Long id) throws Exception {
        return this.getUnique("From TU_Info i where i.userId=:userId ",new LKMap().put1("userId",id)) ;
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
}
