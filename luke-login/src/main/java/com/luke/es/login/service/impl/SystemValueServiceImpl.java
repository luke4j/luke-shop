package com.luke.es.login.service.impl;

import com.luke.es.login.dao.ISystemValueDao;
import com.luke.es.login.service.ISystemValueService;
import com.luke.es.md.TSys_SystemValue;
import com.luke.es.md.vo.login.systemValue.DTOSystemValue;
import com.luke.es.md.vo.login.systemValue.VOSystemValueTree;
import com.luke.es.tool.exception.AppException;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.List;

@Service
public class SystemValueServiceImpl implements ISystemValueService {

    @Resource
    ISystemValueDao iSystemValueDao ;

    public List<VOSystemValueTree> findAll4Tree(DTOSystemValue dtoSystemValue) throws Exception {
        List<VOSystemValueTree> lstSysSystemValues = this.iSystemValueDao.findAll(TSys_SystemValue.class.getSimpleName()) ;
        return lstSysSystemValues;
    }

    public void delSystemValue(DTOSystemValue dtoSystemValue) throws Exception {
        if(dtoSystemValue.getId()==null) throw AppException.create("数据没有ID,不能删除，请联系管理") ;
        TSys_SystemValue systemValue =  this.iSystemValueDao.get(TSys_SystemValue.class,dtoSystemValue.getId()) ;
        this.iSystemValueDao.delObj(systemValue) ;
    }
    @Transactional
    public void saveSystemValue(DTOSystemValue dtoSystemValue) throws Exception {
        TSys_SystemValue systemValue = new TSys_SystemValue() ;
        BeanUtils.copyProperties(dtoSystemValue,systemValue);
        this.iSystemValueDao.save(systemValue) ;
    }

    public void updateSystemValue(DTOSystemValue dtoSystemValue) throws Exception {
        if(dtoSystemValue.getId()==null) throw AppException.create("数据没有ID,不能删除，请联系管理") ;
        TSys_SystemValue systemValue =  this.iSystemValueDao.get(TSys_SystemValue.class,dtoSystemValue.getId()) ;
        BeanUtils.copyProperties(dtoSystemValue,systemValue);
        this.iSystemValueDao.update(systemValue) ;
    }
}
