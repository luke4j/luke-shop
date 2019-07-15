package com.luke.es.login.controller.impl;

import com.luke.es.global.BController;
import com.luke.es.login.controller.IUserController;
import com.luke.es.login.service.IUserService;
import com.luke.es.md.vo.UIVOList;
import com.luke.es.md.vo.login.VOInLogin;
import com.luke.es.tool.controller.ActResult;
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
}
