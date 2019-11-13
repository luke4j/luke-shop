package com.luke.es.login.service;

import com.luke.es.md.TU_Item;
import com.luke.es.md.vo.login.VOInLogin;
import com.luke.es.tool.vo.VOutUser;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface ILoginService {
    /**
     * token登录
     * @param token
     * @return
     * @throws Exception
     */
    Boolean isLogin(String token, String luke_login_use, HttpServletRequest request) throws Exception;

    /**
     * token登出
     * @param token
     * @throws Exception
     */
    void logout(String token)throws Exception;

    /**
     * 密码登录
     * @param vo
     * @return
     * @throws Exception
     */
    VOutUser login(VOInLogin vo, HttpServletRequest request) throws Exception;


    VOutUser getCurrentUserByToken(String token)throws Exception;

    List<TU_Item> loadMenu(VOutUser user)throws Exception;
}
