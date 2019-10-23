package com.luke.es.goods.controller;

import com.luke.es.md.vo.goods.dto.DTOGoodsAttrCfg;
import com.luke.es.md.vo.goods.dto.DTOType;
import com.luke.es.tool.controller.ActResult;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@RequestMapping(path = "type")
public interface ITypeController {
    @RequestMapping(path = "addModel.act",method = RequestMethod.POST)
    ActResult addModel(HttpServletRequest request, HttpServletResponse response, ActResult actResult , DTOType dto, BindingResult bindingResult) throws Exception ;


    @RequestMapping(path = "delModel.act",method = RequestMethod.POST)
    ActResult delModel(HttpServletRequest request, HttpServletResponse response, ActResult actResult , DTOType dto, BindingResult bindingResult) throws Exception ;

    @RequestMapping(path = "updateModel.act",method = RequestMethod.POST)
    ActResult updateModel(HttpServletRequest request, HttpServletResponse response, ActResult actResult , DTOType dto, BindingResult bindingResult) throws Exception ;

    @RequestMapping(path = "findAllKind.act", method = RequestMethod.POST)
    ActResult findAllKind(HttpServletRequest request, HttpServletResponse response, ActResult actResult, DTOType dto, BindingResult bindingResult) throws Exception;

    @RequestMapping(path = "findOneKind.act", method = RequestMethod.POST)
    ActResult findOneKind(HttpServletRequest request, HttpServletResponse response, ActResult actResult, DTOType dto, BindingResult bindingResult) throws Exception;


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
    @RequestMapping(path = "findInitGoodsAttr.act",method = RequestMethod.POST)
    ActResult findInitGoodsAttr(HttpServletRequest request, HttpServletResponse response, ActResult actResult , DTOGoodsAttrCfg dto, BindingResult bindingResult) throws Exception ;


    /**
     * 保存或者更新商品类型属性配置
     * @param request
     * @param response
     * @param actResult
     * @param jsonArrayLstDto
     * @param bindingResult
     * @return
     * @throws Exception
     */
    @RequestMapping(path = "saveOrUpdateGoodsAttr.act",method = RequestMethod.POST)
    ActResult saveOrUpdateGoodsAttr(HttpServletRequest request, HttpServletResponse response, ActResult actResult ,Long xtypeId, String jsonArrayLstDto, BindingResult bindingResult) throws Exception ;
}
