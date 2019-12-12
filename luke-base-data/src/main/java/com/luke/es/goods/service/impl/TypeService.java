package com.luke.es.goods.service.impl;

import com.luke.es.goods.dao.ITypeDao;
import com.luke.es.goods.service.ITypeService;
import com.luke.es.md.kc.TG_Type;
import com.luke.es.md.kc.TG_Type_Kind_Extends;
import com.luke.es.md.vo.xtype.VOXtypeZTreeNode;
import com.luke.es.md.vo.xtype.dto.DTOXtype;
import com.luke.es.tool.tl.Assertion;
import com.luke.es.tool.tl.LK;
import com.luke.es.tool.vo.VOutUser;
import net.sf.json.JSONArray;
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
    public List<VOXtypeZTreeNode> findTypeByLevel(DTOXtype dtoXtype, VOutUser currentUser) throws Exception {
        List<VOXtypeZTreeNode> lst = this.iTypeDao.findTypeByLevel(dtoXtype,currentUser) ;
        return lst;
    }

    @Override
    @Transactional
    public void addType(DTOXtype dtoXtype) throws Exception {
        if(dtoXtype.getFid()==null||dtoXtype.getFid().longValue()==0L){
            this.addTypeKind(dtoXtype) ;
        }else {
            TG_Type parentNode = this.iTypeDao.get(TG_Type.class,dtoXtype.getFid()) ;
            if(parentNode==null) Assertion.Error("TypeServer.addType 添加数据异常");
            if("品类".equals(parentNode.getC_type())) {
                this.addTypeBrand(dtoXtype,parentNode) ;
            }else if("品牌".equals(parentNode.getC_type())){
                this.addTypeVersion(dtoXtype,parentNode) ;
            }else if("型号".equals(parentNode.getC_type())){
                this.addTypeColor(dtoXtype,parentNode) ;
            }else if("颜色".equals(parentNode.getC_type())){
                this.addTypeGoods(dtoXtype,parentNode) ;
            }
        }
    }
    /**
     * 保存商品数据
     * @param dtoXtype
     * @param parentNode
     */
    private void addTypeGoods(DTOXtype dtoXtype, TG_Type parentNode) {
        TG_Type goods = new TG_Type() ;
        BeanUtils.copyProperties(dtoXtype,goods);
        goods.setPy(LK.NameToPingYinShort(goods.getName()));
        goods.setFid(parentNode.getId());
        goods.setC_type("商品");
        this.iTypeDao.save(goods) ;

        JSONArray jsonGoods = JSONArray.fromObject(dtoXtype.getGoodsInfos()) ;
        Object[] objects = jsonGoods.toArray();
        for(Object obj :objects){

        }

    }
    /**
     * 保存颜色数据
     * @param dtoXtype
     */
    private void addTypeColor(DTOXtype dtoXtype,TG_Type parentNode) {
        TG_Type color = new TG_Type() ;
        BeanUtils.copyProperties(dtoXtype,color);
        color.setPy(LK.NameToPingYinShort(color.getName()));
        color.setFid(parentNode.getId());
        color.setC_type("颜色");
        this.iTypeDao.save(color) ;
    }
    /**
     * 保存型号数据
     * @param dtoXtype
     */
    private void addTypeVersion(DTOXtype dtoXtype,TG_Type parentNode) {
        TG_Type version = new TG_Type() ;
        BeanUtils.copyProperties(dtoXtype,version);
        version.setPy(LK.NameToPingYinShort(version.getName()));
        version.setFid(parentNode.getId());
        version.setC_type("型号");
        this.iTypeDao.save(version) ;
    }
    /**
     * 保存品牌数据
     * @param dtoXtype
     */
    private void addTypeBrand(DTOXtype dtoXtype,TG_Type parentNode) {
        TG_Type brand = new TG_Type() ;
        BeanUtils.copyProperties(dtoXtype,brand);
        brand.setPy(LK.NameToPingYinShort(brand.getName()));
        brand.setFid(parentNode.getId());
        brand.setC_type("品牌");
        this.iTypeDao.save(brand) ;
    }
    /**
     * 保存品类数据
     * @param dtoXtype
     */
    private void addTypeKind(DTOXtype dtoXtype) {
        TG_Type kind = new TG_Type() ;
        BeanUtils.copyProperties(dtoXtype,kind);
        kind.setPy(LK.NameToPingYinShort(kind.getName()));
        kind.setFid(0L);
        kind.setC_type("品类");
        this.iTypeDao.save(kind) ;

        TG_Type_Kind_Extends type_extends = new TG_Type_Kind_Extends() ;
        BeanUtils.copyProperties(dtoXtype,type_extends);
        type_extends.setTypeKindId(kind.getId());
        this.iTypeDao.save(type_extends) ;

    }
}
