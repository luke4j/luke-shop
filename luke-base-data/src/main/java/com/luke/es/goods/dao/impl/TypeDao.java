package com.luke.es.goods.dao.impl;

import com.luke.es.db.DBDao;
import com.luke.es.goods.dao.ITypeDao;
import com.luke.es.md.vo.xtype.VOXtypeZTreeNode;
import com.luke.es.md.vo.xtype.dto.DTOXtype;
import com.luke.es.tool.tl.Assertion;
import com.luke.es.tool.tl.LKMap;
import com.luke.es.tool.vo.VOutUser;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class TypeDao extends DBDao implements ITypeDao {



    @Override
    public List<VOXtypeZTreeNode> findTypeByLevel(DTOXtype dtoXtype, VOutUser currentUser) throws Exception {
        if(dtoXtype==null||dtoXtype.getId()==null) Assertion.Error("TG_Type 参数异常");
        String hql ="select new com.luke.es.md.vo.xtype.VOXtypeZTreeNode" +
                "(t.id, t.c_type, t.name, t.py, t.fid) " +
                "From TG_Type t where t.fid=:fid and t._isDel=false order by t.id" ;
        if(dtoXtype.getId().longValue()==0L){
            hql = "select new com.luke.es.md.vo.xtype.VOXtypeZTreeNode" +
                    "(t.id, t.c_type, t.name, t.py, t.fid,e.blnEntity,e.blnLens,e.blnLib,e.blnTime) " +
                    "From TG_Type t left join TG_Type_Kind_Extends e on t.id=e.typeKindId  where t.fid=:fid and t._isDel=false order by t.id " ;
        }
        List<VOXtypeZTreeNode>  list = this.find(hql
                ,new LKMap<>().put1("fid",dtoXtype.getId()) );
        return list;
    }
}
