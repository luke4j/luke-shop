package com.luke.es.md;

import com.luke.es.tool.model._M;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class TCW_Ls extends _M {
    /**发票号*/
    Long BillId ;
    /**金额*/
    @Column(nullable = false)
    Double amount ;
    /**出纳ID*/
    @Column(nullable = false)
    Long cashierId ;
    /**备注*/
    @Column(length = 50,nullable = false)
    String notes ;

    public Long getBillId() {
        return BillId;
    }

    public void setBillId(Long billId) {
        BillId = billId;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public Long getCashierId() {
        return cashierId;
    }

    public void setCashierId(Long cashierId) {
        this.cashierId = cashierId;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }
}
