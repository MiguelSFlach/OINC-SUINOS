package com.granja.oinc_system.dao;

import org.springframework.stereotype.Repository;

import com.granja.oinc_system.dao.model.Financeiro;
@Repository
public class FinanceiroDAO extends GenericDAO<Financeiro> {
    public FinanceiroDAO() {
        super(Financeiro.class);
    }
}

