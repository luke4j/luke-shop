package com.luke.es.login.controller.impl;

import com.luke.es.global.BController;
import com.luke.es.login.controller.ILoginController;
import com.luke.es.login.service.ILoginService;
import com.luke.es.md.TU_Item;
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
import java.util.List;

@RestController
public class LoginController extends BController implements ILoginController {

    private static Logger logger = LoggerFactory.getLogger(LoginController.class) ;

    @Resource
    ILoginService loginService ;

    public ActResult login(HttpServletRequest request, HttpServletResponse response, ActResult actResult, VOInLogin vo, BindingResult bindingResult) throws Exception {
        VOutUser user = loginService.login(vo);
        actResult.setRt(new LKMap().put1("_token",user.get_token()));
        return actResult;
    }

    public ActResult getCurrentUser(HttpServletRequest request, HttpServletResponse response, ActResult actResult, BindingResult bindingResult) throws Exception {
        VOutUser user = super.getCurrentUser(request) ;
        actResult.setRt(user);
        actResult.setMore(new LKMap<String, Object>().put1("systime",new Date().getTime()));
        return actResult;
    }

    public ActResult logout(HttpServletRequest request, HttpServletResponse response, ActResult actResult, BindingResult bindingResult) throws Exception {
        VOutUser user = super.getCurrentUser(request) ;
        this.loginService.logout(user.get_token());
        actResult.setRt(new LKMap().put1("goto",this.getLocalhostUrl(request)));
        return actResult;
    }

    public ActResult loadMenu(HttpServletRequest request, HttpServletResponse response, ActResult actResult, BindingResult bindingResult) throws Exception {
        VOutUser user = getCurrentUser(request) ;
        List<TU_Item> menus = this.loginService.loadMenu(user) ;
        actResult.setRt(menus);
        return actResult;
    }
}
