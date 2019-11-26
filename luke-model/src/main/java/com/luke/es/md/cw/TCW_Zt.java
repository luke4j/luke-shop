package com.luke.es.md.cw;

import com.luke.es.tool.model._M;

import javax.persistence.Column;
import javax.persistence.Entity;
import java.util.Date;

@Entity
public class TCW_Zt extends _M {

    @Column(length = 60,nullable = false)
    String name ;
    /**启用时间*/
    Date startTime ;
    /**停用时间*/
    Date endTime ;
    /**负责人*/
    Long userId ;
    /**说明*/
    String notes ;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }
}
