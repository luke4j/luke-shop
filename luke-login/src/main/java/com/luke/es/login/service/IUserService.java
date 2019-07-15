package com.luke.es.login.service;

import com.luke.es.md.vo.UIVOList;
import com.luke.es.tool.vo.VOutUser;

import java.util.List;

public interface IUserService {
    List<UIVOList> findAllUser4List(VOutUser currentUser) throws Exception ;
}
