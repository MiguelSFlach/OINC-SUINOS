package com.granja.oinc_system.dao;

import org.springframework.stereotype.Repository;

import com.granja.oinc_system.dao.model.Compra;
@Repository
public class CompraDAO extends GenericDAO<Compra> {
    public CompraDAO() {
        super(Compra.class);
    }
}

