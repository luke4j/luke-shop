package com.luke.es.goods.service;

import com.luke.es.md.vo.goods.dto.DTOGoodsAttrCfg;
import com.luke.es.md.vo.goods.dto.DTOType;
import com.luke.es.md.vo.goods.vo.VOGoodsAttrCfg;
import com.luke.es.md.vo.goods.vo.VOType;
import com.luke.es.md.vo.xtype.VOXtypeZTreeNode;
import com.luke.es.md.vo.xtype.dto.DTOXtype;
import com.luke.es.md.vo.xtype.vo.VOXTypeGoodsCnf;
import com.luke.es.tool.vo.VOutUser;

import java.util.Collection;
import java.util.List;

public interface ITypeService {


    List<VOXtypeZTreeNode> findTypeByLevel(DTOXtype dtoXtype, VOutUser currentUser)throws Exception;

    void addType(DTOXtype dtoXtype)throws Exception;

    void updateType(DTOXtype dtoXtype)throws Exception;

    void delType(DTOXtype dtoXtype)throws Exception;

    /**
     * 查询品类属性配置
     * @param dtoXtype
     * @return
     * @throws Exception
     */
    List<VOXTypeGoodsCnf> loadKindGoodsCnf(DTOXtype dtoXtype)throws Exception;

    /**
     *
     * @param dtoXtype {id:是品类的id,jsonGoodsCnf:品类下商品的属性配置}
     * @throws Exception
     */
    void upholdKindGoodsCnf(DTOXtype dtoXtype)throws Exception;
}
