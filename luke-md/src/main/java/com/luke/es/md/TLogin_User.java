package com.luke.es.md;

import com.luke.es.tool.model._M;

import javax.persistence.Entity;

@Entity
public class TLogin_User extends _M {

    Long vOutUserId;
    String _token;
    String loginName;
    String loginPwd;
    String name;

    Long storeId;
    String storeName;

    Long roleId;
    String roleName;

    /**
     * 程序功能具体权限
     */
    String itemIds;
    /**
     * 财务功能具体权限
     */
    String cwIds;

    public Long getvOutUserId() {
        return vOutUserId;
    }

    public void setvOutUserId(Long vOutUserId) {
        this.vOutUserId = vOutUserId;
    }

    public String get_token() {
        return _token;
    }

    public void set_token(String _token) {
        this._token = _token;
    }

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

    public String getStoreName() {
        return storeName;
    }

    public void setStoreName(String storeName) {
        this.storeName = storeName;
    }

    public Long getRoleId() {
        return roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getItemIds() {
        return itemIds;
    }

    public void setItemIds(String itemIds) {
        this.itemIds = itemIds;
    }

    public String getCwIds() {
        return cwIds;
    }

    public void setCwIds(String cwIds) {
        this.cwIds = cwIds;
    }
}
