package com.luke.es.goods.service;

import com.luke.es.md.vo.goods.dto.DTOGoodsAttrCfg;
import com.luke.es.md.vo.goods.dto.DTOType;
import com.luke.es.md.vo.goods.vo.VOGoodsAttrCfg;
import com.luke.es.md.vo.goods.vo.VOType;

import java.util.Collection;
import java.util.List;

public interface ITypeService {
    void addModel(DTOType dto) throws Exception;

    void delModel(DTOType dto)throws Exception;

    void updateModel(DTOType dto)throws Exception;

    List<VOType> findAll4Select(DTOType dto) throws Exception;

    /**
     * 返回15个空的商品属性配置
     * @return
     * @throws Exception
     */
    List<VOGoodsAttrCfg> findEmptyGoodsAttr( DTOGoodsAttrCfg dto)throws Exception;

    /**
     * 删除原来的品类所对应的配置，再保存现在的配置
     * @param lstDto
     */
    void saveOrUpdateGoodsAttr(Long xtypeId,Collection<DTOGoodsAttrCfg> lstDto)throws Exception;


    List<VOType> findOneKind(DTOType dto) throws Exception;
}
