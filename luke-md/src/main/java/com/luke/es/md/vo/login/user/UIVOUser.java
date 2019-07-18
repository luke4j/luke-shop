package com.luke.es.md.vo.login.user;

import com.luke.es.md.TU_Info;
import com.luke.es.md.TU_User;
import com.luke.es.tool.annotation.QLParam;
import com.luke.es.tool.annotation.QLParam_GX;
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
        this.birthday = info.getBirthday() == null?null:info.getBirthday().getTime();
        this.sex = info.getSex() ;
        this.zw = info.getZw() ;
        this.tel = info.getTel() ;
        this.inTime = info.getInTime()==null?null:info.getInTime().getTime() ;
        this.outTime = info.getOutTime()==null?null:info.getOutTime().getTime() ;
        this.xl = info.getXl() ;
        this.zzmm = info.getZzmm() ;
        this.store = storeName ;
        this.role = roleName ;
        this.cwRole = cwRoleName ;
    } ;

    @QLParam(bm = "u")
    private Long id;
    @QLParam(bm = "u")
    private String loginName;
    @QLParam(bm = "i")
    private String name;
    @QLParam(bm = "i")
    private Long storeId;
    private String store;
    @QLParam(bm = "i")
    private Long roleId;
    private String role;
    @QLParam(bm = "i")
    private Long cwRoleId;
    private String cwRole;
    private Long birthday;
    @QLParam(bm = "i")
    private String sex;
    @QLParam(bm = "i")
    private String zw;
    @QLParam(bm = "i")
    private String tel;
    @QLParam(bm = "i")
    private Long inTime;
    private Long outTime;
    @QLParam(bm = "i")
    private String xl;
    @QLParam(bm = "i")
    private String zzmm ;

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

    public String getStore() {
        return store;
    }

    public void setStore(String store) {
        this.store = store;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getCwRole() {
        return cwRole;
    }

    public void setCwRole(String cwRole) {
        this.cwRole = cwRole;
    }

    public Long getBirthday() {
        return birthday;
    }

    public void setBirthday(Long birthday) {
        this.birthday = birthday;
    }

    public Long getInTime() {
        return inTime;
    }

    public void setInTime(Long inTime) {
        this.inTime = inTime;
    }

    public Long getOutTime() {
        return outTime;
    }

    public void setOutTime(Long outTime) {
        this.outTime = outTime;
    }
}
