package com.luke.es.login.service;

import com.luke.es.md.vo.UIVOList;
import com.luke.es.md.vo.login.user.UIVOUser;
import com.luke.es.tool.vo.Page;
import com.luke.es.tool.vo.VOutUser;

import java.util.List;

public interface IUserService {
    List<UIVOList> findAllUser4List(VOutUser currentUser) throws Exception ;

    List<UIVOUser> findAll(boolean b, Page page)throws Exception ;

    List<UIVOUser> findAllBack(Page page)throws Exception ;

    void delModel(VOutUser currentUser, Long id)throws Exception ;

    void addModel(VOutUser currentUser, UIVOUser vo)throws Exception ;

    void updateModel(VOutUser currentUser, UIVOUser vo)throws Exception ;
}
