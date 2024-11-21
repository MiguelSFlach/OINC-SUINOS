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
@Table(name = "Registro")
public class Registro {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "logid")
    private Long logId;

    @Column(name = "logaca", nullable = false, columnDefinition = "text")
    private String logAca;

    @Column(name = "logdat", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date logDat;

    @ManyToOne
    @JoinColumn(name = "Usuariousuid", nullable = false)
    private Usuario usuario;

	public Long getLogId() {
		return logId;
	}

	public void setLogId(Long logId) {
		this.logId = logId;
	}

	public String getLogAca() {
		return logAca;
	}

	public void setLogAca(String logAca) {
		this.logAca = logAca;
	}

	public Date getLogDat() {
		return logDat;
	}

	public void setLogDat(Date logDat) {
		this.logDat = logDat;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

    
}

