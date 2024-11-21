package com.granja.oinc_system.dao;

import org.springframework.stereotype.Repository;

import com.granja.oinc_system.dao.model.Movimentacao;
@Repository
public class MovimentacaoDAO extends GenericDAO<Movimentacao> {
    public MovimentacaoDAO() {
        super(Movimentacao.class);
    }
}

