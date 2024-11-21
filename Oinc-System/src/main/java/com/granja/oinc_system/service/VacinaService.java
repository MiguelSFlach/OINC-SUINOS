package com.granja.oinc_system.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.granja.oinc_system.dao.model.Vacina;
import com.granja.oinc_system.repository.VacinaRepository;

@Service
public class VacinaService {
    @Autowired
    private VacinaRepository vacinaRepository;

    public List<Vacina> listarTodas() {
        return vacinaRepository.findAll();
    }

    public void salvar(Vacina vacina) {
        vacinaRepository.save(vacina);
    }

    public Vacina buscarPorId(Long id) {
        return vacinaRepository.findById(id).orElseThrow(() -> new RuntimeException("Vacina não encontrada"));
    }

    public void deletar(Long id) {
        vacinaRepository.deleteById(id);
    }
}

