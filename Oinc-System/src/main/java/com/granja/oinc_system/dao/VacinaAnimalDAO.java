package com.granja.oinc_system.dao;

import org.springframework.stereotype.Repository;

import com.granja.oinc_system.dao.model.VacinaAnimal;
@Repository
public class VacinaAnimalDAO extends GenericDAO<VacinaAnimal> {
    public VacinaAnimalDAO() {
        super(VacinaAnimal.class);
    }
}

