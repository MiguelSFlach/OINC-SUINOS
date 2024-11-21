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
@Table(name = "Notificacao")
public class Notificacao {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "notid")
    private Long notId;

    @Column(name = "notdat", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date notDat;

    @Column(name = "notmen", nullable = false)
    private String notMen;

    @Column(name = "notlid", nullable = false)
    private Integer notLid;

    @ManyToOne
    @JoinColumn(name = "Usuariousuid", nullable = false)
    private Usuario usuario;

	public Long getNotId() {
		return notId;
	}

	public void setNotId(Long notId) {
		this.notId = notId;
	}

	public Date getNotDat() {
		return notDat;
	}

	public void setNotDat(Date notDat) {
		this.notDat = notDat;
	}

	public String getNotMen() {
		return notMen;
	}

	public void setNotMen(String notMen) {
		this.notMen = notMen;
	}

	public Integer getNotLid() {
		return notLid;
	}

	public void setNotLid(Integer notLid) {
		this.notLid = notLid;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

    
}

