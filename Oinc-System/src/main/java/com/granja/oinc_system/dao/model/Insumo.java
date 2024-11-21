package com.granja.oinc_system.dao.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Insumo")
public class Insumo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "insid")
    private Long insId;

    @Column(name = "nomins", nullable = false, length = 100)
    private String nomIns;

    @Column(name = "desins", nullable = false, columnDefinition = "text")
    private String desIns;

    @Column(name = "qtdins", nullable = false)
    private Long qtdIns;

    @Column(name = "undins", nullable = false)
    private String undIns;

    @ManyToMany(mappedBy = "insumos")
    private List<Compra> compras;

    @OneToMany(mappedBy = "insumo")
    private List<UsoInsumo> usosInsumo;

	public Long getInsId() {
		return insId;
	}

	public void setInsId(Long insId) {
		this.insId = insId;
	}

	public String getNomIns() {
		return nomIns;
	}

	public void setNomIns(String nomIns) {
		this.nomIns = nomIns;
	}

	public String getDesIns() {
		return desIns;
	}

	public void setDesIns(String desIns) {
		this.desIns = desIns;
	}

	public Long getQtdIns() {
		return qtdIns;
	}

	public void setQtdIns(Long qtdIns) {
		this.qtdIns = qtdIns;
	}

	public String getUndIns() {
		return undIns;
	}

	public void setUndIns(String undIns) {
		this.undIns = undIns;
	}

	public List<Compra> getCompras() {
		return compras;
	}

	public void setCompras(List<Compra> compras) {
		this.compras = compras;
	}

	public List<UsoInsumo> getUsosInsumo() {
		return usosInsumo;
	}

	public void setUsosInsumo(List<UsoInsumo> usosInsumo) {
		this.usosInsumo = usosInsumo;
	}

    
}

