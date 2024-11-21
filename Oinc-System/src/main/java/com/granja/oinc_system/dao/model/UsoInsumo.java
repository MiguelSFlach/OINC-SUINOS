package com.granja.oinc_system.dao.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "Uso_Insumo")
@IdClass(UsoInsumoId.class)
public class UsoInsumo implements Serializable {

    @Id
    @ManyToOne
    @JoinColumn(name = "Insumoinsid", nullable = false)
    private Insumo insumo;

    @Id
    @ManyToOne
    @JoinColumn(name = "Animalaniid", nullable = false)
    private Animal animal;

    @Id
    @Column(name = "idusuins", nullable = false)
    private Integer idUsuIns;

    @Column(name = "datuso", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date datUso;

    @Column(name = "qtdusoins", nullable = false)
    private Float qtdUsoIns;

    @Column(name = "desusoins", nullable = false, columnDefinition = "text")
    private String desUsoIns;

	public Insumo getInsumo() {
		return insumo;
	}

	public void setInsumo(Insumo insumo) {
		this.insumo = insumo;
	}

	public Animal getAnimal() {
		return animal;
	}

	public void setAnimal(Animal animal) {
		this.animal = animal;
	}

	public Integer getIdUsuIns() {
		return idUsuIns;
	}

	public void setIdUsuIns(Integer idUsuIns) {
		this.idUsuIns = idUsuIns;
	}

	public Date getDatUso() {
		return datUso;
	}

	public void setDatUso(Date datUso) {
		this.datUso = datUso;
	}

	public Float getQtdUsoIns() {
		return qtdUsoIns;
	}

	public void setQtdUsoIns(Float qtdUsoIns) {
		this.qtdUsoIns = qtdUsoIns;
	}

	public String getDesUsoIns() {
		return desUsoIns;
	}

	public void setDesUsoIns(String desUsoIns) {
		this.desUsoIns = desUsoIns;
	}

    
}

