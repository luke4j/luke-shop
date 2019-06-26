package com.luke.es.login.service.impl;

import com.luke.es.login.dao.ILoginDao;
import com.luke.es.login.service.ILoginService;
import com.luke.es.md.*;
import com.luke.es.md.vo.login.VOInLogin;
import com.luke.es.tool.exception.AppException;
import com.luke.es.tool.tl.LK;
import com.luke.es.tool.tl.LKMap;
import com.luke.es.tool.vo.VOutUser;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.List;

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
            String token = "token-"+LK.uuid() ;
            VOutUser ru = new VOutUser() ;
            BeanUtils.copyProperties(user,ru);
            TU_Info info = this.loginDao.findUserInfo(user.getId()) ;
            if(info!=null) {
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
            this.loginDao.setRedisValueAndEX(token,LK.ObjToJsonStr(ru),60*60*8l) ;
            ru.set_token(token);
            return ru ;
        }
       throw AppException.create("登录失败："+vo.getLoginName()) ;
    }

    public void logout(String token) throws Exception {
        this.loginDao.delRedisValueByKey(token) ;
    }
}
