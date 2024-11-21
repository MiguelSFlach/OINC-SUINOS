package com.granja.oinc_system.dao.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "grupo")
public class Grupo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "gruid")
    private Long gruId;

    @Column(name = "nomgru", nullable = false)  // Definindo como NOT NULL se necessário
    private String nomGru;

    @Column(name = "desgru", nullable = false) // Certifique-se de que o nome da coluna está correto
    private String desGru;

    @Column(name = "tipgru")
    private Integer tipGru;

    // Getters e setters
    public Long getGruId() {
        return gruId;
    }

    public void setGruId(Long gruId) {
        this.gruId = gruId;
    }

    public String getNomGru() {
        return nomGru;
    }

    public void setNomGru(String nomGru) {
        this.nomGru = nomGru;
    }

    public String getDesGru() {
        return desGru;
    }

    public void setDesGru(String desGru) {
        this.desGru = desGru;
    }

    public Integer getTipGru() {
        return tipGru;
    }

    public void setTipGru(Integer tipGru) {
        this.tipGru = tipGru;
    }
}

