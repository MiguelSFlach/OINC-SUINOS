package com.granja.oinc_system.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.granja.oinc_system.dao.model.Granja;

@Repository
public interface GranjaDAO extends JpaRepository<Granja, Long> {
    
    Granja findByCnpj(String cnpj);
}
