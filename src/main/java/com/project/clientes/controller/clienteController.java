package com.project.clientes.controller;

import com.project.clientes.entities.Cliente;
import com.project.clientes.repository.ClienteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Date;

@Controller
@RequestMapping("/clientes")
public class clienteController {

    @Autowired
    private ClienteRepository clienteRepository;

    @GetMapping({"", "/"})
    public String listarClientes(Model model) {
        var clientes = clienteRepository.findAll(Sort.by(Sort.Direction.DESC, "id"));
        model.addAttribute("clientes", clientes);
        return "clientes/index";
    }

    @PostMapping("/editar")
    public String editarCliente(@RequestParam int id,
                                @RequestParam String nome,
                                @RequestParam String email,
                                @RequestParam String telefone,
                                @RequestParam String endereco,
                                @RequestParam String status) {

        Cliente cliente = clienteRepository.findById(id).orElse(null);
        if (cliente != null) {
            cliente.setNome(nome);
            cliente.setEmail(email);
            cliente.setTelefone(telefone);
            cliente.setEndereco(endereco);
            cliente.setStatus(status);
            clienteRepository.save(cliente);
        }

        return "redirect:/clientes";
    }

    @GetMapping("/deletar")
    public String deletarCliente(@RequestParam int id) {
        clienteRepository.deleteById(id);
        return "redirect:/clientes";
    }

    @GetMapping("/criar")
    public String criarClienteForm(Model model) {
        model.addAttribute("cliente", new Cliente());
        return "clientes/criar";
    }

    @PostMapping("/criar")
    public String criarCliente(@ModelAttribute Cliente cliente) {
        cliente.setCreatedAt(new Date());
        clienteRepository.save(cliente);
        return "redirect:/clientes";
    }
}
