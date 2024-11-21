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
@Table(name = "Vacina")
public class Vacina {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "vacid")
    private Long vacId;

    @Column(name = "nomvac", nullable = false, length = 100)
    private String nomVac;

    @Column(name = "desvac", nullable = false)
    private String desVac;

    @OneToMany(mappedBy = "vacina")
    private List<VacinaAnimal> vacinaAnimais;

	public Long getVacId() {
		return vacId;
	}

	public void setVacId(Long vacId) {
		this.vacId = vacId;
	}

	public String getNomVac() {
		return nomVac;
	}

	public void setNomVac(String nomVac) {
		this.nomVac = nomVac;
	}

	public String getDesVac() {
		return desVac;
	}

	public void setDesVac(String desVac) {
		this.desVac = desVac;
	}

	public List<VacinaAnimal> getVacinaAnimais() {
		return vacinaAnimais;
	}

	public void setVacinaAnimais(List<VacinaAnimal> vacinaAnimais) {
		this.vacinaAnimais = vacinaAnimais;
	}

    
}

