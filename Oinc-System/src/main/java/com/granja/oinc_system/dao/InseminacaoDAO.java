package com.granja.oinc_system.dao;

import org.springframework.stereotype.Repository;

import com.granja.oinc_system.dao.model.Inseminacao;
@Repository
public class InseminacaoDAO extends GenericDAO<Inseminacao> {
    public InseminacaoDAO() {
        super(Inseminacao.class);
    }
}

