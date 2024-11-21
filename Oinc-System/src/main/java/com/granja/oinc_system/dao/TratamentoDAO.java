package com.granja.oinc_system.dao;

import org.springframework.stereotype.Repository;

import com.granja.oinc_system.dao.model.Tratamento;
@Repository
public class TratamentoDAO extends GenericDAO<Tratamento> {
    public TratamentoDAO() {
        super(Tratamento.class);
    }
}

