package com.luke.es.login.dao.impl;

import com.luke.es.db.DBDao;
import com.luke.es.login.dao.IRoleDao;
import com.luke.es.md.vo.login.role.UIVORole;
import com.luke.es.tool.tl.LK;
import com.luke.es.tool.tl.LKMap;
import com.luke.es.tool.vo.Page;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class RoleDao extends DBDao implements IRoleDao {

    public List<UIVORole> findAllUnion(Boolean b, UIVORole vo, Page page) throws Exception {
        String hql = "From TU_Role r " ;
        LKMap param = new LKMap() ;
        if(b!=null){
            hql+= LK.QL_WhereOrAnd(hql) + " r._isDel=:isDel " ;
            param.put1("isDel",b) ;
        }
        if(vo!=null){

        }

        return null;
    }
}
