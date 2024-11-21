package com.granja.oinc_system.dao.model;

import java.util.Date;
import java.util.List;
import javax.persistence.*;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "Animal")
public class Animal {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "aniid")
    private Long aniId;

    @Column(name = "tipani", nullable = false)
    private Integer tipAni;

    @Column(name = "datnas", nullable = false)
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-MM-dd") // Especifica o formato de data esperado
    private Date datNas;

    @Column(name = "pesani", nullable = false)
    private Long pesAni;

    @Column(name = "stsani", nullable = false)
    private Integer stsAni;

    @Column(name = "caumor", nullable = false)
    private String cauMor;

    @Column(name = "obsani")
    private String obsAni;

    @ManyToOne
    @JoinColumn(name = "Grupogruid", nullable = false)
    private Grupo grupo;

    @ManyToOne
    @JoinColumn(name = "Granjacnpj", nullable = false)
    private Granja granja;

    @ManyToOne
    @JoinColumn(name = "Localizacaoidloc", nullable = false)
    private Localizacao localizacao;

    @OneToMany(mappedBy = "animal")
    private List<Alimentacao> alimentacoes;

    // Getters e Setters
    public Long getAniId() {
        return aniId;
    }

    public void setAniId(Long aniId) {
        this.aniId = aniId;
    }

    public Integer getTipAni() {
        return tipAni;
    }

    public void setTipAni(Integer tipAni) {
        this.tipAni = tipAni;
    }

    public Date getDatNas() {
        return datNas;
    }

    public void setDatNas(Date datNas) {
        this.datNas = datNas;
    }

    public Long getPesAni() {
        return pesAni;
    }

    public void setPesAni(Long pesAni) {
        this.pesAni = pesAni;
    }

    public Integer getStsAni() {
        return stsAni;
    }

    public void setStsAni(Integer stsAni) {
        this.stsAni = stsAni;
    }

    public String getCauMor() {
        return cauMor;
    }

    public void setCauMor(String cauMor) {
        this.cauMor = cauMor;
    }

    public String getObsAni() {
        return obsAni;
    }

    public void setObsAni(String obsAni) {
        this.obsAni = obsAni;
    }

    public Grupo getGrupo() {
        return grupo;
    }

    public void setGrupo(Grupo grupo) {
        this.grupo = grupo;
    }

    public Granja getGranja() {
        return granja;
    }

    public void setGranja(Granja granja) {
        this.granja = granja;
    }

    public Localizacao getLocalizacao() {
        return localizacao;
    }

    public void setLocalizacao(Localizacao localizacao) {
        this.localizacao = localizacao;
    }

    public List<Alimentacao> getAlimentacoes() {
        return alimentacoes;
    }

    public void setAlimentacoes(List<Alimentacao> alimentacoes) {
        this.alimentacoes = alimentacoes;
    }
}
