package com.luke.es.login.controller.impl;

import com.luke.es.login.controller.IWelController;
import com.luke.es.login.service.ILoginService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;

@Controller
public class WelController implements IWelController {

    @Resource
    ILoginService loginService ;
    private Model cnfModel(HttpServletRequest request,Model model){
        model.addAttribute("systime",new Date()) ;
        String localhost = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
        model.addAttribute("localhost",localhost) ;
        return model ;
    }

    public String welcome(HttpServletRequest request, Model model) throws Exception {

        model = cnfModel(request,model) ;

        Cookie[] cokies = request.getCookies() ;
        for(Cookie c :cokies){
            if(c.getName().equals("luke-shop-token")){
                String token = c.getValue() ;
                Boolean isLogin = this.loginService.isLogin(token) ;
                if(isLogin){
                    return "work" ;
                }else{
                    return "login" ;
                }
            }
        }
        return "login";
    }
}
