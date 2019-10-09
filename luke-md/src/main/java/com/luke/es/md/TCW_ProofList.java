package com.luke.es.md;

import com.luke.es.tool.model._M;

import javax.persistence.Entity;

@Entity
public class TCW_ProofList extends _M {
    /**凭证ID*/
    Long proofId ;
    /**会计科目ID*/
    Long kmId ;
    /**汇率*/
    Double exchangeRate = 1D;
    /**币种*/
    String currencyType = "人民币" ;
    /**金额*/
    Double amount ;
    /**行号*/
    Integer lineNo ;

    public Double getExchangeRate() {
        return exchangeRate;
    }

    public void setExchangeRate(Double exchangeRate) {
        this.exchangeRate = exchangeRate;
    }

    public String getCurrencyType() {
        return currencyType;
    }

    public void setCurrencyType(String currencyType) {
        this.currencyType = currencyType;
    }

    public Long getProofId() {
        return proofId;
    }

    public void setProofId(Long proofId) {
        this.proofId = proofId;
    }

    public Long getKmId() {
        return kmId;
    }

    public void setKmId(Long kmId) {
        this.kmId = kmId;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public Integer getLineNo() {
        return lineNo;
    }

    public void setLineNo(Integer lineNo) {
        this.lineNo = lineNo;
    }

}
