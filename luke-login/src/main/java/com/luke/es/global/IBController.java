package com.luke.es.global;

import com.luke.es.md.vo.dev.VOInItem;
import com.luke.es.md.vo.login.store.VOInStore;
import com.luke.es.tool.controller.ActResult;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public interface IBController {

    @RequestMapping(path = "findAll.act",method = RequestMethod.POST)
    ActResult findAll(HttpServletRequest request, HttpServletResponse response, ActResult actResult) throws Exception ;

    @RequestMapping(path = "addModel.act",method = RequestMethod.POST)
    ActResult addModel(HttpServletRequest request, HttpServletResponse response , ActResult actResult, VOInStore vo, BindingResult bindingResult) throws Exception ;

    @RequestMapping(path = "delModel.act",method = RequestMethod.POST)
    ActResult delModel(HttpServletRequest request, HttpServletResponse response , ActResult actResult, VOInItem vo, BindingResult bindingResult) throws Exception ;

    @RequestMapping(path = "updateModel.act",method = RequestMethod.POST)
    ActResult updateModel(HttpServletRequest request, HttpServletResponse response , ActResult actResult, VOInItem vo, BindingResult bindingResult) throws Exception ;

}
