package com.luke.es.login.controller.impl;

import com.luke.es.login.controller.IWelController;
import com.luke.es.login.service.ILoginService;
import com.luke.es.tool.tl.LK;
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
    private String getPageToken(HttpServletRequest request){
        Cookie[] cokies = request.getCookies() ;
        if(cokies!=null){
            for(Cookie c :cokies){
                if(c.getName().equals("luke-shop-token")){
                    return c.getValue() ;
                }
            }
            return "" ;
        }else{
            return "" ;
        }
    }

    public String welcome(HttpServletRequest request, Model model) throws Exception {

        model = cnfModel(request,model) ;

        String token = getPageToken(request) ;
        if(LK.StrIsEmpty(token)){
            return "login" ;
        }else{
            Boolean isLogin = this.loginService.isLogin(token) ;
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
            this.loginService.logout(token) ;
            return "login" ;
        }

    }
}
