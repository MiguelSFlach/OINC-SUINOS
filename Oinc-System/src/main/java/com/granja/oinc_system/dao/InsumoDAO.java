package com.granja.oinc_system.dao;

import org.springframework.stereotype.Repository;

import com.granja.oinc_system.dao.model.Insumo;
@Repository
public class InsumoDAO extends GenericDAO<Insumo> {
    public InsumoDAO() {
        super(Insumo.class);
    }
}

