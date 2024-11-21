package com.granja.oinc_system.dao;

import org.springframework.stereotype.Repository;

import com.granja.oinc_system.dao.model.UsoInsumo;
@Repository
public class UsoInsumoDAO extends GenericDAO<UsoInsumo> {
    public UsoInsumoDAO() {
        super(UsoInsumo.class);
    }
}

