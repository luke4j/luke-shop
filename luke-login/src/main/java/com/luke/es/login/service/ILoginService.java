package com.luke.es.login.service;

public interface ILoginService {
    Boolean isLogin(String token) throws Exception;
}
