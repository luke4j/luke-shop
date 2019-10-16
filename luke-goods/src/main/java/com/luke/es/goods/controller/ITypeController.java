package com.luke.es.goods.controller;

import com.luke.es.md.vo.goods.dto.DTOGoodsAttrCfg;
import com.luke.es.md.vo.goods.dto.DTOType;
import com.luke.es.tool.controller.ActResult;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RequestMapping(path = "type")
public interface ITypeController {
    @RequestMapping(path = "addModel.act",method = RequestMethod.POST)
    ActResult addModel(HttpServletRequest request, HttpServletResponse response, ActResult actResult , DTOType dto, BindingResult bindingResult) throws Exception ;


    @RequestMapping(path = "delModel.act",method = RequestMethod.POST)
    ActResult delModel(HttpServletRequest request, HttpServletResponse response, ActResult actResult , DTOType dto, BindingResult bindingResult) throws Exception ;

    @RequestMapping(path = "updateModel.act",method = RequestMethod.POST)
    ActResult updateModel(HttpServletRequest request, HttpServletResponse response, ActResult actResult , DTOType dto, BindingResult bindingResult) throws Exception ;

    @RequestMapping(path = "findAll.act",method = RequestMethod.POST)
    ActResult findAll(HttpServletRequest request, HttpServletResponse response, ActResult actResult , DTOType dto, BindingResult bindingResult) throws Exception ;

    /**
     * 返回空的15个空的商品属性配置
     * @param request
     * @param response
     * @param actResult
     * @param dto
     * @param bindingResult
     * @return
     * @throws Exception
     */
    @RequestMapping(path = "findEmptyGoodsAttr.act",method = RequestMethod.POST)
    ActResult findEmptyGoodsAttr(HttpServletRequest request, HttpServletResponse response, ActResult actResult , DTOGoodsAttrCfg dto, BindingResult bindingResult) throws Exception ;
}
