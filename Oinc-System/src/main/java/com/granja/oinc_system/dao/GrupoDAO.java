package com.granja.oinc_system.dao;

import org.springframework.stereotype.Repository;

import com.granja.oinc_system.dao.model.Grupo;
@Repository
public class GrupoDAO extends GenericDAO<Grupo> {
    public GrupoDAO() {
        super(Grupo.class);
    }
}

