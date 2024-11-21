package com.granja.oinc_system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.granja.oinc_system.dao.model.Vacina;
import com.granja.oinc_system.service.VacinaService;

@Controller
@RequestMapping("/vacina")
public class VacinaController {

    @Autowired
    private VacinaService vacinaService;

    @GetMapping
    public String listarVacinas(Model model) {
        model.addAttribute("vacinas", vacinaService.listarTodas());
        return "vacina/list";
    }

    @GetMapping("/add")
    public String formularioVacina(Model model) {
        model.addAttribute("vacina", new Vacina());
        return "vacina/form";
    }

    @PostMapping("/add")
    public String salvarVacina(@ModelAttribute Vacina vacina) {
        vacinaService.salvar(vacina);
        return "redirect:/vacina";
    }

    @GetMapping("/edit/{id}")
    public String editarVacina(@PathVariable Long id, Model model) {
        model.addAttribute("vacina", vacinaService.buscarPorId(id));
        return "vacina/form";
    }

    @GetMapping("/delete/{id}")
    public String deletarVacina(@PathVariable Long id) {
        vacinaService.deletar(id);
        return "redirect:/vacina";
    }
}

