package com.luke.es.login.dao.impl;

import com.luke.es.db.DBDao;
import com.luke.es.login.dao.IRoleDao;
import com.luke.es.md.TU_Item;
import com.luke.es.md.TU_Role;
import com.luke.es.md.vo.login.role.UIVORole;
import com.luke.es.md.vo.login.role.VOFindRole;
import com.luke.es.tool.tl.LK;
import com.luke.es.tool.tl.LKMap;
import com.luke.es.tool.vo.Page;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class RoleDao extends DBDao implements IRoleDao {

    public List<UIVORole> findAllUnion(VOFindRole vo, Page page) throws Exception {
        String hql = "From TU_Role r " ;
        LKMap param = new LKMap() ;
        hql = LK.QL_UnionParam(hql,vo,param) ;
        page.setHql("select count(*) "+hql);
        List<TU_Role> roles = this.find(hql,param,page) ;
        List<UIVORole> uivoRoles = new ArrayList<UIVORole>(roles.size()) ;
        UIVORole uivoRole = null ;
        List<TU_Item> items = null ;
        for (TU_Role role:roles ) {
            items = this.find("From TU_Item i where i.id in("+role.getItemIds()+")");

            uivoRole = new UIVORole() ;
            BeanUtils.copyProperties(role,uivoRole);

            uivoRole.setItems(items);
            uivoRoles.add(uivoRole) ;
        }
        return uivoRoles;
    }
}
