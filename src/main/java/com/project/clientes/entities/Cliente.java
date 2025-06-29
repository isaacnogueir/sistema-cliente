package com.project.clientes.entities;

import jakarta.persistence.*;
import lombok.*;

import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "cliente")
public class Cliente {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String nome;

    @Column(unique = true, nullable = false)
    private String email;

    private String telefone;
    private String endereco;
    private String status;

    @Temporal(TemporalType.TIMESTAMP)
    private Date createdAt;
}
