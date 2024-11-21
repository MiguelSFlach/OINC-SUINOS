package com.granja.oinc_system.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.granja.oinc_system.dao.GranjaDAO;
import com.granja.oinc_system.dao.model.Granja;

@Service
public class GranjaControl {

    private final GranjaDAO granjaDAO;

    @Autowired
    public GranjaControl(GranjaDAO granjaDAO) {
        this.granjaDAO = granjaDAO;
    }

    // Salvar uma nova granja
    public void salvarGranja(Granja granja) {
        granjaDAO.save(granja);
    }

    // Buscar uma granja pelo CNPJ
    public Granja buscarGranjaPorCnpj(String cnpj) {
        return granjaDAO.findByCnpj(cnpj);
    }

    // Listar todas as granjas
    public List<Granja> listarGranjas() {
        return granjaDAO.findAll();
    }
}

