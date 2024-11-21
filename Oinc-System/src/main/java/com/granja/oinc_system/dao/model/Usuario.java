package com.granja.oinc_system.dao.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Usuario")
public class Usuario {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "usuid")
	private Long usuId;

	@Column(name = "nomusu", nullable = false, length = 100)
	private String nomUsu;

	@Column(name = "emausu", nullable = false, length = 100, unique = true)
	private String emaUsu;

	@Column(name = "senusu", nullable = false, length = 255)
	private String senUsu;

	@Column(name = "tipusu", nullable = false)
	private Integer tipUsu;

	@Column(name = "cpfusu", nullable = false)
	private Long cpfUsu;

	@Column(name = "sexusu")
	private Integer sexUsu;

	@Column(name = "idausu")
	private Integer idaUsu;

	@ManyToOne(fetch = FetchType.LAZY) // Relacionamento com Granja
	@JoinColumn(name = "Granjacnpj", nullable = false)
	private Granja granja;

	public Long getUsuId() {
		return usuId;
	}

	public void setUsuId(Long usuId) {
		this.usuId = usuId;
	}

	public String getNomUsu() {
		return nomUsu;
	}

	public void setNomUsu(String nomUsu) {
		this.nomUsu = nomUsu;
	}

	public String getEmaUsu() {
		return emaUsu;
	}

	public void setEmaUsu(String emaUsu) {
		this.emaUsu = emaUsu;
	}

	public String getSenUsu() {
		return senUsu;
	}

	public void setSenUsu(String senUsu) {
		this.senUsu = senUsu;
	}

	public Integer getTipUsu() {
		return tipUsu;
	}

	public void setTipUsu(Integer tipUsu) {
		this.tipUsu = tipUsu;
	}

	public Long getCpfUsu() {
		return cpfUsu;
	}

	public void setCpfUsu(Long cpfUsu) {
		this.cpfUsu = cpfUsu;
	}

	public Integer getSexUsu() {
		return sexUsu;
	}

	public void setSexUsu(Integer sexUsu) {
		this.sexUsu = sexUsu;
	}

	public Integer getIdaUsu() {
		return idaUsu;
	}

	public void setIdaUsu(Integer idaUsu) {
		this.idaUsu = idaUsu;
	}

	public Granja getGranja() {
		return granja;
	}

	public void setGranja(Granja granja) {
		this.granja = granja;
	}
}
