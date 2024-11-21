package com.granja.oinc_system.dao;

import com.granja.oinc_system.dao.model.Usuario;
import org.springframework.stereotype.Repository;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.util.Optional;

@Repository
public class UsuarioDAO extends GenericDAO<Usuario> {

    @PersistenceContext
    private EntityManager entityManager;

    public UsuarioDAO() {
        super(Usuario.class);
    }

    public Optional<Usuario> findByNomUsuAndSenUsu(String username, String senha) {
        try {
            TypedQuery<Usuario> query = entityManager.createQuery(
                "SELECT u FROM Usuario u WHERE u.nomUsu = :username AND u.senUsu = :senha", Usuario.class);
            query.setParameter("username", username);
            query.setParameter("senha", senha);
            
            return Optional.of(query.getSingleResult());
        } catch (NoResultException e) {
            return Optional.empty();
        }
    }
}
