package com.luke.es.md;

import com.luke.es.tool.model._M;

import javax.persistence.Entity;

@Entity
public class TCW_ProofList extends _M {
    /**凭证ID*/
    Long proofId ;
    /**会计科目ID*/
    Long kmId ;
    /**金额*/
    Double amount ;
    /**发票ID*/
    Long billId ;
    /**行号*/
    Integer lineNo ;

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

    public Long getBillId() {
        return billId;
    }

    public void setBillId(Long billId) {
        this.billId = billId;
    }

    public Integer getLineNo() {
        return lineNo;
    }

    public void setLineNo(Integer lineNo) {
        this.lineNo = lineNo;
    }

}
