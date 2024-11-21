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
@Table(name = "Financeiro")
public class Financeiro {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "finid")
    private Long finId;

    @Column(name = "datfin", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date datFin;

    @Column(name = "tipfin", nullable = false)
    private Integer tipFin;

    @Column(name = "valfin", nullable = false)
    private Long valFin;

    @Column(name = "desfin", nullable = false, columnDefinition = "text")
    private String desFin;

    @ManyToOne
    @JoinColumn(name = "Usuariousuid", nullable = false)
    private Usuario usuario;

	public Long getFinId() {
		return finId;
	}

	public void setFinId(Long finId) {
		this.finId = finId;
	}

	public Date getDatFin() {
		return datFin;
	}

	public void setDatFin(Date datFin) {
		this.datFin = datFin;
	}

	public Integer getTipFin() {
		return tipFin;
	}

	public void setTipFin(Integer tipFin) {
		this.tipFin = tipFin;
	}

	public Long getValFin() {
		return valFin;
	}

	public void setValFin(Long valFin) {
		this.valFin = valFin;
	}

	public String getDesFin() {
		return desFin;
	}

	public void setDesFin(String desFin) {
		this.desFin = desFin;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

    
}

