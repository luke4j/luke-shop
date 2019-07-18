package com.luke.es.global;

import com.luke.es.md.vo.dev.VOInItem;
import com.luke.es.md.vo.login.store.VOInStore;
import com.luke.es.tool.controller.ActResult;
import com.luke.es.tool.vo.IVO;
import com.luke.es.tool.vo.Page;
import com.luke.es.tool.vo.VOIn;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public interface IBController {



    @RequestMapping(path = "delModel.act",method = RequestMethod.POST)
    ActResult delModel(HttpServletRequest request, HttpServletResponse response , ActResult actResult,  Long id, BindingResult bindingResult) throws Exception ;


}
