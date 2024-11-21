package com.granja.oinc_system.service;

import org.springframework.stereotype.Service;

import com.granja.oinc_system.dao.model.Grupo;
import com.granja.oinc_system.repository.GrupoRepository;

@Service
public class GrupoService {

    private final GrupoRepository grupoRepository;

    public GrupoService(GrupoRepository grupoRepository) {
        this.grupoRepository = grupoRepository;
    }

    public void salvarGrupo(Grupo grupo) {
        grupoRepository.save(grupo);
    }
}


