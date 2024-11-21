package com.granja.oinc_system.dao;

import org.springframework.stereotype.Repository;

import com.granja.oinc_system.dao.model.Morte;
@Repository
public class MorteDAO extends GenericDAO<Morte> {
    public MorteDAO() {
        super(Morte.class);
    }
}
