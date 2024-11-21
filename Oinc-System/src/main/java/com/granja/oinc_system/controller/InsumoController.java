package com.granja.oinc_system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.granja.oinc_system.dao.model.Insumo;
import com.granja.oinc_system.service.FornecedorService;
import com.granja.oinc_system.service.InsumoService;

@Controller
@RequestMapping("/insumo")
public class InsumoController {

    @Autowired
    private InsumoService insumoService;

    @Autowired
    private FornecedorService fornecedorService;

    @GetMapping
    public String listarInsumos(Model model) {
        model.addAttribute("insumos", insumoService.listarTodos());
        return "insumo/list";
    }

    @GetMapping("/add")
    public String formularioInsumo(Model model) {
        model.addAttribute("insumo", new Insumo());
        model.addAttribute("fornecedores", fornecedorService.listarTodos());
        return "insumo/form";
    }

    @PostMapping("/add")
    public String salvarInsumo(@ModelAttribute Insumo insumo) {
        insumoService.salvar(insumo);
        return "redirect:/insumo";
    }

    @GetMapping("/edit/{id}")
    public String editarInsumo(@PathVariable Long id, Model model) {
        model.addAttribute("insumo", insumoService.buscarPorId(id));
        model.addAttribute("fornecedores", fornecedorService.listarTodos());
        return "insumo/form";
    }

    @GetMapping("/delete/{id}")
    public String deletarInsumo(@PathVariable Long id) {
        insumoService.deletar(id);
        return "redirect:/insumo";
    }

    @GetMapping("/compra")
    public String realizarCompra(Model model) {
        model.addAttribute("insumos", insumoService.listarTodos());
        return "insumo/compraForm";
    }
}

