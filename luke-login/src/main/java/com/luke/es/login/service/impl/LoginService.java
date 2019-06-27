package com.luke.es.login.service.impl;

import com.luke.es.login.dao.ILoginDao;
import com.luke.es.login.service.ILoginService;
import com.luke.es.md.*;
import com.luke.es.md.vo.login.VOInLogin;
import com.luke.es.tool.exception.AppException;
import com.luke.es.tool.tl.Assertion;
import com.luke.es.tool.tl.LK;
import com.luke.es.tool.vo.VOutUser;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;

@Service
public class LoginService implements ILoginService {

    @Resource
    ILoginDao loginDao ;

    public Boolean isLogin(String token) throws Exception {
        VOutUser outUser = this.loginDao.getVOutUser(token) ;
        if(outUser!=null)
             return true;
        else{
            return false ;
        }
    }

    @Transactional
    public VOutUser login(VOInLogin vo) throws Exception {
       TU_User user = this.loginDao.login(vo) ;
        if(user!=null){
            String token = "token-"+LK.uuid()+"_"+user.getId() ;
            VOutUser ru = new VOutUser() ;

            ru.setLoginName(user.getLoginName());

            TU_Info info = this.loginDao.findUserInfo(user.getId()) ;
            if(info!=null) {
                ru.setName(info.getName());
                TS_Store store = this.loginDao.findUserStore(info.getStoreId());
                if (store != null) {
                    ru.setStoreId(store.getId());
                    ru.setStoreName(store.getName());
                }
                TU_Role role = this.loginDao.findUserRole(info.getRoleId());
                if (role != null) {
                    ru.setRoleId(role.getId());
                    ru.setRoleName(role.getName());
                }
                TU_CWRole cwRole = this.loginDao.findUserCWRole(info.getCwRoleId());
                if (cwRole != null) {
                    ru.setCwIds(cwRole.getCwIds());
                }
            }
            ru.set_token(token);
            this.loginDao.setRedisValueAndEX(token,LK.ObjToJsonStr(ru),60*60*8l) ;
            return ru ;
        }
       throw AppException.create("登录失败："+vo.getLoginName()) ;
    }

    public void logout(String token) throws Exception {
        this.loginDao.delRedisValueByKey(token) ;
    }

    public VOutUser getCurrentUserByToken(String token) throws Exception {
        if(token.equals(""))
            Assertion.Error("请登录");
        return this.loginDao.getVOutUser(token) ;
    }
}
