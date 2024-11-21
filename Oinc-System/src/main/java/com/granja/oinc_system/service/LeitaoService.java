package com.granja.oinc_system.service;

import com.granja.oinc_system.dao.model.Leitao;
import com.granja.oinc_system.repository.LeitaoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LeitaoService {

    @Autowired
    private LeitaoRepository leitaoRepository;

    public Leitao getById(Long id) {
        return leitaoRepository.findById(id).orElse(null);
    }
}
