package com.luke.es.md.kc;

import com.luke.es.tool.model._M;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Index;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(indexes = {
        @Index(columnList = "goodsId"),
        @Index(columnList = "storeId")
})
public class TK_KCTime extends _M {

    Long goodsId ;
    Long storeId ;
    Float sph ;
    Float cyl ;

    /**生产日期*/
    Date scrq ;
    /**有效期 （多少个月）*/
    Integer yxq ;

    /**过期时间*/
    Date gqsj ;

    /**批号*/
    String ph ;

    public String getPh() {
        return ph;
    }

    public void setPh(String ph) {
        this.ph = ph;
    }

    @Column(length = 40)
    String uuid ;

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public Long getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }

    public Long getStoreId() {
        return storeId;
    }

    public void setStoreId(Long storeId) {
        this.storeId = storeId;
    }

    public Float getSph() {
        return sph;
    }

    public void setSph(Float sph) {
        this.sph = sph;
    }

    public Float getCyl() {
        return cyl;
    }

    public void setCyl(Float cyl) {
        this.cyl = cyl;
    }

    public Date getScrq() {
        return scrq;
    }

    public void setScrq(Date scrq) {
        this.scrq = scrq;
    }

    public Integer getYxq() {
        return yxq;
    }

    public void setYxq(Integer yxq) {
        this.yxq = yxq;
    }

    public Date getGqsj() {
        return gqsj;
    }

    public void setGqsj(Date gqsj) {
        this.gqsj = gqsj;
    }
}
