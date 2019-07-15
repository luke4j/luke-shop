package com.luke.es.login.controller;


import com.luke.es.global.IBController;
import com.luke.es.md.vo.login.VOInLogin;
import com.luke.es.tool.controller.ActResult;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RequestMapping(path = "store")
public interface IStoreController extends IBController {

//    @RequestMapping(path = "findAllUser.act",method = RequestMethod.POST)
//    ActResult findAllUser(HttpServletRequest request, HttpServletResponse response, ActResult actResult , VOInLogin vo, BindingResult bindingResult) throws Exception ;



}
