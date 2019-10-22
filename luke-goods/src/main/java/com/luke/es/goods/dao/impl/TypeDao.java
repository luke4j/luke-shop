package com.luke.es.goods.dao.impl;

import com.luke.es.db.DBDao;
import com.luke.es.goods.dao.ITypeDao;
import com.luke.es.md.kc.TG_GoodsAttrCnf;
import com.luke.es.md.vo.goods.vo.VOGoodsAttrCfg;
import com.luke.es.tool.tl.LK;
import com.luke.es.tool.tl.LKMap;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class TypeDao extends DBDao implements ITypeDao {

    @Override
    public List<VOGoodsAttrCfg> findGodosAttrByXtypeId(Long xtypeId) throws Exception {
        String hql = "From TG_GoodsAttrCnf where xtypeId=:xtypeId" ;
        List<TG_GoodsAttrCnf> lstGoodsAttrCnf = this.find(hql, new LKMap<>().put1("xtypeId",xtypeId)) ;
        if(lstGoodsAttrCnf.size()>0){
            VOGoodsAttrCfg voCfg = null ;
            List<VOGoodsAttrCfg> rt = new ArrayList<>(lstGoodsAttrCnf.size()) ;
            for(TG_GoodsAttrCnf pjGoodsCfg :lstGoodsAttrCnf){
                voCfg = new VOGoodsAttrCfg( );
                BeanUtils.copyProperties(pjGoodsCfg,voCfg);
                if(LK.StrIsNotEmpty(pjGoodsCfg.getColName()))
                    voCfg.setLay_checked(true);
                rt.add(voCfg) ;
            }
            return rt ;
        }

        return new ArrayList<VOGoodsAttrCfg>() ;
    }

    @Override
    public void deleteGoodsAttrCfgByXtypeId(Long xtypeId) throws Exception {
        this.delete_hql("delete From TG_GoodsAttrCnf where xtypeId=:xtypeId",new LKMap<>().put1("xtypeId",xtypeId)) ;
    }
}
