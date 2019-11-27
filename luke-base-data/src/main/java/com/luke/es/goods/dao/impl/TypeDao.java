package com.luke.es.goods.dao.impl;

import com.luke.es.db.DBDao;
import com.luke.es.goods.dao.ITypeDao;
import com.luke.es.md.kc.TG_GoodsAttrCnf;
import com.luke.es.md.vo.goods.vo.VOGoodsAttrCfg;
import com.luke.es.md.vo.goods.vo.VOType;
import com.luke.es.md.vo.xtype.VOXtypeZTreeNode;
import com.luke.es.tool.tl.LK;
import com.luke.es.tool.tl.LKMap;
import com.luke.es.tool.vo.VOutUser;
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

    @Override
    public List<VOType> findOneKind(Long id, List<VOType> lst) throws Exception {
        List<VOType> lstTmp = this.find("select " +
                "new com.luke.es.md.vo.goods.vo.VOType( c_type,  name, fid, id, blnEntity, blnLens, blnLib, blnTime) " +
                "From TG_Type where _isDel=false and fid=:fid order by fid,id", new LKMap<>().put1("fid", id));
        lst.addAll(lstTmp);
        if (lstTmp.size() > 0) {
            for (VOType voType : lstTmp) {
                this.findOneKind(voType.getId(), lst);
            }
        }
        return lst;
    }

    @Override
    public List<VOXtypeZTreeNode> findTypeByLevel(Long fid, VOutUser currentUser) throws Exception {
        List<VOXtypeZTreeNode>  list = this.find("select new com.luke.es.md.vo.xtype.VOXtypeZTreeNode(id, c_type, name, py, fid, blnEntity, blnLens, blnLib, blnTime) From TG_Type t where t.fid=:fid ",new LKMap<>().put1("fid",fid)) ;
        return list;
    }
}
