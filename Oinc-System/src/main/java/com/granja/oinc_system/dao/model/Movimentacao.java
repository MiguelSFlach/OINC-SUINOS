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
@Table(name = "Movimentacao")
public class Movimentacao {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "movid")
    private Long movId;

    @Column(name = "datmov", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date datMov;

    @Column(name = "tipmov", nullable = false)
    private Integer tipMov;

    @Column(name = "locorimov", nullable = false)
    private String locOriMov;

    @Column(name = "locdesmov", nullable = false)
    private String locDesMov;

    @Column(name = "motmov", nullable = false, columnDefinition = "text")
    private String motMov;

    @ManyToOne
    @JoinColumn(name = "Animalaniid", nullable = false)
    private Animal animal;

	public Long getMovId() {
		return movId;
	}

	public void setMovId(Long movId) {
		this.movId = movId;
	}

	public Date getDatMov() {
		return datMov;
	}

	public void setDatMov(Date datMov) {
		this.datMov = datMov;
	}

	public Integer getTipMov() {
		return tipMov;
	}

	public void setTipMov(Integer tipMov) {
		this.tipMov = tipMov;
	}

	public String getLocOriMov() {
		return locOriMov;
	}

	public void setLocOriMov(String locOriMov) {
		this.locOriMov = locOriMov;
	}

	public String getLocDesMov() {
		return locDesMov;
	}

	public void setLocDesMov(String locDesMov) {
		this.locDesMov = locDesMov;
	}

	public String getMotMov() {
		return motMov;
	}

	public void setMotMov(String motMov) {
		this.motMov = motMov;
	}

	public Animal getAnimal() {
		return animal;
	}

	public void setAnimal(Animal animal) {
		this.animal = animal;
	}

    
}

