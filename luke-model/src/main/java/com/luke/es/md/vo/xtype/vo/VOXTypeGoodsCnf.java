package com.luke.es.md.vo.xtype.vo;


public class VOXTypeGoodsCnf  {
    public VOXTypeGoodsCnf(){

    }


    public VOXTypeGoodsCnf(Long id, Long typeKindId, String keyName, String keyTitle, String keyEleType, String keyEleDefault, String keyEleDefaultValues) {
        this.id = id;
        this.typeKindId = typeKindId;
        this.keyName = keyName;
        this.keyTitle = keyTitle;
        this.keyEleType = keyEleType;
        this.keyEleDefault = keyEleDefault;
        this.keyEleDefaultValues = keyEleDefaultValues;
    }

    Long id ;
    Long typeKindId ;
    String keyName ;
    String keyTitle ;
    String keyEleType ;
    String keyEleDefault ;
    String keyEleDefaultValues ;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getTypeKindId() {
        return typeKindId;
    }

    public void setTypeKindId(Long typeKindId) {
        this.typeKindId = typeKindId;
    }

    public String getKeyName() {
        return keyName;
    }

    public void setKeyName(String keyName) {
        this.keyName = keyName;
    }

    public String getKeyTitle() {
        return keyTitle;
    }

    public void setKeyTitle(String keyTitle) {
        this.keyTitle = keyTitle;
    }

    public String getKeyEleType() {
        return keyEleType;
    }

    public void setKeyEleType(String keyEleType) {
        this.keyEleType = keyEleType;
    }

    public String getKeyEleDefault() {
        return keyEleDefault;
    }

    public void setKeyEleDefault(String keyEleDefault) {
        this.keyEleDefault = keyEleDefault;
    }

    public String getKeyEleDefaultValues() {
        return keyEleDefaultValues;
    }

    public void setKeyEleDefaultValues(String keyEleDefaultValues) {
        this.keyEleDefaultValues = keyEleDefaultValues;
    }
}
