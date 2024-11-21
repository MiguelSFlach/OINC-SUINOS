package com.granja.oinc_system.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.granja.oinc_system.dao.model.Grupo;

@Repository
public interface GrupoRepository extends JpaRepository<Grupo, Long> {
    // Caso precise de métodos personalizados, você pode adicioná-los aqui
}
