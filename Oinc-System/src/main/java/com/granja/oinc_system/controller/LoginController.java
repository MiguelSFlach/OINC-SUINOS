package com.granja.oinc_system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

    @GetMapping("/login")
    public String showLoginPage(Model model, String error, String logout) {
        if (error != null) {
            model.addAttribute("error", "Usuário ou senha inválidos.");
        }
        if (logout != null) {
            model.addAttribute("message", "Logout realizado com sucesso.");
        }
        return "login"; // Certifique-se de que o arquivo login.html existe
    }
}
