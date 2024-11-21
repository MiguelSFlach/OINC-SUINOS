package com.granja.oinc_system.dao.model;

import javax.persistence.*;

@Entity
@Table(name = "Endereco")
public class Endereco {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idend")
    private Long idEnd;

    @Column(name = "ruaend", nullable = false)
    private String ruaEnd;

    @Column(name = "numend", nullable = false)
    private Integer numEnd;

    @Column(name = "cidend", nullable = false)
    private String cidEnd;

    @Column(name = "cepend", nullable = false)
    private Integer cepEnd;

    @OneToOne
    @JoinColumn(name = "Granjacnpj", nullable = false)
    private Granja granja;

	public Long getIdEnd() {
		return idEnd;
	}

	public void setIdEnd(Long idEnd) {
		this.idEnd = idEnd;
	}

	public String getRuaEnd() {
		return ruaEnd;
	}

	public void setRuaEnd(String ruaEnd) {
		this.ruaEnd = ruaEnd;
	}

	public Integer getNumEnd() {
		return numEnd;
	}

	public void setNumEnd(Integer numEnd) {
		this.numEnd = numEnd;
	}

	public String getCidEnd() {
		return cidEnd;
	}

	public void setCidEnd(String cidEnd) {
		this.cidEnd = cidEnd;
	}

	public Integer getCepEnd() {
		return cepEnd;
	}

	public void setCepEnd(Integer cepEnd) {
		this.cepEnd = cepEnd;
	}

	public Granja getGranja() {
		return granja;
	}

	public void setGranja(Granja granja) {
		this.granja = granja;
	}

    
}

