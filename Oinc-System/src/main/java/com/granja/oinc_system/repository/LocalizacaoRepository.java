package com.granja.oinc_system.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.granja.oinc_system.dao.model.Localizacao;

public interface LocalizacaoRepository extends JpaRepository<Localizacao, Long> {
}
