package com.granja.oinc_system.dao;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

public class GenericDAO<T> {

    private Class<T> clazz;

    @PersistenceContext
    private EntityManager entityManager;

    public GenericDAO(Class<T> clazz) {
        this.clazz = clazz;
    }

    @Transactional
    public void save(T entity) {
        System.out.println("Saving entity: " + entity.toString()); // Log do estado do objeto
        entityManager.persist(entity);
    }

    public Optional<T> findById(Long id) {
        return Optional.ofNullable(entityManager.find(clazz, id));
    }

    public List<T> findAll() {
        return entityManager.createQuery("from " + clazz.getName(), clazz).getResultList();
    }

    @Transactional
    public void update(T entity) {
        entityManager.merge(entity);
    }

    @Transactional
    public void delete(Long id) {
        findById(id).ifPresent(entity -> entityManager.remove(entity));
    }
    
}
