package com.luke.es.login.controller;

import com.luke.es.global.IBController;
import com.luke.es.md.vo.login.role.UIVORole;
import com.luke.es.md.vo.login.role.VOFindRole;
import com.luke.es.tool.controller.ActResult;
import com.luke.es.tool.vo.Page;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

@RequestMapping(path = "role")
public interface IRoleController extends IBController {


    @RequestMapping(path = "findAll.act",method = RequestMethod.POST)
    ActResult findAll(HttpServletRequest request, HttpServletResponse response, Page page, VOFindRole vo, ActResult actResult) throws Exception ;


    @RequestMapping(path = "findAllBack.act",method = RequestMethod.POST)
    ActResult findAllBack(HttpServletRequest request, HttpServletResponse response, Page page,  VOFindRole vo, ActResult actResult) throws Exception ;


    @RequestMapping(path = "addModel.act",method = RequestMethod.POST)
    ActResult addModel(HttpServletRequest request, HttpServletResponse response, ActResult actResult ,@Valid UIVORole vo, BindingResult bindingResult) throws Exception ;

    @RequestMapping(path = "updateModel.act",method = RequestMethod.POST)
    ActResult updateModel(HttpServletRequest request, HttpServletResponse response, ActResult actResult , UIVORole vo, BindingResult bindingResult) throws Exception ;


    /**
     * 查询所有权限,并标记查询角色已有权限
     * @param request
     * @param response
     * @param actResult
     * @param vo
     * @param bindingResult
     * @return
     * @throws Exception
     */
    @RequestMapping(path = "findCheckedItems.act",method = RequestMethod.POST)
    ActResult findCheckedItems(HttpServletRequest request, HttpServletResponse response, ActResult actResult , VOFindRole vo, BindingResult bindingResult) throws Exception ;

}
