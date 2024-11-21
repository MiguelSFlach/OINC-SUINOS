package com.granja.oinc_system.dao;

import org.springframework.stereotype.Repository;

import com.granja.oinc_system.dao.model.Parto;
@Repository
public class PartoDAO extends GenericDAO<Parto> {
    public PartoDAO() {
        super(Parto.class);
    }
}

