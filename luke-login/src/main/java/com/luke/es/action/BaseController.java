package com.luke.es.action;

import com.luke.es.login.service.ILoginService;
import com.luke.es.tool.vo.VOutUser;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;

@Component
public class BaseController {

    @Resource
    ILoginService loginService ;


    protected VOutUser getCurrentUser(HttpServletRequest request) throws Exception{
        return this.loginService.getCurrentUser(getPageToken(request)) ;
    }

    protected Model cnfModel(HttpServletRequest request, Model model){
        model.addAttribute("systime",new Date()) ;
        String localhost = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
        model.addAttribute("localhost",localhost) ;
        return model ;
    }
    protected String getPageToken(HttpServletRequest request){
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
}
