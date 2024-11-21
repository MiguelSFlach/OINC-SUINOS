package com.granja.oinc_system.control;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.granja.oinc_system.dao.UsuarioDAO;
import com.granja.oinc_system.dao.model.Usuario;

@Service
public class UsuarioControl {

    private final UsuarioDAO usuarioDAO;

    @Autowired
    public UsuarioControl(UsuarioDAO usuarioDAO) {
        this.usuarioDAO = usuarioDAO;
    }

    @Transactional
    public void salvarUsuario(Usuario usuario) {
        usuarioDAO.save(usuario);
    }

    public Usuario buscarUsuarioPorId(Long id) {
        return usuarioDAO.findById(id).orElse(null); // Usando Optional para evitar null
    }

    public List<Usuario> listarUsuarios() {
        return usuarioDAO.findAll();
    }

    @Transactional
    public void atualizarUsuario(Usuario usuario) {
        usuarioDAO.update(usuario);
    }

    @Transactional
    public void deletarUsuario(Long id) {
        usuarioDAO.delete(id);
    }
}
