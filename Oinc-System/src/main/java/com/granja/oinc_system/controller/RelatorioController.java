package com.granja.oinc_system.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.granja.oinc_system.service.RelatorioService;

@Controller
@RequestMapping("/relatorios")
public class RelatorioController {
    @Autowired
    private RelatorioService relatorioService;

    @GetMapping("/animais-por-granja")
    public String exibirRelatorio(Model model) {
        List<Object[]> relatorio = relatorioService.obterTotalAnimaisPorGranja();
        model.addAttribute("relatorio", relatorio);
        return "relatorios/animaisPorGranja";
    }
}

