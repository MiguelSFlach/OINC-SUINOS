package com.granja.oinc_system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.granja.oinc_system.dao.model.Granja;
import com.granja.oinc_system.service.GranjaService;

@Controller
@RequestMapping("/granja")
public class GranjaController {

    private final GranjaService granjaService;

    @Autowired
    public GranjaController(GranjaService granjaService) {
        this.granjaService = granjaService;
    }

    @GetMapping("/list")
    public String listarGranjas(Model model) {
        model.addAttribute("granjas", granjaService.listarGranjas());
        return "granja/list";
    }

    @GetMapping("/new")
    public String novaGranjaForm(Model model) {
        model.addAttribute("granja", new Granja());
        return "granja/form";
    }

    @PostMapping("/save")
    public String salvarGranja(@ModelAttribute("granja") Granja granja) {
        granjaService.salvarGranja(granja);
        return "redirect:/granja/list";
    }

    @GetMapping("/edit/{cnpj}")
    public String editarGranja(@PathVariable("cnpj") Long cnpj, Model model) {
        Granja granja = granjaService.buscarGranjaPorCnpj(cnpj);
        model.addAttribute("granja", granja);
        return "granja/form";
    }

    @GetMapping("/delete/{cnpj}")
    public String deletarGranja(@PathVariable("cnpj") Long cnpj) {
        granjaService.deletarGranja(cnpj);
        return "redirect:/granja/list";
    }

    @PostMapping("/atualizar-status")
    public String atualizarStatus(@RequestParam("cnpj") Long cnpj) {
        granjaService.atualizarStatusGranja(cnpj);
        return "redirect:/granja/list";
    }
}
