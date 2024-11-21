package com.granja.oinc_system.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.granja.oinc_system.dao.model.Animal;

@Repository
public interface RelatorioRepository extends JpaRepository<Animal, Long> {

    @Query(value = "SELECT * FROM total_animais_por_granja", nativeQuery = true)
    List<Object[]> findTotalAnimaisPorGranja();
}

