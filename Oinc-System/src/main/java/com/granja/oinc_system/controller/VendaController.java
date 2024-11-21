package com.granja.oinc_system.controller;

import com.granja.oinc_system.dao.model.Venda;
import com.granja.oinc_system.service.VendaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/venda")
public class VendaController {

    @Autowired
    private VendaService vendaService;

    @GetMapping("/list")
    public String listarVendas(Model model) {
        List<Venda> vendas = vendaService.getAll();
        model.addAttribute("vendas", vendas);
        return "venda/list"; // Certifique-se de incluir o diretório correto
    }

    @GetMapping("/form")
    public String formularioVenda(@RequestParam(value = "venid", required = false) Long vendaId, Model model) {
        Venda venda = (vendaId != null) ? vendaService.getById(vendaId) : new Venda();
        model.addAttribute("venda", venda);
        return "venda/form";
    }

    @PostMapping("/add")
    public String adicionarVenda(Venda venda, Model model) {
        try {
            vendaService.save(venda);
            return "redirect:/venda/list";
        } catch (Exception e) {
            model.addAttribute("error", "Erro ao salvar a venda: " + e.getMessage());
            return "form";
        }
    }

    @PostMapping("/confirm")
    public String confirmarVenda(@RequestParam Long vendaId, Model model) {
        Venda venda = vendaService.getById(vendaId);
        if (venda == null) {
            model.addAttribute("error", "Venda não encontrada.");
            return "form";
        }

        try {
            vendaService.confirmarVenda(venda);
            return "redirect:/venda/list";
        } catch (Exception e) {
            model.addAttribute("error", "Erro ao confirmar a venda: " + e.getMessage());
            return "form";
        }
    }
}
