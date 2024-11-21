package com.granja.oinc_system.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.granja.oinc_system.dao.model.Granja;
import com.granja.oinc_system.repository.GranjaRepository;

@Service
public class GranjaService {

    private final GranjaRepository granjaRepository;

    @Autowired
    public GranjaService(GranjaRepository granjaRepository) {
        this.granjaRepository = granjaRepository;
    }

    public List<Granja> listarGranjas() {
        return granjaRepository.findAll();
    }

    public void salvarGranja(Granja granja) {
        granjaRepository.save(granja);
    }

    public Granja buscarGranjaPorCnpj(Long cnpj) {
        return granjaRepository.findById(cnpj).orElseThrow(() -> new IllegalArgumentException("Granja não encontrada"));
    }

    public void deletarGranja(Long cnpj) {
        granjaRepository.deleteById(cnpj);
    }

    public void atualizarStatusGranja(Long cnpj) {
        // Aqui você pode integrar com um procedimento armazenado no banco
    }
}
