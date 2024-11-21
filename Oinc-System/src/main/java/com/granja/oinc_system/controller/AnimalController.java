package com.granja.oinc_system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.granja.oinc_system.control.AnimalControl;
import com.granja.oinc_system.dao.model.Animal;
import com.granja.oinc_system.repository.GranjaRepository;
import com.granja.oinc_system.repository.GrupoRepository;
import com.granja.oinc_system.repository.LocalizacaoRepository;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/animal")
public class AnimalController {

    private final AnimalControl animalControl;
    private final GranjaRepository granjaRepository;
    private final GrupoRepository grupoRepository;
    private final LocalizacaoRepository localizacaoRepository;

    @Autowired
    public AnimalController(AnimalControl animalControl,
                            GranjaRepository granjaRepository,
                            GrupoRepository grupoRepository,
                            LocalizacaoRepository localizacaoRepository) {
        this.animalControl = animalControl;
        this.granjaRepository = granjaRepository;
        this.grupoRepository = grupoRepository;
        this.localizacaoRepository = localizacaoRepository;
    }

    @GetMapping("/list")
    public String listarAnimais(Model model) {
        List<Animal> animals = animalControl.listarAnimais(); // Adicionado método listarAnimais()
        model.addAttribute("animals", animals);
        return "animal/list";
    }

    @GetMapping("/new")
    public String novoAnimalForm(Model model) {
        model.addAttribute("animal", new Animal());
        model.addAttribute("granjas", granjaRepository.findAll());
        model.addAttribute("grupos", grupoRepository.findAll());
        model.addAttribute("localizacoes", localizacaoRepository.findAll());
        return "animal/form";
    }

    @GetMapping("/edit/{id}")
    public String editarAnimal(@PathVariable Long id, Model model) {
        Optional<Animal> animal = animalControl.buscarAnimalPorId(id); // Corrigido para buscarAnimalPorId
        if (animal.isEmpty()) {
            throw new IllegalArgumentException("Animal não encontrado para edição.");
        }
        model.addAttribute("animal", animal.get());
        model.addAttribute("granjas", granjaRepository.findAll());
        model.addAttribute("grupos", grupoRepository.findAll());
        model.addAttribute("localizacoes", localizacaoRepository.findAll());
        return "animal/form";
    }

    @PostMapping("/save")
    public String salvarAnimal(@ModelAttribute Animal animal) {
        animalControl.salvarAnimal(animal);
        return "redirect:/dashboard"; 
    }

    @GetMapping("/delete/{id}")
    public String deletarAnimal(@PathVariable Long id) {
        animalControl.deletarAnimal(id);
        return "redirect:/dashboard"; 
    }
}
