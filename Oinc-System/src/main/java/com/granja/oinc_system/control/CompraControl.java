package com.granja.oinc_system.control;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.granja.oinc_system.dao.CompraDAO;
import com.granja.oinc_system.dao.model.Compra;

@Service
public class CompraControl {

    @Autowired
    private CompraDAO compraDAO;

    @Transactional
    public void salvarCompra(Compra compra) {
        compraDAO.save(compra);
    }

    public Compra buscarCompraPorId(Long id) {
        return compraDAO.findById(id).orElse(null);
    }

    public List<Compra> listarCompras() {
        return compraDAO.findAll();
    }

    @Transactional
    public void atualizarCompra(Compra compra) {
        compraDAO.update(compra);
    }

    @Transactional
    public void deletarCompra(Long id) {
        compraDAO.delete(id);
    }
}
