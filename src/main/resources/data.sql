DROP TABLE IF EXISTS cliente;

CREATE TABLE cliente
(
    id        BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome      VARCHAR(100),
    email     VARCHAR(100) UNIQUE NOT NULL,
    telefone  VARCHAR(20),
    endereco  VARCHAR(255),
    status    VARCHAR(20),
    created_at DATE
);

INSERT INTO cliente (nome, email, telefone, endereco, status, created_at)
VALUES
    ('Ana Beatriz Lima', 'ana.lima01@email.com', '21985746312', 'Rua das Palmeiras, 89 - Leblon, RJ', 'permanente', '2023-08-21'),
    ('Thomas Müller', 'thomas.muller@email.com', '11975213476', 'Rua Augusta, 1200 - São Paulo, SP', 'nil', '2023-10-15'),
    ('Carlos Henrique Souza', 'carlos.h.souza@email.com', '21994561234', 'Av. Brasil, 456 - Barra, RJ', 'inativo', '2024-02-01'),
    ('Emily Watson', 'emily.watson@email.com', '11987651234', 'Alameda Santos, 999 - Jardins, SP', 'ocasional', '2022-11-30'),
    ('Yasmin Oliveira', 'yasmin.oliveira@email.com', '21989784563', 'Rua dos Coqueiros, 100 - Niterói, RJ', 'livre', '2023-05-07'),
    ('João Victor Nascimento', 'joao.victor@email.com', '21975431298', 'Rua da Alfândega, 300 - Centro, RJ', 'permanente', '2024-01-19'),
    ('Sophie Dubois', 'sophie.dubois@email.com', '31984561245', 'Rua do Ouro, 23 - Lourdes, BH', 'nil', '2023-04-25'),
    ('Gabriel Costa', 'gabriel.costa@email.com', '21988741256', 'Rua Voluntários da Pátria, 45 - Botafogo, RJ', 'livre', '2024-05-14'),
    ('Laura Kim', 'laura.kim@email.com', '11989876543', 'Av. Faria Lima, 1234 - São Paulo, SP', 'permanente', '2022-09-03'),
    ('Renato Almeida', 'renato.almeida@email.com', '21987873210', 'Rua São Clemente, 77 - Botafogo, RJ', 'inativo', '2023-07-22'),
    ('Alice Mendes', 'alice.mendes@email.com', '11986543278', 'Rua da Consolação, 456 - São Paulo, SP', 'ocasional', '2024-04-08'),
    ('Bruno Kato', 'bruno.kato@email.com', '11987324689', 'Rua Galvão Bueno, 50 - Liberdade, SP', 'nil', '2023-12-11'),
    ('Juliana Ribeiro', 'juliana.ribeiro@email.com', '21986324876', 'Av. das Américas, 800 - Barra da Tijuca, RJ', 'livre', '2024-03-27'),
    ('Hugo Silva', 'hugo.silva@email.com', '31988746231', 'Rua da Bahia, 88 - Centro, BH', 'permanente', '2023-06-06'),
    ('Carla Torres', 'carla.torres@email.com', '21988997321', 'Rua Uruguai, 500 - Tijuca, RJ', 'ocasional', '2024-01-03'),
    ('Vinícius Ferreira', 'vinicius.ferreira@email.com', '21984567321', 'Rua São José, 800 - Centro, RJ', 'inativo', '2022-10-28'),
    ('Maya López', 'maya.lopez@email.com', '11984376521', 'Av. Paulista, 1500 - Bela Vista, SP', 'nil', '2023-08-02'),
    ('Fernando Castro', 'fernando.castro@email.com', '21985674321', 'Rua Farme de Amoedo, 90 - Ipanema, RJ', 'livre', '2023-09-17'),
    ('Natalie Brown', 'natalie.brown@email.com', '11988563211', 'Rua Oscar Freire, 110 - São Paulo, SP', 'permanente', '2023-12-04'),
    ('Otávio Rocha', 'otavio.rocha@email.com', '21988765432', 'Rua São Francisco Xavier, 321 - Maracanã, RJ', 'nil', '2024-06-01');
