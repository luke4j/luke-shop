package com.luke.es.md;

import com.luke.es.tool.model._M;

import javax.persistence.Column;
import javax.persistence.Entity;
import java.util.Date;

@Entity
public class TU_Info extends _M {

    Long userId ;

    /**
     * 站点ID
     */
    Long storeId ;
    /**
     * 角色ID
     */
    Long roleId ;

    /**
     * 可以使用的财务业务
     */
    @Column(length = 3000)
    String cw ;

    Date birthday ;

    @Column(length = 4)
    String sex ;

    /**
     * 职务
     */
    @Column(length = 40)
    String zw ;

    @Column(length = 20)
    String tel ;

    /**
     * 入职时间
     */
    Date inTime ;

    /**
     * 离职时间
     */
    Date outTime ;

    /**
     * 学历
     */
    @Column(length = 10)
    String xl ;

    /**
     * 政治面貌
     */
    @Column(length = 10)
    String zzmm ;

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
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

    public String getCw() {
        return cw;
    }

    public void setCw(String cw) {
        this.cw = cw;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
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

    public Date getInTime() {
        return inTime;
    }

    public void setInTime(Date inTime) {
        this.inTime = inTime;
    }

    public Date getOutTime() {
        return outTime;
    }

    public void setOutTime(Date outTime) {
        this.outTime = outTime;
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
}
