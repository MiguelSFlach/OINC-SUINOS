package com.granja.test;

import com.granja.oinc_system.dao.AnimalDAO;
import com.granja.oinc_system.dao.model.Animal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.Optional;

@Component
public class Main implements CommandLineRunner {

    @Autowired
    private AnimalDAO animalDAO;

    @Override
    public void run(String... args) {
        Animal animal = new Animal();
        animal.setTipAni(1);
        animal.setDatNas(new Date());
        animal.setPesAni(200L);
        animal.setStsAni(1);
        animal.setCauMor("Natural");
        animal.setObsAni("Saudável");

        // Salvar o animal
        animalDAO.save(animal);
        System.out.println("Animal salvo com sucesso!");

        // Consultar o animal pelo ID
        Optional<Animal> animalEncontrado = animalDAO.findById(animal.getAniId());
        animalEncontrado.ifPresentOrElse(
            a -> System.out.println("Animal encontrado: " + a.getObsAni()),
            () -> System.out.println("Animal não encontrado.")
        );

        // Atualizar o animal
        animalEncontrado.ifPresent(a -> {
            a.setObsAni("Observação atualizada");
            animalDAO.update(a);
            System.out.println("Animal atualizado com sucesso!");
        });

        // Deletar o animal
        animalDAO.delete(animal.getAniId());
        System.out.println("Animal deletado com sucesso!");
    }
}
