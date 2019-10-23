package com.luke.es.goods.controller.impl;

import com.luke.es.goods.controller.ITypeController;
import com.luke.es.goods.service.ITypeService;
import com.luke.es.md.vo.goods.dto.DTOGoodsAttrCfg;
import com.luke.es.md.vo.goods.dto.DTOType;
import com.luke.es.md.vo.goods.vo.VOGoodsAttrCfg;
import com.luke.es.md.vo.goods.vo.VOType;
import com.luke.es.tool.controller.ActResult;
import net.sf.json.JSON;
import net.sf.json.JSONArray;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Collection;
import java.util.List;

@RestController
public class TypeController implements ITypeController {

    @Resource
    ITypeService iTypeService ;
    @Override
    public ActResult addModel(HttpServletRequest request, HttpServletResponse response, ActResult actResult, DTOType dto, BindingResult bindingResult) throws Exception {
        iTypeService.addModel(dto) ;
        return actResult.ok();
    }

    @Override
    public ActResult delModel(HttpServletRequest request, HttpServletResponse response, ActResult actResult, DTOType dto, BindingResult bindingResult) throws Exception {
        iTypeService.delModel(dto) ;
        return actResult.ok();
    }

    @Override
    public ActResult updateModel(HttpServletRequest request, HttpServletResponse response, ActResult actResult, DTOType dto, BindingResult bindingResult) throws Exception {
        iTypeService.updateModel(dto) ;
        return actResult.ok();
    }

    @Override
    public ActResult findAllKind(HttpServletRequest request, HttpServletResponse response, ActResult actResult, DTOType dto, BindingResult bindingResult) throws Exception {
        List<VOType> lstVo = iTypeService.findAll4Select(dto);
        actResult.setRt(lstVo);
        return actResult;
    }

    @Override
    public ActResult findOneKind(HttpServletRequest request, HttpServletResponse response, ActResult actResult, DTOType dto, BindingResult bindingResult) throws Exception {
        List<VOType> lstVo = iTypeService.findOneKind(dto);
        actResult.setRt(lstVo);
        return actResult;
    }

    @Override
    public ActResult findInitGoodsAttr(HttpServletRequest request, HttpServletResponse response, ActResult actResult, DTOGoodsAttrCfg dto, BindingResult bindingResult) throws Exception {
        List<VOGoodsAttrCfg> lstVO = this.iTypeService.findEmptyGoodsAttr(dto) ;
        actResult.setRt(lstVO);
        return actResult;
    }

    @Override
    public ActResult saveOrUpdateGoodsAttr(HttpServletRequest request, HttpServletResponse response, ActResult actResult,Long xtypeId, String jsonArrayLstDto, BindingResult bindingResult) throws Exception {
        JSONArray ja = JSONArray.fromObject(jsonArrayLstDto) ;
        Collection<DTOGoodsAttrCfg> lstDto =( Collection<DTOGoodsAttrCfg>) JSONArray.toCollection(ja,DTOGoodsAttrCfg.class) ;
        this.iTypeService.saveOrUpdateGoodsAttr(xtypeId,lstDto) ;
        return actResult.ok();
    }
}
