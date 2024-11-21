package com.granja.oinc_system.service;

import com.granja.oinc_system.dao.model.Venda;
import com.granja.oinc_system.repository.VendaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VendaService {

    @Autowired
    private VendaRepository vendaRepository;

    public List<Venda> getAll() {
        return vendaRepository.findAll();
    }

    public Venda getById(Long id) {
        return vendaRepository.findById(id).orElse(null);
    }

    public Venda save(Venda venda) {
        return vendaRepository.save(venda);
    }

    public void confirmarVenda(Venda venda) {
        venda.setConfirmada(true);
        vendaRepository.save(venda);
    }
}
