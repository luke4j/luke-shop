package com.luke.es.login.controller;


import com.luke.es.global.IBController;
import com.luke.es.md.vo.login.store.VOInStore;
import com.luke.es.tool.controller.ActResult;
import com.luke.es.tool.vo.Page;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RequestMapping(path = "store")
public interface IStoreController extends IBController {

    @RequestMapping(path = "addModel.act",method = RequestMethod.POST)
    ActResult addModel(HttpServletRequest request, HttpServletResponse response , ActResult actResult, VOInStore vo, BindingResult bindingResult) throws Exception ;


    @RequestMapping(path = "updateModel.act",method = RequestMethod.POST)
    ActResult updateModel(HttpServletRequest request, HttpServletResponse response , ActResult actResult, VOInStore vo, BindingResult bindingResult) throws Exception ;

    @RequestMapping(path = "findAll.act",method = RequestMethod.POST)
    ActResult findAll(HttpServletRequest request, HttpServletResponse response, Page page, ActResult actResult) throws Exception ;

    @RequestMapping(path = "findAllBack.act",method = RequestMethod.POST)
    ActResult findAllBack(HttpServletRequest request, HttpServletResponse response,Page page, ActResult actResult) throws Exception ;
}
