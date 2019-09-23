package com.luke.es.login.service.impl;

import com.luke.es.login.dao.IUserDao;
import com.luke.es.login.service.IUserService;
import com.luke.es.md.TU_Info;
import com.luke.es.md.TU_User;
import com.luke.es.md.vo.UIVOList;
import com.luke.es.md.vo.login.user.UIVOUser;
import com.luke.es.tool.tl.LK;
import com.luke.es.tool.vo.Page;
import com.luke.es.tool.vo.VOutUser;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.Date;
import java.util.List;

@Service
public class UserService implements IUserService {

    @Resource
    IUserDao userDao ;

    public List<UIVOList> findAllUser4List(VOutUser currentUser) throws Exception {
        List<UIVOList> users = this.userDao.findAlllUser4List() ;
        return users;
    }

    public List<UIVOUser> findAll(boolean b,UIVOUser vo, Page page) throws Exception {
        List<UIVOUser> users = this.userDao.findAllUnion(b,vo,page) ;
        return users;
    }

    public List<UIVOUser> findAllBack(UIVOUser vo,Page page) throws Exception {
        List<UIVOUser> users = this.userDao.findAllUnion(null,vo,page) ;
        return users;
    }

    @Transactional
    public void delModel(VOutUser currentUser, Long id) throws Exception {
        TU_User user = this.userDao.get(TU_User.class,id) ;
        TU_Info info = this.userDao.getUnique(user.getId()) ;
        user.set_isDel(true);
        info.set_isDel(true);
    }

    @Transactional
    public void addModel(VOutUser currentUser, UIVOUser vo) throws Exception {
        TU_User user = new TU_User() ;
        TU_Info info = new TU_Info() ;
        BeanUtils.copyProperties(vo,user);
        BeanUtils.copyProperties(vo,info);
        if(LK.StrIsNotEmpty(vo.getBirthday()))
            info.setBirthday(LK.StrToDate_YMD(vo.getBirthday()));

        info.setId(null);
        info.setUserId(user.getId());
        this.userDao.save(user) ;
        this.userDao.save(info) ;
    }
    @Transactional
    public void updateModel(VOutUser currentUser, UIVOUser vo) throws Exception {
        TU_User user = this.userDao.get(TU_User.class,vo.getId()) ;
        TU_Info info = this.userDao.getUnique(vo.getId()) ;
        BeanUtils.copyProperties(vo,user);
        BeanUtils.copyProperties(vo,info);
        info.setId(user.getId());
        info.setUserId(user.getId());
    }
}
