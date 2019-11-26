package com.luke.es.md;

import com.luke.es.tool.model._M;

import javax.persistence.Entity;

/**
 * 工资
 */
@Entity
public class TU_GZ extends _M {
    Long userId ;
    Long money ;
    Boolean isTry ;
    /**
     * 实发比例
     */
    Float bl = 1f ;

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getMoney() {
        return money;
    }

    public void setMoney(Long money) {
        this.money = money;
    }

    public Boolean getTry() {
        return isTry;
    }

    public void setTry(Boolean aTry) {
        isTry = aTry;
    }

    public Float getBl() {
        return bl;
    }

    public void setBl(Float bl) {
        this.bl = bl;
    }
}
