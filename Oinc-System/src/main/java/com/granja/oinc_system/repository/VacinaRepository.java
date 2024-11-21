package com.granja.oinc_system.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.granja.oinc_system.dao.model.Vacina;

@Repository
public interface VacinaRepository extends JpaRepository<Vacina, Long> {
}