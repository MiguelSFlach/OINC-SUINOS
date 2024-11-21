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
@Table(name = "Parto")
public class Parto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "parid")
    private Long parId;

    @Column(name = "datpar", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date datPar;

    @Column(name = "vasrec", nullable = false)
    private String vasRec;

    @ManyToOne
    @JoinColumn(name = "Animalaniid", nullable = false)
    private Animal animal;

    @Column(name = "morqtdpar")
    private Integer morQtdPar;

	public Long getParId() {
		return parId;
	}

	public void setParId(Long parId) {
		this.parId = parId;
	}

	public Date getDatPar() {
		return datPar;
	}

	public void setDatPar(Date datPar) {
		this.datPar = datPar;
	}

	public String getVasRec() {
		return vasRec;
	}

	public void setVasRec(String vasRec) {
		this.vasRec = vasRec;
	}

	public Animal getAnimal() {
		return animal;
	}

	public void setAnimal(Animal animal) {
		this.animal = animal;
	}

	public Integer getMorQtdPar() {
		return morQtdPar;
	}

	public void setMorQtdPar(Integer morQtdPar) {
		this.morQtdPar = morQtdPar;
	}

    
}

