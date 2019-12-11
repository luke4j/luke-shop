package com.luke.es.goods.controller;

import com.luke.es.md.vo.goods.dto.DTOGoodsAttrCfg;
import com.luke.es.md.vo.goods.dto.DTOType;
import com.luke.es.md.vo.xtype.dto.DTOXtype;
import com.luke.es.tool.controller.ActResult;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@RequestMapping(path = "type")
public interface ITypeController {

    /**
     * 按树的级别查询数据 ，也就是按fid
     * @param request
     * @param response
     * @param actResult
     * @param dtoXtype
     * @param jsonArrayLstDto
     * @param bindingResult
     * @return
     * @throws Exception
     */
    @RequestMapping(path = "findTypeByLevel.act",method = RequestMethod.POST)
    ActResult findTypeByLevel(HttpServletRequest request, HttpServletResponse response, ActResult actResult , DTOXtype dtoXtype, String jsonArrayLstDto, BindingResult bindingResult)throws Exception ;

    @RequestMapping(path = "addType.act",method = RequestMethod.POST)
    ActResult addType(HttpServletRequest request, HttpServletResponse response, ActResult actResult , DTOXtype dtoXtype, String jsonArrayLstDto, BindingResult bindingResult)throws Exception ;


}
