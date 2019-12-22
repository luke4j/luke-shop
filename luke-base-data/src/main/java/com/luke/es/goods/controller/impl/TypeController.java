package com.luke.es.goods.controller.impl;

import com.luke.es.global.BController;
import com.luke.es.goods.controller.ITypeController;
import com.luke.es.goods.service.ITypeService;
import com.luke.es.md.vo.goods.dto.DTOGoodsAttrCfg;
import com.luke.es.md.vo.goods.dto.DTOType;
import com.luke.es.md.vo.goods.vo.VOGoodsAttrCfg;
import com.luke.es.md.vo.goods.vo.VOType;
import com.luke.es.md.vo.xtype.VOXtypeZTreeNode;
import com.luke.es.md.vo.xtype.dto.DTOXtype;
import com.luke.es.md.vo.xtype.vo.VOXTypeGoodsCnf;
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
public class TypeController extends BController implements ITypeController {

    @Resource
    ITypeService iTypeService ;

    @Override
    public ActResult findTypeByLevel(HttpServletRequest request, HttpServletResponse response, ActResult actResult, DTOXtype dtoXtype, String jsonArrayLstDto, BindingResult bindingResult) throws Exception {
        List<VOXtypeZTreeNode> lstVoXtypeZtreeNodes =this.iTypeService.findTypeByLevel(dtoXtype,getCurrentUser(request)) ;
        return actResult.ok(lstVoXtypeZtreeNodes);
    }

    @Override
    public ActResult addType(HttpServletRequest request, HttpServletResponse response, ActResult actResult, DTOXtype dtoXtype, String jsonArrayLstDto, BindingResult bindingResult) throws Exception {
        this.iTypeService.addType(dtoXtype) ;
        return actResult.ok();
    }
    @Override
    public ActResult updateType(HttpServletRequest request, HttpServletResponse response, ActResult actResult, DTOXtype dtoXtype, String jsonArrayLstDto, BindingResult bindingResult) throws Exception {
        this.iTypeService.updateType(dtoXtype) ;
        return actResult.ok();
    }

    @Override
    public ActResult delType(HttpServletRequest request, HttpServletResponse response, ActResult actResult, DTOXtype dtoXtype, String jsonArrayLstDto, BindingResult bindingResult) throws Exception {
        this.iTypeService.delType(dtoXtype) ;
        return actResult.ok();
    }

    @Override
    public ActResult loadKindGoodsCnf(HttpServletRequest request, HttpServletResponse response, ActResult actResult, DTOXtype dtoXtype, String jsonArrayLstDto, BindingResult bindingResult) throws Exception {
        List<VOXTypeGoodsCnf> lst = this.iTypeService.loadKindGoodsCnf(dtoXtype) ;
        return actResult.ok(lst);
    }

    @Override
    public ActResult upholdKindGoodsCnf(HttpServletRequest request, HttpServletResponse response, ActResult actResult, DTOXtype dtoXtype, String jsonArrayLstDto, BindingResult bindingResult) throws Exception {
        this.iTypeService.upholdKindGoodsCnf(dtoXtype) ;
        return actResult.ok();
    }
}
