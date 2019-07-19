package com.luke.es.login.controller;

import com.luke.es.md.vo.login.VOInLogin;
import com.luke.es.tool.controller.ActResult;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RequestMapping(path = "login")
public interface ILoginController {


    /**
     *登录成功页面,登录功能
     * 以登录名和密码查询用户数据,
     * 如果查询成功,再以用户数据查询站点,角色,财务角色数据,
     * 最后封装成VOutUser对象,保存到redis
     * @param request
     * @param response
     * @param actResult
     * @param vo
     * @param bindingResult
     * @return
     * @throws Exception
     */
    @RequestMapping(path = "login.act",method = RequestMethod.POST)
    ActResult login(HttpServletRequest request, HttpServletResponse response, ActResult actResult , VOInLogin vo, BindingResult bindingResult) throws Exception ;

    /**
     *登录成功页面,得到当前用户的娄所接口
     * @param request
     * @param response
     * @param actResult
     * @param bindingResult
     * @return
     * @throws Exception
     */
    @RequestMapping(path = "getCurrentUser.act",method = RequestMethod.POST)
    ActResult getCurrentUser(HttpServletRequest request, HttpServletResponse response, ActResult actResult, BindingResult bindingResult) throws Exception ;

    /**
     *登录成功页面,登出功能接口
     * @param request
     * @param response
     * @param actResult
     * @param bindingResult
     * @return
     * @throws Exception
     */
    @RequestMapping(path = "logout.act",method = RequestMethod.POST)
    ActResult logout(HttpServletRequest request, HttpServletResponse response, ActResult actResult, BindingResult bindingResult) throws Exception ;

    /**
     * 登录成功页面,加载菜单数据接口
     * @param request
     * @param response
     * @param actResult
     * @param bindingResult
     * @return
     * @throws Exception
     */
    @RequestMapping(path = "loadMenu.act",method = RequestMethod.POST)
    ActResult loadMenu(HttpServletRequest request, HttpServletResponse response, ActResult actResult, BindingResult bindingResult) throws Exception ;

}
