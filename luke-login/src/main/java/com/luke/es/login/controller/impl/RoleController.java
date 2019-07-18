package com.luke.es.login.controller.impl;

import com.luke.es.global.BController;
import com.luke.es.login.controller.IRoleController;
import com.luke.es.login.service.IRoleService;
import com.luke.es.md.vo.login.role.UIVORole;
import com.luke.es.tool.controller.ActResult;
import com.luke.es.tool.vo.Page;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@RestController
public class RoleController extends BController implements IRoleController {

    @Resource
    IRoleService roleService ;

    public ActResult findAll(HttpServletRequest request, HttpServletResponse response, Page page,UIVORole vo, ActResult actResult) throws Exception {
        List<UIVORole> users = this.roleService.findAll(false,vo,page) ;
        actResult.setRt(users);
        return actResult;
    }

    public ActResult findAllBack(HttpServletRequest request, HttpServletResponse response, Page page,UIVORole vo, ActResult actResult) throws Exception {
        return null;
    }

    public ActResult delModel(HttpServletRequest request, HttpServletResponse response, ActResult actResult, Long id, BindingResult bindingResult) throws Exception {
        return null;
    }

    public ActResult addModel(HttpServletRequest request, HttpServletResponse response, ActResult actResult, UIVORole vo, BindingResult bindingResult) throws Exception {
        return null;
    }

    public ActResult updateModel(HttpServletRequest request, HttpServletResponse response, ActResult actResult, UIVORole vo, BindingResult bindingResult) throws Exception {
        return null;
    }


}
