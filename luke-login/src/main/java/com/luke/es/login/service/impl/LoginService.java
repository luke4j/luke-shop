package com.luke.es.login.service.impl;

import com.luke.es.login.dao.ILoginDao;
import com.luke.es.login.service.ILoginService;
import com.luke.es.tool.vo.VOutUser;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class LoginService implements ILoginService {

    @Resource
    ILoginDao loginDao ;

    public Boolean isLogin(String token) throws Exception {
        VOutUser outUser = this.loginDao.getVOutUser(token) ;
        if(outUser!=null)
             return true;
        else{
            return false ;
        }
    }
}
