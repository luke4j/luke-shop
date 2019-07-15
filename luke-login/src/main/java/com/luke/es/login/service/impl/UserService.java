package com.luke.es.login.service.impl;

import com.luke.es.login.dao.IUserDao;
import com.luke.es.login.service.IUserService;
import com.luke.es.md.vo.UIVOList;
import com.luke.es.tool.vo.VOutUser;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserService implements IUserService {

    @Resource
    IUserDao userDao ;

    public List<UIVOList> findAllUser4List(VOutUser currentUser) throws Exception {
        List<UIVOList> users = this.userDao.findAlllUser4List() ;
        return users;
    }
}
