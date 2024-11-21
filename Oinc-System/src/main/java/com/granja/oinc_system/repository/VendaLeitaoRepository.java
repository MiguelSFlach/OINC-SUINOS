package com.granja.oinc_system.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.granja.oinc_system.dao.model.VendaLeitao;

@Repository
public interface VendaLeitaoRepository extends JpaRepository<VendaLeitao, Long> {
    
    // Método para encontrar todos os VendaLeitao por vendaId
    List<VendaLeitao> findByVendaId(Long vendaId);
    
    // Método para verificar se um leitão já está associado a uma venda
    boolean existsByLeitaoId(Long leitaoId);
}

