package com.granja.oinc_system.dao.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "leitao")
public class Leitao {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "leiid")
    private Long leiId;

    @Column(name = "pcaid", nullable = false)
    private Integer pcaId;

    @Column(name = "peslei", nullable = false)
    private Long pesLei;

    @Temporal(TemporalType.DATE)
    @Column(name = "datnaslei", nullable = false)
    private Date datNasLei;

    @ManyToOne
    @JoinColumn(name = "animal_id", nullable = false)
    private Animal animal;

    @ManyToOne
    @JoinColumn(name = "venda_id", nullable = true) // Permitir null caso o leitão não tenha sido vendido ainda
    private Venda venda;
    
    @Column(name = "venda_associada", nullable = false)
    private boolean vendaAssociada = false; // Default: não vendido

    public boolean isVendaAssociada() {
        return vendaAssociada;
    }

    public void setVendaAssociada(boolean vendaAssociada) {
        this.vendaAssociada = vendaAssociada;
    }


    // Getters e Setters
    public Long getLeiId() {
        return leiId;
    }

    public void setLeiId(Long leiId) {
        this.leiId = leiId;
    }

    public Integer getPcaId() {
        return pcaId;
    }

    public void setPcaId(Integer pcaId) {
        this.pcaId = pcaId;
    }

    public Long getPesLei() {
        return pesLei;
    }

    public void setPesLei(Long pesLei) {
        this.pesLei = pesLei;
    }

    public Date getDatNasLei() {
        return datNasLei;
    }

    public void setDatNasLei(Date datNasLei) {
        this.datNasLei = datNasLei;
    }

    public Animal getAnimal() {
        return animal;
    }

    public void setAnimal(Animal animal) {
        this.animal = animal;
    }

    public Venda getVenda() {
        return venda;
    }

    public void setVenda(Venda venda) {
        this.venda = venda;
    }
}
