package com.granja.oinc_system.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.granja.oinc_system.control.AnimalControl;

@Controller
public class DashboardController {

    private final AnimalControl animalControl;

    public DashboardController(AnimalControl animalControl) {
        this.animalControl = animalControl;
    }

    @GetMapping("/dashboard")
    public String showDashboard(Model model) {
        // Obtém o nome do usuário logado
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String username = authentication.getName(); // Nome do usuário logado

        // Adiciona o nome do usuário ao modelo
        model.addAttribute("selectedUsuario", username);

        // Passa informações iniciais para o dashboard (exemplo: lista de animais)
        model.addAttribute("animals", animalControl.listarAnimais());

        // Retorna o template do dashboard
        return "dashboard";
    }
}
