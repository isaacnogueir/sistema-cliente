package com.project.clientes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class inicioController {

    @GetMapping
    public String Inicio() {
        return "index";
    }

}



