package com.granja.oinc_system.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.granja.oinc_system.dao.model.Animal;
import com.granja.oinc_system.dao.model.Leitao;
import com.granja.oinc_system.repository.AnimalRepository;
import com.granja.oinc_system.repository.LeitaoRepository;

import java.util.List;
import java.util.Optional;

@Service
public class AnimalControl {

    private final AnimalRepository animalRepository;
    private final LeitaoRepository leitaoRepository;

    @Autowired
    public AnimalControl(AnimalRepository animalRepository, LeitaoRepository leitaoRepository) {
        this.animalRepository = animalRepository;
        this.leitaoRepository = leitaoRepository;
    }

    public Optional<Animal> buscarAnimalPorId(Long id) {
        return animalRepository.findById(id);
    }

    public List<Animal> listarAnimais() {
        return animalRepository.findAll();
    }

    @Transactional
    public Animal salvarAnimal(Animal animal) {
        Animal savedAnimal = animalRepository.save(animal);

        // Verifica se o tipo do animal é igual a 3 (Leitão)
        if (animal.getTipAni() == 3) {
            Leitao leitao = new Leitao();
            leitao.setAnimal(savedAnimal);
            leitao.setDatNasLei(savedAnimal.getDatNas());
            leitao.setPesLei(savedAnimal.getPesAni());
            leitao.setPcaId(savedAnimal.getAniId().intValue()); // Ajuste conforme necessário

            // Salva o leitão no banco de dados
            leitaoRepository.save(leitao);
        }

        return savedAnimal;
    }

    @Transactional
    public void deletarAnimal(Long id) {
        Optional<Animal> optionalAnimal = animalRepository.findById(id);

        if (optionalAnimal.isPresent()) {
            Animal animal = optionalAnimal.get();

            // Se o animal for um Leitão, também remover da tabela Leitao
            if (animal.getTipAni() == 3) {
                leitaoRepository.deleteById(id);
            }

            // Remover o animal da tabela Animal
            animalRepository.deleteById(id);
        }
    }
}
