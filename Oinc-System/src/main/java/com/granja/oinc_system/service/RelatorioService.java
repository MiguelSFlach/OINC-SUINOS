package com.granja.oinc_system.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.granja.oinc_system.repository.RelatorioRepository;

@Service
public class RelatorioService {
    @Autowired
    private RelatorioRepository relatorioRepository;

    public List<Object[]> obterTotalAnimaisPorGranja() {
        return relatorioRepository.findTotalAnimaisPorGranja();
    }
}

