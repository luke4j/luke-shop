package com.luke.es.login.service;

import com.luke.es.md.vo.login.role.UIVORole;
import com.luke.es.tool.vo.Page;

import java.util.List;

public interface IRoleService {
    List<UIVORole> findAll(Boolean b, UIVORole vo, Page page) throws Exception;
}
