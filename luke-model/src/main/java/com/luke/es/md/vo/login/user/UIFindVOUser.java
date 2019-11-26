package com.luke.es.md.vo.login.user;

import com.luke.es.tool.annotation.QLParam;
import com.luke.es.tool.annotation.QLParam_GX;
import com.luke.es.tool.annotation.QLParam_LX;
import com.luke.es.tool.vo.IVO;

public class UIFindVOUser implements IVO {

    @QLParam(bm = "u")
    private Long id;
    @QLParam(bm = "u",gx = QLParam_GX.Like)
    private String loginName;
    @QLParam(bm = "i",gx = QLParam_GX.Like)
    private String name;
    @QLParam(bm = "i")
    private Long storeId;
    @QLParam(bm = "i")
    private Long roleId;
    @QLParam(bm = "i")
    private Long cwRoleId;
    @QLParam(bm = "i",sx = "birthday" ,gx = QLParam_GX.GtEq,lx = QLParam_LX.Date)
    private Long birthday_s;
    @QLParam(bm = "i",sx = "birthday" ,gx = QLParam_GX.LtEq,lx = QLParam_LX.Date)
    private Long birthday_e;
    @QLParam(bm = "i")
    private String sex;
    @QLParam(bm = "i")
    private String zw;
    @QLParam(bm = "i")
    private String tel;
    @QLParam(bm = "i",sx = "inTime",gx = QLParam_GX.GtEq,lx = QLParam_LX.Date)
    private Long inTime_s;
    @QLParam(bm = "i",sx = "inTime",gx = QLParam_GX.LtEq,lx = QLParam_LX.Date)
    private Long inTime_e;
    @QLParam(bm = "i",sx = "outTime",gx = QLParam_GX.GtEq,lx = QLParam_LX.Date)
    private Long outTime_s;
    @QLParam(bm = "i",sx = "outTime",gx = QLParam_GX.LtEq,lx = QLParam_LX.Date)
    private Long outTime_e;
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

    public Long getBirthday_s() {
        return birthday_s;
    }

    public void setBirthday_s(Long birthday_s) {
        this.birthday_s = birthday_s;
    }

    public Long getBirthday_e() {
        return birthday_e;
    }

    public void setBirthday_e(Long birthday_e) {
        this.birthday_e = birthday_e;
    }

    public Long getInTime_s() {
        return inTime_s;
    }

    public void setInTime_s(Long inTime_s) {
        this.inTime_s = inTime_s;
    }

    public Long getInTime_e() {
        return inTime_e;
    }

    public void setInTime_e(Long inTime_e) {
        this.inTime_e = inTime_e;
    }

    public Long getOutTime_s() {
        return outTime_s;
    }

    public void setOutTime_s(Long outTime_s) {
        this.outTime_s = outTime_s;
    }

    public Long getOutTime_e() {
        return outTime_e;
    }

    public void setOutTime_e(Long outTime_e) {
        this.outTime_e = outTime_e;
    }
}
