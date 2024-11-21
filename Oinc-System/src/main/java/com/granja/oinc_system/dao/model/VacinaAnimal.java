package com.granja.oinc_system.dao.model;

import javax.persistence.*;

import java.util.Date;

@Entity
@Table(name = "Vacina_Animal")
public class VacinaAnimal {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idvacani")
    private Long idVacAni;

    @Column(name = "datvac", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date datVac;

    @ManyToOne
    @JoinColumn(name = "Animalaniid", nullable = false)
    private Animal animal;

    @ManyToOne
    @JoinColumn(name = "Vacina_vacid", nullable = false)
    private Vacina vacina;

	public Long getIdVacAni() {
		return idVacAni;
	}

	public void setIdVacAni(Long idVacAni) {
		this.idVacAni = idVacAni;
	}

	public Date getDatVac() {
		return datVac;
	}

	public void setDatVac(Date datVac) {
		this.datVac = datVac;
	}

	public Animal getAnimal() {
		return animal;
	}

	public void setAnimal(Animal animal) {
		this.animal = animal;
	}

	public Vacina getVacina() {
		return vacina;
	}

	public void setVacina(Vacina vacina) {
		this.vacina = vacina;
	}

    
}

