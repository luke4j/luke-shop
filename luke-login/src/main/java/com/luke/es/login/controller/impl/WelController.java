package com.luke.es.login.controller.impl;

import com.luke.es.global.BController;
import com.luke.es.login.controller.IWelController;
import com.luke.es.login.service.ILoginService;
import com.luke.es.tool.tl.LK;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
public class WelController extends BController implements IWelController {

    @Resource
    ILoginService loginService ;

    @Value("${luke.login.use}")
    String luke_login_use = "redis";



    public String welcome(HttpServletRequest request, Model model) throws Exception {

        model = cnfModel(request,model) ;

        String token = getPageToken(request) ;
        if(LK.StrIsEmpty(token)){
            return "login" ;
        }else{
            Boolean isLogin = this.loginService.isLogin(token, luke_login_use, request);
            if(isLogin){
                return "work" ;
            }else{
                return "login" ;
            }
        }
    }

    public String logout(HttpServletRequest request, Model model) throws Exception {
        model = this.cnfModel(request,model) ;
        String token = this.getPageToken(request) ;
        if(LK.StrIsEmpty(token)){
            return "login" ;
        }else{
            this.loginService.logout(token, request);
            return "login" ;
        }

    }
}
