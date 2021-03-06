package com.luke.es.login.controller.impl;

import com.luke.es.global.BController;
import com.luke.es.login.controller.IStoreController;
import com.luke.es.login.service.IStoreService;
import com.luke.es.md.TS_Store;
import com.luke.es.md.vo.login.store.VOInStore;
import com.luke.es.tool.controller.ActResult;
import com.luke.es.tool.vo.Page;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@RestController
public class StoreController extends BController implements IStoreController {

    @Resource
    IStoreService storeService ;

    public ActResult findAll(HttpServletRequest request, HttpServletResponse response, Page page, ActResult actResult) throws Exception {
        List<TS_Store> lstStore = this.storeService.findAll() ;
        actResult.setRt(lstStore);
        return actResult;
    }


    public ActResult findAllBack(HttpServletRequest request, HttpServletResponse response,Page page,  ActResult actResult) throws Exception {
        List<TS_Store> lstStore = this.storeService.findAllBack() ;
        actResult.setRt(lstStore);
        return actResult;
    }

    public ActResult addModel(HttpServletRequest request, HttpServletResponse response, ActResult actResult, VOInStore vo, BindingResult bindingResult) throws Exception {
        this.storeService.addModel(vo,super.getCurrentUser(request)) ;
        return actResult;
    }

    public ActResult delModel(HttpServletRequest request, HttpServletResponse response, ActResult actResult, Long id, BindingResult bindingResult) throws Exception {
        this.storeService.delModel(id,super.getCurrentUser(request)) ;
        return actResult;
    }

    public ActResult updateModel(HttpServletRequest request, HttpServletResponse response, ActResult actResult, VOInStore vo, BindingResult bindingResult) throws Exception {
        this.storeService.updateModel(vo,super.getCurrentUser(request)) ;
        return actResult;
    }


}
