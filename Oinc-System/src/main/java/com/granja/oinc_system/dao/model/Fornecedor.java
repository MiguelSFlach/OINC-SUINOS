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
@Table(name = "Fornecedor")
public class Fornecedor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "forid")
    private Long forId;

    @Column(name = "fornom", nullable = false, length = 100)
    private String forNom;

    @Column(name = "forcon", nullable = false, length = 100)
    private String forCon;

    @Column(name = "fortel", nullable = false, length = 20)
    private String forTel;

    @Column(name = "forema", nullable = false, length = 100)
    private String forEma;

    @OneToMany(mappedBy = "fornecedor")
    private List<Compra> compras;

	public Long getForId() {
		return forId;
	}

	public void setForId(Long forId) {
		this.forId = forId;
	}

	public String getForNom() {
		return forNom;
	}

	public void setForNom(String forNom) {
		this.forNom = forNom;
	}

	public String getForCon() {
		return forCon;
	}

	public void setForCon(String forCon) {
		this.forCon = forCon;
	}

	public String getForTel() {
		return forTel;
	}

	public void setForTel(String forTel) {
		this.forTel = forTel;
	}

	public String getForEma() {
		return forEma;
	}

	public void setForEma(String forEma) {
		this.forEma = forEma;
	}

	public List<Compra> getCompras() {
		return compras;
	}

	public void setCompras(List<Compra> compras) {
		this.compras = compras;
	}

    
}

