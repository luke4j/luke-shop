package com.luke.es.goods.service.impl;

import com.luke.es.goods.dao.ITypeDao;
import com.luke.es.goods.service.ITypeService;
import com.luke.es.md.kc.TG_Type;
import com.luke.es.md.vo.goods.dto.DTOType;
import com.luke.es.md.vo.goods.vo.VOType;
import com.luke.es.tool.tl.LK;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;
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
}
