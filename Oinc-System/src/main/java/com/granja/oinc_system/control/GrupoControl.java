package com.granja.oinc_system.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.granja.oinc_system.dao.GrupoDAO;
import com.granja.oinc_system.dao.model.Grupo;

import java.util.List;

@Service
public class GrupoControl {

    private final GrupoDAO grupoDAO;

    @Autowired
    public GrupoControl(GrupoDAO grupoDAO) {
        this.grupoDAO = grupoDAO;
    }

    @Transactional
    public void salvarGrupo(Grupo grupo) {
        grupoDAO.save(grupo);
    }

    public Grupo buscarGrupoPorId(Long id) {
        return grupoDAO.findById(id).orElse(null); // Utilizando Optional para evitar problemas de null
    }

    public List<Grupo> listarGrupos() {
        return grupoDAO.findAll();
    }

    @Transactional
    public void atualizarGrupo(Grupo grupo) {
        grupoDAO.update(grupo);
    }

    @Transactional
    public void deletarGrupo(Long id) {
        grupoDAO.delete(id);
    }
}
