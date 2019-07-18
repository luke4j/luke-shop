package com.luke.es.login.service.impl;

import com.luke.es.login.dao.IRoleDao;
import com.luke.es.login.service.IRoleService;
import com.luke.es.md.vo.login.role.UIVORole;
import com.luke.es.tool.vo.Page;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class RoleService implements IRoleService {

    @Resource
    IRoleDao roleDao  ;

    public List<UIVORole> findAll(Boolean b, UIVORole vo, Page page) throws Exception {
        List<UIVORole> roles = this.roleDao.findAllUnion(b,vo,page) ;
        return roles;
    }
}
