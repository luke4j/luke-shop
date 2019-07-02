package com.luke.es.login.controller;

import com.luke.es.md.vo.dev.VOInItem;
import com.luke.es.tool.controller.ActResult;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@RequestMapping(path = "dev")
public interface IItemController {

    @RequestMapping(path = "findAllItems.act",method = RequestMethod.POST)
    ActResult findAllItems(HttpServletRequest request,HttpServletResponse response,ActResult actResult) throws Exception ;
    ActResult addItem(HttpServletRequest request, HttpServletResponse response , ActResult actResult, VOInItem vo, BindingResult bindingResult) throws Exception ;
    ActResult delItem(HttpServletRequest request, HttpServletResponse response , ActResult actResult, VOInItem vo, BindingResult bindingResult) throws Exception ;
    @RequestMapping(path = "updateItem.act",method = RequestMethod.POST)
    ActResult updateItem(HttpServletRequest request, HttpServletResponse response , ActResult actResult, VOInItem vo, BindingResult bindingResult) throws Exception ;


}
