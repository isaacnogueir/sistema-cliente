package com.project.clientes.entities;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class clienteDto{

    @NotEmpty(message = "Campo obrigatório!")
    private String nome;

    @NotEmpty(message = "Campo obrigatório!")
    @Email
    private String email;

    private String telefone;

    private String endereco;

    @NotEmpty(message = "Campo obrigatório!")
    private String status;

}
