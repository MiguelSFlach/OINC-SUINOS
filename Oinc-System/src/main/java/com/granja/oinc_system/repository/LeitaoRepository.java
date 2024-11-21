package com.granja.oinc_system.repository;

import com.granja.oinc_system.dao.model.Leitao;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LeitaoRepository extends JpaRepository<Leitao, Long> {
    List<Leitao> findByVendaIsNull(); // Leitões sem venda associada
}
