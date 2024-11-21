package com.granja.oinc_system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

    @GetMapping("/index")
    public String indexPage() {
        return "index"; // Nome do arquivo na pasta templates (ex.: templates/index.html)
    }
}

