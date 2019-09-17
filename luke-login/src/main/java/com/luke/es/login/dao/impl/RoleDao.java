package com.luke.es.login.dao.impl;

import com.luke.es.db.DBDao;
import com.luke.es.login.dao.IRoleDao;
import com.luke.es.md.TU_Item;
import com.luke.es.md.TU_Role;
import com.luke.es.md.vo.login.role.UIVOCheckItems4Tree;
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
        hql+= " order by r.id " ;
        List<TU_Role> roles = this.find(hql,param,page) ;
        List<UIVORole> uivoRoles = new ArrayList<UIVORole>(roles.size()) ;
        UIVORole uivoRole = null ;
        List<TU_Item> items = null ;
        for (TU_Role role:roles ) {
            if(LK.StrIsNotEmpty(role.getItemIds())){
                items = this.find("From TU_Item i where i.id in("+role.getItemIds()+") order by i.id");
            }
            uivoRole = new UIVORole() ;
            BeanUtils.copyProperties(role,uivoRole);

            uivoRole.setItems(items);
            uivoRoles.add(uivoRole) ;
        }
        return uivoRoles;
    }

    public List<UIVOCheckItems4Tree> findAllItems4Tree() throws Exception {
        String hql = "select new com.luke.es.md.vo.login.role.UIVOCheckItems4Tree(i.id,i.fid,i.name) from TU_Item i where i._isDel = false " ;
        return this.find(hql);
    }

    public List<TU_Item> findRoleBtn(Long id) throws Exception {
        TU_Role role = this.get(TU_Role.class,id) ;
        return this.find("From TU_Item i where i.id in ("+role.getItemIds()+") and i.c_type='btn'") ;
    }
}
