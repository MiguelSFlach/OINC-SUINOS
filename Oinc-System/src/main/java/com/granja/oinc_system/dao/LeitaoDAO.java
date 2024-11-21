package com.granja.oinc_system.dao;

import org.springframework.stereotype.Repository;

import com.granja.oinc_system.dao.model.Leitao;
@Repository
public class LeitaoDAO extends GenericDAO<Leitao> {
    public LeitaoDAO() {
        super(Leitao.class);
    }
}

