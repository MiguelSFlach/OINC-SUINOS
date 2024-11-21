package com.granja.oinc_system.dao;

import org.springframework.stereotype.Repository;

import com.granja.oinc_system.dao.model.Animal;

@Repository
public class AnimalDAO extends GenericDAO<Animal> {

    public AnimalDAO() {
        super(Animal.class);
    }
}
