package com.luke.es.goods.dao;

import com.luke.es.db.IDBDao;
import com.luke.es.md.vo.goods.vo.VOGoodsAttrCfg;

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
}
