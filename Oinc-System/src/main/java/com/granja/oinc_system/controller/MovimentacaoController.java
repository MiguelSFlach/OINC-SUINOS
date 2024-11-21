package com.granja.oinc_system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.granja.oinc_system.dao.model.Movimentacao;
import com.granja.oinc_system.service.MovimentacaoService;

@Controller
@RequestMapping("/movimentacao")
public class MovimentacaoController {

    private final MovimentacaoService movimentacaoService;

    @Autowired
    public MovimentacaoController(MovimentacaoService movimentacaoService) {
        this.movimentacaoService = movimentacaoService;
    }

    @GetMapping("/list")
    public String listarMovimentacoes(Model model) {
        model.addAttribute("movimentacoes", movimentacaoService.listarTodas());
        return "movimentacao/list";
    }

    @GetMapping("/new")
    public String novaMovimentacaoForm(Model model) {
        model.addAttribute("movimentacao", new Movimentacao());
        return "movimentacao/form";
    }

    @PostMapping("/save")
    public String salvarMovimentacao(@ModelAttribute Movimentacao movimentacao) {
        movimentacaoService.salvarMovimentacao(movimentacao);
        return "redirect:/dashboard"; // Redireciona para o dashboard após salvar
    }
}
