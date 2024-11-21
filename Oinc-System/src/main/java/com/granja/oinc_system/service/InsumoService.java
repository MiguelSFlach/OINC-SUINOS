package com.granja.oinc_system.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.granja.oinc_system.dao.model.Insumo;
import com.granja.oinc_system.repository.InsumoRepository;

@Service
public class InsumoService {

    @Autowired
    private InsumoRepository insumoRepository;

    public List<Insumo> listarTodos() {
        return insumoRepository.findAll();
    }

    public void salvar(Insumo insumo) {
        insumoRepository.save(insumo);
    }

    public Insumo buscarPorId(Long id) {
        return insumoRepository.findById(id).orElseThrow(() -> new RuntimeException("Insumo não encontrado"));
    }

    public void deletar(Long id) {
        insumoRepository.deleteById(id);
    }
}

