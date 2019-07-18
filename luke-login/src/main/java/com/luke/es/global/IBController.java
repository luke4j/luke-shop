package com.luke.es.global;

import com.luke.es.md.vo.dev.VOInItem;
import com.luke.es.md.vo.login.store.VOInStore;
import com.luke.es.tool.controller.ActResult;
import com.luke.es.tool.vo.IVO;
import com.luke.es.tool.vo.VOIn;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public interface IBController {

    @RequestMapping(path = "findAll.act",method = RequestMethod.POST)
    ActResult findAll(HttpServletRequest request, HttpServletResponse response, ActResult actResult) throws Exception ;


    @RequestMapping(path = "findAllBack.act",method = RequestMethod.POST)
    ActResult findAllBack(HttpServletRequest request, HttpServletResponse response, ActResult actResult) throws Exception ;



}
