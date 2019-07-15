package com.luke.es.login.dao.impl;

import com.luke.es.db.DBDao;
import com.luke.es.login.dao.IUserDao;
import com.luke.es.md.vo.UIVOList;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class UserDao extends DBDao implements IUserDao {


    public List<UIVOList> findAlllUser4List() throws Exception {
        String hql = "Select new com.luke.es.md.vo.UIVOList( i.id as val,concat(i.name,'-',u.loginName) as text) From TU_User u ,TU_Info i where u.id=i.userId and i._isDel=false" ;
        return this.find(hql) ;
    }
}
