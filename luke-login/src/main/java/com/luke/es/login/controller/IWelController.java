package com.luke.es.login.controller;


import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

public interface IWelController {

    @RequestMapping(path = "/" ,method = RequestMethod.GET)
    String welcome(HttpServletRequest request, Model model) throws Exception ;

    @RequestMapping(path = "/logout" )
    String logout(HttpServletRequest request, Model model) throws Exception  ;
}
