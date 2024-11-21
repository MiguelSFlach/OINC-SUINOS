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
@Table(name = "Tratamento")
public class Tratamento {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "traid")
    private Long traId;

    @Column(name = "dattra", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date datTra;

    @Column(name = "destra", nullable = false, columnDefinition = "text")
    private String desTra;

    @Column(name = "medtra", nullable = false)
    private String medTra;

    @Column(name = "dostra", nullable = false)
    private String dosTra;

    @Column(name = "durtra", nullable = false)
    private Integer durTra;

    @ManyToOne
    @JoinColumn(name = "Animalaniid", nullable = false)
    private Animal animal;

	public Long getTraId() {
		return traId;
	}

	public void setTraId(Long traId) {
		this.traId = traId;
	}

	public Date getDatTra() {
		return datTra;
	}

	public void setDatTra(Date datTra) {
		this.datTra = datTra;
	}

	public String getDesTra() {
		return desTra;
	}

	public void setDesTra(String desTra) {
		this.desTra = desTra;
	}

	public String getMedTra() {
		return medTra;
	}

	public void setMedTra(String medTra) {
		this.medTra = medTra;
	}

	public String getDosTra() {
		return dosTra;
	}

	public void setDosTra(String dosTra) {
		this.dosTra = dosTra;
	}

	public Integer getDurTra() {
		return durTra;
	}

	public void setDurTra(Integer durTra) {
		this.durTra = durTra;
	}

	public Animal getAnimal() {
		return animal;
	}

	public void setAnimal(Animal animal) {
		this.animal = animal;
	}

    
}

