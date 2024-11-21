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
@Table(name = "Inseminacao")
public class Inseminacao {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "insid")
    private Long insId;

    @Column(name = "tipins", nullable = false)
    private Integer tipIns;

    @Column(name = "datins", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date datIns;

    @Column(name = "sucins", nullable = false)
    private Integer sucIns;

    @Column(name = "tenins", nullable = false)
    private Integer tenIns;

    @ManyToOne
    @JoinColumn(name = "Animalaniid", nullable = false)
    private Animal animal;

    @Column(name = "datcio")
    @Temporal(TemporalType.DATE)
    private Date datCio;

    @Column(name = "obsins")
    private String obsIns;

	public Long getInsId() {
		return insId;
	}

	public void setInsId(Long insId) {
		this.insId = insId;
	}

	public Integer getTipIns() {
		return tipIns;
	}

	public void setTipIns(Integer tipIns) {
		this.tipIns = tipIns;
	}

	public Date getDatIns() {
		return datIns;
	}

	public void setDatIns(Date datIns) {
		this.datIns = datIns;
	}

	public Integer getSucIns() {
		return sucIns;
	}

	public void setSucIns(Integer sucIns) {
		this.sucIns = sucIns;
	}

	public Integer getTenIns() {
		return tenIns;
	}

	public void setTenIns(Integer tenIns) {
		this.tenIns = tenIns;
	}

	public Animal getAnimal() {
		return animal;
	}

	public void setAnimal(Animal animal) {
		this.animal = animal;
	}

	public Date getDatCio() {
		return datCio;
	}

	public void setDatCio(Date datCio) {
		this.datCio = datCio;
	}

	public String getObsIns() {
		return obsIns;
	}

	public void setObsIns(String obsIns) {
		this.obsIns = obsIns;
	}

    
}

