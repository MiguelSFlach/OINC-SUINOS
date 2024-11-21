package com.granja.oinc_system.dao.model;

import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Granja")
public class Granja {

    @Id
    @Column(name = "cnpj")
    private Long cnpj;

    @Column(name = "nomgra", nullable = false)
    private String nomgra; // Nome atualizado para corresponder ao banco

    @Column(name = "telgran", nullable = false)
    private Integer telgran;

    @Column(name = "qtdanigra", nullable = false)
    private Integer qtdanigra;

    @Column(name = "tipgra", nullable = false)
    private Integer tipgra;

    @OneToMany(mappedBy = "granja", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Usuario> usuarios;

    // Getters e Setters
    public Long getCnpj() {
        return cnpj;
    }

    public void setCnpj(Long cnpj) {
        this.cnpj = cnpj;
    }

    public String getNomgra() {
        return nomgra;
    }

    public void setNomgra(String nomgra) {
        this.nomgra = nomgra;
    }

    public Integer getTelgran() {
        return telgran;
    }

    public void setTelgran(Integer telgran) {
        this.telgran = telgran;
    }

    public Integer getQtdanigra() {
        return qtdanigra;
    }

    public void setQtdanigra(Integer qtdanigra) {
        this.qtdanigra = qtdanigra;
    }

    public Integer getTipgra() {
        return tipgra;
    }

    public void setTipgra(Integer tipgra) {
        this.tipgra = tipgra;
    }

    public List<Usuario> getUsuarios() {
        return usuarios;
    }

    public void setUsuarios(List<Usuario> usuarios) {
        this.usuarios = usuarios;
    }
}
