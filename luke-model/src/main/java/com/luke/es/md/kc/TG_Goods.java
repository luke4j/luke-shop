package com.luke.es.md.kc;

import com.luke.es.tool.model._M;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Index;
import javax.persistence.Table;

@Entity
@Table(indexes = {
        @Index(columnList = "kindId"),
        @Index(columnList = "brandId"),
        @Index(columnList = "colorId"),
        @Index(columnList = "ggId")
})
public class TG_Goods extends _M {
    @Column(length = 60)
    private String name ;

    /**TG_Type.c_type=kind*/
    private Long kindId ;
    /**TG_Type.c_type=brand*/
    private Long brandId ;
    /**TG_Type.c_type=color*/
    private Long colorId ;
    /**TG_Type.c_type=gg*/
    private Long ggId ;

    Double pin ;
    Double pout ;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getKindId() {
        return kindId;
    }

    public void setKindId(Long kindId) {
        this.kindId = kindId;
    }

    public Long getBrandId() {
        return brandId;
    }

    public void setBrandId(Long brandId) {
        this.brandId = brandId;
    }

    public Long getColorId() {
        return colorId;
    }

    public void setColorId(Long colorId) {
        this.colorId = colorId;
    }

    public Long getGgId() {
        return ggId;
    }

    public void setGgId(Long ggId) {
        this.ggId = ggId;
    }

    public Double getPin() {
        return pin;
    }

    public void setPin(Double pin) {
        this.pin = pin;
    }

    public Double getPout() {
        return pout;
    }

    public void setPout(Double pout) {
        this.pout = pout;
    }
}
