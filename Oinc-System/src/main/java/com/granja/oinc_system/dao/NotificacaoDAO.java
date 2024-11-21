package com.granja.oinc_system.dao;

import org.springframework.stereotype.Repository;

import com.granja.oinc_system.dao.model.Notificacao;
@Repository
public class NotificacaoDAO extends GenericDAO<Notificacao> {
    public NotificacaoDAO() {
        super(Notificacao.class);
    }
}

