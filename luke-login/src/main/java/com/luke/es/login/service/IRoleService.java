package com.luke.es.login.service;

import com.luke.es.md.vo.login.role.UIVOCheckItems4Tree;
import com.luke.es.md.vo.login.role.UIVORole;
import com.luke.es.md.vo.login.role.VOFindRole;
import com.luke.es.tool.vo.Page;
import com.luke.es.tool.vo.VOutUser;

import java.util.List;

public interface IRoleService {

    List<UIVORole> findAll(VOFindRole vo, Page page) throws Exception;

    void addModel(VOutUser currentUser, UIVORole vo)throws Exception ;

    List<UIVOCheckItems4Tree> findCheckedItems(VOFindRole vo)throws Exception ;
}
