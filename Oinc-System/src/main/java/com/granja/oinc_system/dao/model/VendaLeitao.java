package com.granja.oinc_system.dao.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Venda_Leitao")
public class VendaLeitao {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "venda_id", nullable = false)
    private Long vendaId;

    @Column(name = "leitao_id", nullable = false)
    private Long leitaoId;

    public VendaLeitao() {}

    public VendaLeitao(Long vendaId, Long leitaoId) {
        this.vendaId = vendaId;
        this.leitaoId = leitaoId;
    }

    public Long getId() {
        return id;
    }

    public Long getVendaId() {
        return vendaId;
    }

    public void setVendaId(Long vendaId) {
        this.vendaId = vendaId;
    }

    public Long getLeitaoId() {
        return leitaoId;
    }

    public void setLeitaoId(Long leitaoId) {
        this.leitaoId = leitaoId;
    }
}
