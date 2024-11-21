package com.granja.oinc_system.dao;

import org.springframework.stereotype.Repository;

import com.granja.oinc_system.dao.model.Funcionario;
@Repository
public class FuncionarioDAO extends GenericDAO<Funcionario> {
    public FuncionarioDAO() {
        super(Funcionario.class);
    }
}

