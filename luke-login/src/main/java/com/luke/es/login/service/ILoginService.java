package com.luke.es.login.service;

import com.luke.es.md.vo.login.VOInLogin;
import com.luke.es.tool.vo.VOutUser;

public interface ILoginService {
    Boolean isLogin(String token) throws Exception;

    VOutUser login(VOInLogin vo) throws Exception;
}
