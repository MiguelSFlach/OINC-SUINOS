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
@Table(name = "Alimentacao")
public class Alimentacao {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "aliid")
    private Long aliId;

    @Column(name = "datali", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date dataLi;

    @Column(name = "tipali", nullable = false)
    private String tipAli;

    @Column(name = "qtdali", nullable = false)
    private Long qtdAli;

    @ManyToOne
    @JoinColumn(name = "Animalaniid", nullable = false)
    private Animal animal;

	public Long getAliId() {
		return aliId;
	}

	public void setAliId(Long aliId) {
		this.aliId = aliId;
	}

	public Date getDataLi() {
		return dataLi;
	}

	public void setDataLi(Date dataLi) {
		this.dataLi = dataLi;
	}

	public String getTipAli() {
		return tipAli;
	}

	public void setTipAli(String tipAli) {
		this.tipAli = tipAli;
	}

	public Long getQtdAli() {
		return qtdAli;
	}

	public void setQtdAli(Long qtdAli) {
		this.qtdAli = qtdAli;
	}

	public Animal getAnimal() {
		return animal;
	}

	public void setAnimal(Animal animal) {
		this.animal = animal;
	}

    
}

