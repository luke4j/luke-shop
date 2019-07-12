package com.luke.es.login.controller.impl;

import com.luke.es.global.BController;
import com.luke.es.login.controller.IDevController;
import com.luke.es.login.service.IItemService;
import com.luke.es.md.TU_Item;
import com.luke.es.md.vo.dev.VOInItem;
import com.luke.es.tool.controller.ActResult;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@RestController
public class DevController extends BController implements IDevController {

    @Resource
    IItemService itemService ;

    public ActResult findAllItems(HttpServletRequest request, HttpServletResponse response, ActResult actResult) throws Exception {
        this.getCurrentUser(request) ;
        List<TU_Item> items = this.itemService.findAllItems() ;
        actResult.setRt(items);
        return actResult;
    }

    public ActResult addItem(HttpServletRequest request, HttpServletResponse response, ActResult actResult, VOInItem vo, BindingResult bindingResult) throws Exception {
        this.itemService.addItem(vo) ;
        actResult.ok() ;
        return actResult;
    }

    public ActResult delItem(HttpServletRequest request, HttpServletResponse response, ActResult actResult, VOInItem vo, BindingResult bindingResult) throws Exception {
        this.itemService.delItem(vo.getId()) ;
        actResult.ok() ;
        return actResult;
    }

    public ActResult updateItem(HttpServletRequest request, HttpServletResponse response, ActResult actResult, VOInItem vo, BindingResult bindingResult) throws Exception {
        this.itemService.updateItem(vo) ;
        actResult.ok();
        return actResult;
    }
}
