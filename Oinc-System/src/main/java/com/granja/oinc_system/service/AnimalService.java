package com.granja.oinc_system.service;

import org.springframework.stereotype.Service;

import com.granja.oinc_system.dao.model.Animal;
import com.granja.oinc_system.dao.model.Leitao;
import com.granja.oinc_system.repository.AnimalRepository;
import com.granja.oinc_system.repository.LeitaoRepository;

@Service
public class AnimalService {

    private final AnimalRepository animalRepository;
    private final LeitaoRepository leitaoRepository;

    public AnimalService(AnimalRepository animalRepository, LeitaoRepository leitaoRepository) {
        this.animalRepository = animalRepository;
        this.leitaoRepository = leitaoRepository;
    }

    public void salvarAnimal(Animal animal) {
        animalRepository.save(animal);

        // Verifica se o tipo do animal é Leitão (3)
        if (animal.getTipAni() == 3) {
            Leitao leitao = new Leitao();
            leitao.setAnimal(animal);
            leitao.setPesLei(animal.getPesAni());
            leitao.setDatNasLei(animal.getDatNas());
            leitaoRepository.save(leitao);
        }
    }
}

