package com.luke.es.login.dao.impl;

import com.luke.es.db.DBDao;
import com.luke.es.login.dao.IUserDao;
import com.luke.es.md.TU_Info;
import com.luke.es.md.vo.UIVOList;
import com.luke.es.md.vo.login.user.UIFindVOUser;
import com.luke.es.md.vo.login.user.UIVOUser;
import com.luke.es.tool.tl.LK;
import com.luke.es.tool.tl.LKMap;
import com.luke.es.tool.vo.Page;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class UserDao extends DBDao implements IUserDao {


    public List<UIVOList> findAlllUser4List() throws Exception {
        String hql = "Select new com.luke.es.md.vo.UIVOList( i.id as val,concat(i.name,'-',u.loginName) as text) From TU_User u ,TU_Info i where u.id=i.userId and i._isDel=false order by i.id" ;
        return this.find(hql) ;
    }

    public TU_Info getUnique(Long userId) throws Exception {
        return this.getUnique("From TU_Info i where i.userId=:userId",new LKMap().put1("userId",userId)) ;
    }

    public List<UIVOUser> findAllUnion(Boolean b, UIFindVOUser vo, Page page) throws Exception {
        String hql = "" ;
        String countHql = "" ;
        String hql_select = "select new com.luke.es.md.vo.login.user.UIVOUser(u,i,s.name,r.name,c.name) " ;
        String hql_from = "From TU_User u " +
                "left join TU_Info i on u.id=i.userId " +
                "left join TS_Store s on s.id=i.storeId " +
                "left join TU_Role r on r.id=i.roleId " +
                "left join TU_CWRole c on c.id =i.cwRoleId " ;
        LKMap param = new LKMap() ;
        hql = hql_select+hql_from ;
        countHql = "select count(*) "+hql_from ;
        if(b!=null){
            hql+=" where u._isDel=:isDel " ;
            countHql+=" where u._isDel=:isDel " ;
            param.put1("isDel",b) ;
        }
        if(vo!=null){
            countHql = LK.QL_UnionParam(countHql,vo,param) ;
            hql = LK.QL_UnionParam(hql,vo,param) ;
        }
        hql += " order by u.id " ;
        page.setHql(countHql);
        return this.find(hql,param,page) ;
    }


}
