package com.granja.oinc_system.dao;

import org.springframework.stereotype.Repository;
import com.granja.oinc_system.dao.model.Alimentacao;

@Repository
public class AlimentacaoDAO extends GenericDAO<Alimentacao> {
    public AlimentacaoDAO() {
        super(Alimentacao.class);
    }
}

