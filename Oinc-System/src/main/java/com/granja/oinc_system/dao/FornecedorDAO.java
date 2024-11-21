package com.granja.oinc_system.dao;

import org.springframework.stereotype.Repository;

import com.granja.oinc_system.dao.model.Fornecedor;
@Repository
public class FornecedorDAO extends GenericDAO<Fornecedor> {
    public FornecedorDAO() {
        super(Fornecedor.class);
    }
}

