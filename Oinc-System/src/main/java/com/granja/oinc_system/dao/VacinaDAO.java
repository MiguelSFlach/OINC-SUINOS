package com.granja.oinc_system.dao;

import org.springframework.stereotype.Repository;

import com.granja.oinc_system.dao.model.Vacina;
@Repository
public class VacinaDAO extends GenericDAO<Vacina> {
    public VacinaDAO() {
        super(Vacina.class);
    }
}

