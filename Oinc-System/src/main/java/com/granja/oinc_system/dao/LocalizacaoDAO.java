package com.granja.oinc_system.dao;

import org.springframework.stereotype.Repository;

import com.granja.oinc_system.dao.model.Localizacao;
@Repository
public class LocalizacaoDAO extends GenericDAO<Localizacao> {
    public LocalizacaoDAO() {
        super(Localizacao.class);
    }
}

