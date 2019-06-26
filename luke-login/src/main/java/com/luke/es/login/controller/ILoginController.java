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


    @RequestMapping(path = "login.act",method = RequestMethod.POST)
    ActResult login(HttpServletRequest request, HttpServletResponse response, ActResult actResult , VOInLogin vo, BindingResult bindingResult) throws Exception ;

    @RequestMapping(path = "getCurrentUser.act",method = RequestMethod.POST)
    ActResult getCurrentUser(HttpServletRequest request, HttpServletResponse response, ActResult actResult , VOInLogin vo, BindingResult bindingResult) throws Exception ;

}
