package com.luke.es.login.controller;

import com.luke.es.md.vo.dev.VOInItem;
import com.luke.es.tool.controller.ActResult;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@RequestMapping(path = "dev")
public interface IDevController {

    /**
     * 查询所有功能,为开发功能页面的树提供数据
     * @param request
     * @param response
     * @param actResult
     * @return
     * @throws Exception
     */
    @RequestMapping(path = "findAllItems.act",method = RequestMethod.POST)
    ActResult findAllItems(HttpServletRequest request,HttpServletResponse response,ActResult actResult) throws Exception ;


    /**
     * 开发功能页面,添加功能数据接口
     * @param request
     * @param response
     * @param actResult
     * @param vo
     * @param bindingResult
     * @return
     * @throws Exception
     */
    @RequestMapping(path = "addItem.act",method = RequestMethod.POST)
    ActResult addItem(HttpServletRequest request, HttpServletResponse response , ActResult actResult, VOInItem vo, BindingResult bindingResult) throws Exception ;


    /**
     * 开发功能页面,删除数据接口
     * @param request
     * @param response
     * @param actResult
     * @param vo
     * @param bindingResult
     * @return
     * @throws Exception
     */
    @RequestMapping(path = "delItem.act",method = RequestMethod.POST)
    ActResult delItem(HttpServletRequest request, HttpServletResponse response , ActResult actResult, VOInItem vo, BindingResult bindingResult) throws Exception ;


    /**
     * 开发功能页面,更新数据接口
     * @param request
     * @param response
     * @param actResult
     * @param vo
     * @param bindingResult
     * @return
     * @throws Exception
     */
    @RequestMapping(path = "updateItem.act",method = RequestMethod.POST)
    ActResult updateItem(HttpServletRequest request, HttpServletResponse response , ActResult actResult, VOInItem vo, BindingResult bindingResult) throws Exception ;


}
