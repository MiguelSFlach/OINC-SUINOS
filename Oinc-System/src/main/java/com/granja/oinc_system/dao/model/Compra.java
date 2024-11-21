package com.granja.oinc_system.dao.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "Compra")
public class Compra {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "comid")
    private Long comId;

    @Column(name = "comdat", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date comDat;

    @Column(name = "comdes", nullable = false)
    private String comDes;

    @Column(name = "comval", nullable = false)
    private Long comVal;

    @ManyToOne
    @JoinColumn(name = "Fornecedoresforid", nullable = false)
    private Fornecedor fornecedor;

    @ManyToMany
    @JoinTable(
        name = "Insumo_Compra",
        joinColumns = @JoinColumn(name = "Comprascomid"),
        inverseJoinColumns = @JoinColumn(name = "Insumoinsid")
    )
    private List<Insumo> insumos;

	public Long getComId() {
		return comId;
	}

	public void setComId(Long comId) {
		this.comId = comId;
	}

	public Date getComDat() {
		return comDat;
	}

	public void setComDat(Date comDat) {
		this.comDat = comDat;
	}

	public String getComDes() {
		return comDes;
	}

	public void setComDes(String comDes) {
		this.comDes = comDes;
	}

	public Long getComVal() {
		return comVal;
	}

	public void setComVal(Long comVal) {
		this.comVal = comVal;
	}

	public Fornecedor getFornecedor() {
		return fornecedor;
	}

	public void setFornecedor(Fornecedor fornecedor) {
		this.fornecedor = fornecedor;
	}

	public List<Insumo> getInsumos() {
		return insumos;
	}

	public void setInsumos(List<Insumo> insumos) {
		this.insumos = insumos;
	}

    
}

