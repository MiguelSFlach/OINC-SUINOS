package com.granja.oinc_system.repository;

import com.granja.oinc_system.dao.model.Granja;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface GranjaRepository extends JpaRepository<Granja, Long> {
}
