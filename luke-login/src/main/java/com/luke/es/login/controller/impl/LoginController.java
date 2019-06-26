package com.luke.es.login.controller.impl;

import com.luke.es.action.BaseController;
import com.luke.es.login.controller.ILoginController;
import com.luke.es.login.service.ILoginService;
import com.luke.es.md.vo.login.VOInLogin;
import com.luke.es.tool.controller.ActResult;
import com.luke.es.tool.tl.LKMap;
import com.luke.es.tool.vo.VOutUser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;

@RestController
public class LoginController extends BaseController implements ILoginController {

    private static Logger logger = LoggerFactory.getLogger(LoginController.class) ;

    @Resource
    ILoginService loginService ;

    public ActResult login(HttpServletRequest request, HttpServletResponse response, ActResult actResult, VOInLogin vo, BindingResult bindingResult) throws Exception {
        VOutUser user = loginService.login(vo);
        actResult.setRt(new LKMap().put1("_token",user.get_token()));
        return actResult;
    }

    public ActResult getCurrentUser(HttpServletRequest request, HttpServletResponse response, ActResult actResult, VOInLogin vo, BindingResult bindingResult) throws Exception {
        VOutUser user = super.getCurrentUser(request) ;
        actResult.setRt(user);
        actResult.getMore().put1("systime",new Date().getTime()) ;
        return actResult;
    }
}
