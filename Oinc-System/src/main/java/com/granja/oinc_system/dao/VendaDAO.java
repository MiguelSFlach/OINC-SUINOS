package com.granja.oinc_system.dao;

import org.springframework.stereotype.Repository;

import com.granja.oinc_system.dao.model.Venda;
@Repository
public class VendaDAO extends GenericDAO<Venda> {
    public VendaDAO() {
        super(Venda.class);
    }
}

