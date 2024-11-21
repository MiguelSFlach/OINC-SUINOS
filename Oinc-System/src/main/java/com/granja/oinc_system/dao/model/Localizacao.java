package com.granja.oinc_system.dao.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Localizacao")
public class Localizacao {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idloc")
    private Long idLoc;

    @Column(name = "tiploc", nullable = false)
    private Integer tipLoc;

    @Column(name = "numloc", nullable = false)
    private Integer numLoc;

    @OneToMany(mappedBy = "localizacao")
    private List<Animal> animais;

	public Long getIdLoc() {
		return idLoc;
	}

	public void setIdLoc(Long idLoc) {
		this.idLoc = idLoc;
	}

	public Integer getTipLoc() {
		return tipLoc;
	}

	public void setTipLoc(Integer tipLoc) {
		this.tipLoc = tipLoc;
	}

	public Integer getNumLoc() {
		return numLoc;
	}

	public void setNumLoc(Integer numLoc) {
		this.numLoc = numLoc;
	}

	public List<Animal> getAnimais() {
		return animais;
	}

	public void setAnimais(List<Animal> animais) {
		this.animais = animais;
	}

    
}

