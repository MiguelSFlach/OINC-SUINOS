package com.granja.oinc_system.dao;

import org.springframework.stereotype.Repository;

import com.granja.oinc_system.dao.model.Registro;
@Repository
public class RegistroDAO extends GenericDAO<Registro> {
    public RegistroDAO() {
        super(Registro.class);
    }
}

