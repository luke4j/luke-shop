package com.luke.es.login.service.impl;

import com.luke.es.login.dao.ILoginDao;
import com.luke.es.login.service.ILoginService;
import com.luke.es.md.*;
import com.luke.es.md.vo.login.VOInLogin;
import com.luke.es.tool.exception.AppException;
import com.luke.es.tool.tl.Assertion;
import com.luke.es.tool.tl.LK;
import com.luke.es.tool.vo.VOutUser;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Service
public class LoginService implements ILoginService {

    @Resource
    ILoginDao loginDao ;

    @Value("${luke.login.use}")
    String luke_login_use = "redis";

    public Boolean isLogin(String token, String luke_login_use, HttpServletRequest request) throws Exception {
        VOutUser outUser = null;
        if ("redis".equals(luke_login_use)) {
            outUser = this.loginDao.getVOutUser(token);
        } else if ("db".equals(luke_login_use)) {
            outUser = this.loginDao.getVOutUserFromDB(token);
        } else if ("session".equals(luke_login_use)) {
            outUser = (VOutUser) request.getAttribute(token);
        }
        if(outUser!=null)
            return true;
        else{
            return false ;
        }
    }

    @Transactional
    public VOutUser login(VOInLogin vo, HttpServletRequest request) throws Exception {
       TU_User user = this.loginDao.login(vo) ;
        if(user!=null){
            String token = "token-"+LK.uuid()+"_"+user.getId() ;
            VOutUser vOutUser = new VOutUser();
            vOutUser.setLoginName(user.getLoginName());
            TU_Info info = this.loginDao.findUserInfo(user.getId()) ;
            if(info!=null) {
                vOutUser.setName(info.getName());
                TS_Store store = this.loginDao.findUserStore(info.getStoreId());
                if (store != null) {
                    vOutUser.setStoreId(store.getId());
                    vOutUser.setStoreName(store.getName());
                }
                TU_Role role = this.loginDao.findUserRole(info.getRoleId());
                if (role != null) {
                    vOutUser.setRoleId(role.getId());
                    vOutUser.setRoleName(role.getName());
                }
                TU_CWRole cwRole = this.loginDao.findUserCWRole(info.getCwRoleId());
                if (cwRole != null) {
                    vOutUser.setCwIds(cwRole.getCwIds());
                }
            }
            vOutUser.set_token(token);
            if ("redis".equals(luke_login_use)) {
                this.loginDao.setRedisValueAndEX(token, LK.ObjToJsonStr(vOutUser), 60 * 60 * 8l);
            } else if ("db".equals(luke_login_use)) {
                this.loginDao.saveLoginToDB(vOutUser);
            } else if ("session".equals(luke_login_use)) {
                request.getSession().setAttribute("token", vOutUser);
            }
            this.loginDao.setRedisValueAndEX(token, LK.ObjToJsonStr(vOutUser), 60 * 60 * 8l);
            return vOutUser;
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

    public List<TU_Item> loadMenu(VOutUser user) throws Exception {
        if(user.getRoleId()==null){
            return new ArrayList<TU_Item>();
        }else{
            TU_Role role = this.loginDao.get(TU_Role.class,user.getRoleId()) ;
            List<TU_Item> items = this.loginDao.loadMenu(role.getItemIds()) ;
            return items ;
        }
    }
}
