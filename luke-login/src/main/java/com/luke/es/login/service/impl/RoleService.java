package com.luke.es.login.service.impl;

import com.luke.es.login.dao.IRoleDao;
import com.luke.es.login.service.IRoleService;
import com.luke.es.md.TU_Role;
import com.luke.es.md.vo.login.role.UIVORole;
import com.luke.es.md.vo.login.role.VOFindRole;
import com.luke.es.tool.vo.Page;
import com.luke.es.tool.vo.VOutUser;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.List;

@Service
public class RoleService implements IRoleService {

    @Resource
    IRoleDao roleDao  ;

    public List<UIVORole> findAll(VOFindRole vo, Page page) throws Exception {
        List<UIVORole> roles = this.roleDao.findAllUnion(vo,page) ;
        return roles;
    }

    @Transactional
    public void addModel(VOutUser currentUser, UIVORole vo) throws Exception {
        TU_Role role = new TU_Role() ;
        BeanUtils.copyProperties(vo,role);
        this.roleDao.save(role) ;
    }
}
