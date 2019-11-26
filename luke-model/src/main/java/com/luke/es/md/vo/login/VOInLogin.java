package com.luke.es.md.vo.login;

import com.luke.es.tool.vo.VOIn;

public class VOInLogin extends VOIn {
    private String loginName ;
    private String loginPwd ;

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getLoginPwd() {
        return loginPwd;
    }

    public void setLoginPwd(String loginPwd) {
        this.loginPwd = loginPwd;
    }
}
