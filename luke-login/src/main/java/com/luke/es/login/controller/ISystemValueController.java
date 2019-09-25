package com.luke.es.login.controller;


import com.luke.es.md.vo.login.systemValue.DTOSystemValue;
import com.luke.es.tool.controller.ActResult;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RequestMapping(path = "systemValue")
public interface ISystemValueController {

    /**
     * 查询系统变量
     * @param request
     * @param response
     * @param actResult
     * @param dtoSystemValue
     * @param bindingResult
     * @return
     * @throws Exception
     */
    @RequestMapping(path = "findAll.act",method = RequestMethod.POST)
    ActResult findAll(HttpServletRequest request, HttpServletResponse response, ActResult actResult , DTOSystemValue dtoSystemValue, BindingResult bindingResult) throws Exception ;

    /**
     * 删除系统变量
     * @param request
     * @param response
     * @param actResult
     * @param dtoSystemValue
     * @param bindingResult
     * @return
     * @throws Exception
     */
    @RequestMapping(path = "delSystemValue.act",method = RequestMethod.POST)
    ActResult delSystemValue(HttpServletRequest request, HttpServletResponse response, ActResult actResult , DTOSystemValue dtoSystemValue, BindingResult bindingResult) throws Exception ;

    /**
     * 修改系统变量
     * @param request
     * @param response
     * @param actResult
     * @param dtoSystemValue
     * @param bindingResult
     * @return
     * @throws Exception
     */
    @RequestMapping(path = "updateSystemValue.act",method = RequestMethod.POST)
    ActResult updateSystemValue(HttpServletRequest request, HttpServletResponse response, ActResult actResult , DTOSystemValue dtoSystemValue, BindingResult bindingResult) throws Exception ;

    /**
     * 保存系统变量
     * @param request
     * @param response
     * @param actResult
     * @param dtoSystemValue
     * @param bindingResult
     * @return
     * @throws Exception
     */
    @RequestMapping(path = "saveSystemValue.act",method = RequestMethod.POST)
    ActResult saveSystemValue(HttpServletRequest request, HttpServletResponse response, ActResult actResult , DTOSystemValue dtoSystemValue, BindingResult bindingResult) throws Exception ;

}
