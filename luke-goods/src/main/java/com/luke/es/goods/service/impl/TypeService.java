package com.luke.es.goods.service.impl;

import com.luke.es.goods.dao.ITypeDao;
import com.luke.es.goods.service.ITypeService;
import com.luke.es.md.kc.TG_Type;
import com.luke.es.md.vo.goods.dto.DTOGoodsAttrCfg;
import com.luke.es.md.vo.goods.dto.DTOType;
import com.luke.es.md.vo.goods.vo.VOGoodsAttrCfg;
import com.luke.es.md.vo.goods.vo.VOType;
import com.luke.es.tool.exception.AppException;
import com.luke.es.tool.tl.LK;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Service
public class TypeService implements ITypeService {

    @Resource
    ITypeDao iTypeDao ;

    @Override
    @Transactional
    public void addModel(DTOType dto) throws Exception {
        TG_Type type = new TG_Type() ;
        BeanUtils.copyProperties(dto,type);
        type.setPy(LK.NameToPingYinShort(type.getName()));
        iTypeDao.save(type) ;
    }

    @Override
    @Transactional
    public void delModel(DTOType dto) throws Exception {
        TG_Type type = iTypeDao.get(TG_Type.class,dto.getId()) ;
        iTypeDao.delObj(type) ;
    }

    @Override@Transactional
    public void updateModel(DTOType dto) throws Exception {
        TG_Type type = iTypeDao.get(TG_Type.class,dto.getId()) ;
        BeanUtils.copyProperties(dto,type);
        type.setPy(LK.NameToPingYinShort(type.getName()));
        iTypeDao.update(type) ;
    }

    @Override
    public List<VOType> findAll4Tree(DTOType dto) throws Exception {
        return this.iTypeDao.find("select " +
                "new com.luke.es.md.vo.goods.vo.VOType( c_type,  name, fid, id, blnEntity, blnLens, blnLib, blnTime) " +
                "From TG_Type where _isDel=false order by fid,id") ;
    }

    @Override
    public List<VOGoodsAttrCfg> findEmptyGoodsAttr( DTOGoodsAttrCfg dto) throws Exception {
        List<VOGoodsAttrCfg> lstVO = new ArrayList<>(15) ;
        VOGoodsAttrCfg cfg = null ;
        TG_Type type = this.iTypeDao.get(TG_Type.class,dto.getKindId()) ;
        if(type==null)
            throw AppException.create("品类ID："+dto.getKindId()+" 从TG_Type表中查询不到数据") ;
        for(int i = 0;i<15;i++){
            cfg = new VOGoodsAttrCfg() ;
            cfg.setKindId(dto.getKindId());
            cfg.setKindName(type.getName());
            if(i==0){
                cfg.setColName("品类");
            }
            if(i==1){
                cfg.setColName("品牌");
            }
            if(i==2){
                cfg.setColName("型号/折射率");
            }
            if(i==3){
                cfg.setColName("颜色/贴膜");
            }
            if(i==4){
                cfg.setColName("规格");
            }
            cfg.setCol("a"+(i+1));
            lstVO.add(cfg) ;
        }
        return lstVO;
    }
}
