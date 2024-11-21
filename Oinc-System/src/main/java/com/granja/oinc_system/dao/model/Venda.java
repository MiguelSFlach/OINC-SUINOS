package com.granja.oinc_system.dao.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Venda {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long venid;

    @NotNull
    private LocalDate datven;

    @NotNull
    private BigDecimal precoUnitario;

    @NotNull
    private BigDecimal total;

    private boolean confirmada = false;

    @OneToMany(mappedBy = "venda", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Leitao> leitoes = new ArrayList<>();

    // Getters e Setters
    public Long getVenid() {
        return venid;
    }

    public void setVenid(Long venid) {
        this.venid = venid;
    }

    public LocalDate getDatven() {
        return datven;
    }

    public void setDatven(LocalDate datven) {
        this.datven = datven;
    }

    public BigDecimal getPrecoUnitario() {
        return precoUnitario;
    }

    public void setPrecoUnitario(BigDecimal precoUnitario) {
        this.precoUnitario = precoUnitario;
    }

    public BigDecimal getTotal() {
        return total;
    }

    public void setTotal(BigDecimal total) {
        this.total = total;
    }

    public boolean isConfirmada() {
        return confirmada;
    }

    public void setConfirmada(boolean confirmada) {
        this.confirmada = confirmada;
    }

    public List<Leitao> getLeitoes() {
        return leitoes;
    }

    public void setLeitoes(List<Leitao> leitoes) {
        this.leitoes = leitoes;
    }

    public void adicionarLeitao(Leitao leitao) {
        this.leitoes.add(leitao);
        leitao.setVenda(this);
    }
}
