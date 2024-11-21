package com.granja.oinc_system.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.granja.oinc_system.dao.model.Insumo;

@Repository
public interface InsumoRepository extends JpaRepository<Insumo, Long> {
}
