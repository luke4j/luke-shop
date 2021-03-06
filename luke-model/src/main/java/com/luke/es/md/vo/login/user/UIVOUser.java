package com.luke.es.md.vo.login.user;

import com.luke.es.md.TU_Info;
import com.luke.es.md.TU_User;
import com.luke.es.tool.tl.LK;
import com.luke.es.tool.vo.VOIn;

public class UIVOUser extends VOIn {

    public UIVOUser(){} ;
    public UIVOUser(TU_User user, TU_Info info,String storeName,String roleName,String cwRoleName){
        this.id = user.getId() ;
        this.loginName = user.getLoginName() ;
        this.name = info.getName() ;
        this.storeId = info.getStoreId() ;
        this.roleId = info.getRoleId() ;
        this.cwRoleId = info.getCwRoleId() ;
        this.birthday = info.getBirthday() == null?null: LK.DateToStr_YMD(info.getBirthday());
        this.sex = info.getSex() ;
        this.zw = info.getZw() ;
        this.tel = info.getTel() ;
        this.inTime = info.getInTime()==null?null:LK.DateToStr_YMD(info.getInTime()) ;
        this.outTime = info.getOutTime()==null?null:LK.DateToStr_YMD(info.getOutTime()) ;
        this.xl = info.getXl() ;
        this.zzmm = info.getZzmm() ;
        this.storeName = storeName ;
        this.roleName = roleName ;
        this.cwRoleName = cwRoleName ;
    } ;

    private Long id;
    private String loginName;
    private String name;
    private Long storeId;
    private String storeName;
    private Long roleId;
    private String roleName;
    private Long cwRoleId;
    private String cwRoleName;
    private String birthday;
    private String sex;
    private String zw;
    private String tel;
    private String inTime;
    private String outTime;
    private String xl;
    private String zzmm ;


    public String getStoreName() {
        return storeName;
    }

    public void setStoreName(String storeName) {
        this.storeName = storeName;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getCwRoleName() {
        return cwRoleName;
    }

    public void setCwRoleName(String cwRoleName) {
        this.cwRoleName = cwRoleName;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }



    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getStoreId() {
        return storeId;
    }

    public void setStoreId(Long storeId) {
        this.storeId = storeId;
    }

    public Long getRoleId() {
        return roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    public Long getCwRoleId() {
        return cwRoleId;
    }

    public void setCwRoleId(Long cwRoleId) {
        this.cwRoleId = cwRoleId;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getZw() {
        return zw;
    }

    public void setZw(String zw) {
        this.zw = zw;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getXl() {
        return xl;
    }

    public void setXl(String xl) {
        this.xl = xl;
    }

    public String getZzmm() {
        return zzmm;
    }

    public void setZzmm(String zzmm) {
        this.zzmm = zzmm;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getInTime() {
        return inTime;
    }

    public void setInTime(String inTime) {
        this.inTime = inTime;
    }

    public String getOutTime() {
        return outTime;
    }

    public void setOutTime(String outTime) {
        this.outTime = outTime;
    }
}
