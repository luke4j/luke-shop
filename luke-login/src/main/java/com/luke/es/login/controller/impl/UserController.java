package com.luke.es.login.controller.impl;

import com.luke.es.global.BController;
import com.luke.es.login.controller.IUserController;
import com.luke.es.login.service.IUserService;
import com.luke.es.md.vo.UIVOList;
import com.luke.es.md.vo.login.VOInLogin;
import com.luke.es.md.vo.login.user.UIVOUser;
import com.luke.es.tool.controller.ActResult;
import com.luke.es.tool.vo.Page;
import com.luke.es.tool.vo.VOutUser;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@RestController
public class UserController extends BController implements IUserController {

    @Resource
    IUserService userService ;

    public ActResult findAllUser4List(HttpServletRequest request, HttpServletResponse response, ActResult actResult, VOInLogin vo, BindingResult bindingResult) throws Exception {
        List<UIVOList> users = this.userService.findAllUser4List(getCurrentUser(request)) ;
        actResult.setRt(users);
        return actResult ;
    }

    public ActResult findAll(HttpServletRequest request, HttpServletResponse response, Page page,UIVOUser vo, ActResult actResult) throws Exception {
        List<UIVOUser> users = this.userService.findAll(false,vo,page) ;
        actResult.setRt(users);
        return actResult;
    }

    public ActResult findAllBack(HttpServletRequest request, HttpServletResponse response,Page page,UIVOUser vo,  ActResult actResult) throws Exception {
        List<UIVOUser> users = this.userService.findAllBack(vo,page) ;
        actResult.setRt(users);
        return actResult;
    }

    public ActResult delModel(HttpServletRequest request, HttpServletResponse response, ActResult actResult, Long id, BindingResult bindingResult) throws Exception {
        this.userService.delModel(getCurrentUser(request),id) ;
        return null;
    }

    public ActResult addModel(HttpServletRequest request, HttpServletResponse response, ActResult actResult, UIVOUser vo, BindingResult bindingResult) throws Exception {
       this.userService.addModel(getCurrentUser(request),vo) ;
        return actResult;
    }

    public ActResult updateModel(HttpServletRequest request, HttpServletResponse response, ActResult actResult, UIVOUser vo, BindingResult bindingResult) throws Exception {
        this.userService.updateModel(getCurrentUser(request),vo) ;
        return actResult;
    }
}
