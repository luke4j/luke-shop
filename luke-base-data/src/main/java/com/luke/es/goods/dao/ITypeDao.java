package com.luke.es.goods.dao;

import com.luke.es.db.IDBDao;
import com.luke.es.md.vo.goods.vo.VOGoodsAttrCfg;
import com.luke.es.md.vo.goods.vo.VOType;
import com.luke.es.md.vo.xtype.VOXtypeZTreeNode;
import com.luke.es.md.vo.xtype.dto.DTOXtype;
import com.luke.es.tool.vo.VOutUser;

import java.util.List;

public interface ITypeDao  extends IDBDao {
    /**
     * 查询品类已配置的商品属性
     * @param xtypeId
     * @return
     * @throws Exception
     */
    List<VOGoodsAttrCfg> findGodosAttrByXtypeId(Long xtypeId) throws Exception;

    void deleteGoodsAttrCfgByXtypeId(Long xtypeId)throws Exception;

    List<VOType> findOneKind(Long id, List<VOType> lst) throws Exception;

    /**
     * 按fid 查询数据为页面树提供数据
     * @param dtoXtype
     * @param currentUser
     * @return
     * @throws Exception
     */
    List<VOXtypeZTreeNode> findTypeByLevel(DTOXtype dtoXtype, VOutUser currentUser) throws Exception;
}
