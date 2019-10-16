package com.luke.es.goods.service;

import com.luke.es.md.vo.goods.dto.DTOGoodsAttrCfg;
import com.luke.es.md.vo.goods.dto.DTOType;
import com.luke.es.md.vo.goods.vo.VOGoodsAttrCfg;
import com.luke.es.md.vo.goods.vo.VOType;

import java.util.List;

public interface ITypeService {
    void addModel(DTOType dto) throws Exception;

    void delModel(DTOType dto)throws Exception;

    void updateModel(DTOType dto)throws Exception;

    List<VOType> findAll4Tree(DTOType dto)throws Exception;

    /**
     * 返回15个空的商品属性配置
     * @return
     * @throws Exception
     */
    List<VOGoodsAttrCfg> findEmptyGoodsAttr( DTOGoodsAttrCfg dto)throws Exception;
}
