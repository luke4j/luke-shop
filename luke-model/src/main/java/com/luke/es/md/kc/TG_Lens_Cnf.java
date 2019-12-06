package com.luke.es.md.kc;

import com.luke.es.tool.model._M;

import javax.persistence.Entity;
import javax.persistence.Index;
import javax.persistence.Table;

@Entity
@Table(indexes = {
        @Index(columnList = "goodsId")
})
public class TG_Lens_Cnf extends _M {
    Float maxSph ;
    Float minSph ;

    Float maxCyl ;
    Float minCyl ;

    Float sphPool ;
    Float cylPool ;

    Long goodsId ;

    public Float getMaxSph() {
        return maxSph;
    }

    public void setMaxSph(Float maxSph) {
        this.maxSph = maxSph;
    }

    public Float getMinSph() {
        return minSph;
    }

    public void setMinSph(Float minSph) {
        this.minSph = minSph;
    }

    public Float getMaxCyl() {
        return maxCyl;
    }

    public void setMaxCyl(Float maxCyl) {
        this.maxCyl = maxCyl;
    }

    public Float getMinCyl() {
        return minCyl;
    }

    public void setMinCyl(Float minCyl) {
        this.minCyl = minCyl;
    }

    public Float getSphPool() {
        return sphPool;
    }

    public void setSphPool(Float sphPool) {
        this.sphPool = sphPool;
    }

    public Float getCylPool() {
        return cylPool;
    }

    public void setCylPool(Float cylPool) {
        this.cylPool = cylPool;
    }

    public Long getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }
}
