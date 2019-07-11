package com.luke.es.tool.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
@MappedSuperclass

public class _M implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    protected Long id ;

    @Column(nullable = false)
    private Boolean _isDel = false;

    @Column(nullable = false)
    @JsonIgnore
    private Date _wtime = new Date() ;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Boolean get_isDel() {
        return _isDel;
    }

    public void set_isDel(Boolean _isDel) {
        this._isDel = _isDel;
    }

    public Date get_wtime() {
        return _wtime;
    }

    public void set_wtime(Date _wtime) {
        this._wtime = _wtime;
    }
}
