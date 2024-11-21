package com.granja.oinc_system.repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import org.springframework.stereotype.Repository;

@Repository
public class GranjaRepositoryCustom {
    @PersistenceContext
    private EntityManager entityManager;

    public void atualizarStatusGranja(Long cnpj) {
        Query query = entityManager.createNativeQuery("CALL atualizar_status_granja(:cnpj)");
        query.setParameter("cnpj", cnpj);
        query.executeUpdate();
    }
}
