package com.granja.oinc_system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.granja.oinc_system.dao.model.Fornecedor;
import com.granja.oinc_system.service.FornecedorService;

@Controller
@RequestMapping("/fornecedor")
public class FornecedorController {

    @Autowired
    private FornecedorService fornecedorService;

    @GetMapping
    public String listarFornecedores(Model model) {
        model.addAttribute("fornecedores", fornecedorService.listarTodos());
        return "fornecedor/list";
    }

    @GetMapping("/add")
    public String formularioFornecedor(Model model) {
        model.addAttribute("fornecedor", new Fornecedor());
        return "fornecedor/form";
    }

    @PostMapping("/add")
    public String salvarFornecedor(@ModelAttribute Fornecedor fornecedor) {
        fornecedorService.salvar(fornecedor);
        return "redirect:/fornecedor";
    }

    @GetMapping("/edit/{id}")
    public String editarFornecedor(@PathVariable Long id, Model model) {
        model.addAttribute("fornecedor", fornecedorService.buscarPorId(id));
        return "fornecedor/form";
    }

    @GetMapping("/delete/{id}")
    public String deletarFornecedor(@PathVariable Long id) {
        fornecedorService.deletar(id);
        return "redirect:/fornecedor";
    }
}

