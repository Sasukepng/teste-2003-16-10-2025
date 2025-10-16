CREATE DATABASE automoveis_db;

USE automoveis_db;

CREATE TABLE automoveis (
    codigo INT PRIMARY KEY,
    ano INT,
    fabricante VARCHAR(100),
    modelo VARCHAR(100),
    preco_tabela DECIMAL(15,2),
    pais VARCHAR(50)
);

INSERT INTO automoveis VALUES
(1, 2022, 'Toyota', 'Corolla', 120000.00, 'Brasil'),
(2, 2023, 'Honda', 'Civic', 130000.00, 'Brasil'),
(3, 2021, 'Ford', 'Focus', 110000.00, 'Argentina'),
(4, 2024, 'Chevrolet', 'Onix', 90000.00, 'Brasil');


CREATE DATABASE revendedora_db;

USE revendedora_db;

CREATE TABLE revendedoras (
    cgc VARCHAR(20) PRIMARY KEY,
    nome VARCHAR(100),
    proprietario VARCHAR(100),
    estado VARCHAR(50),
    cidade VARCHAR(100)
);

INSERT INTO revendedoras VALUES
('12345678000101', 'AutoMais', 'João Silva', 'SP', 'São Paulo'),
('23456789000102', 'CarrosTop', 'Maria Souza', 'RJ', 'Rio de Janeiro'),
('34567890000103', 'VeículosPrime', 'Carlos Lima', 'MG', 'Belo Horizonte'),
('45678900000104', 'SuperCarros', 'Ana Costa', 'RS', 'Porto Alegre');


CREATE DATABASE consumidores_db;

USE consumidores_db;

CREATE TABLE consumidores (
    cpf VARCHAR(14) PRIMARY KEY,
    nome VARCHAR(100),
    sobrenome VARCHAR(100),
    cidade VARCHAR(100),
    estado VARCHAR(50)
);

INSERT INTO consumidores VALUES
('11122233344', 'Pedro', 'Almeida', 'São Paulo', 'SP'),
('22233344455', 'Lucas', 'Ferreira', 'Rio de Janeiro', 'RJ'),
('33344455566', 'Mariana', 'Oliveira', 'Belo Horizonte', 'MG'),
('44455566677', 'Fernanda', 'Costa', 'Porto Alegre', 'RS');


CREATE DATABASE negocios_db;

USE negocios_db;

CREATE TABLE negocios (
    codigo INT PRIMARY KEY,
    ano INT,
    cgc VARCHAR(20),
    cpf VARCHAR(14),
    data DATE,
    preco DECIMAL(15,2)
);

INSERT INTO negocios VALUES
(1, 2022, '12345678000101', '11122233344', '2022-05-10', 120000.00),
(2, 2023, '23456789000102', '22233344455', '2023-06-15', 130000.00),
(3, 2021, '34567890000103', '33344455566', '2021-07-20', 110000.00),
(4, 2024, '45678900000104', '44455566677', '2024-08-25', 90000.00);


CREATE DATABASE garagem_db;

USE garagem_db;

CREATE TABLE garagem (
    codigo INT PRIMARY KEY,
    ano INT,
    cgc VARCHAR(20),
    quantidade INT
);

INSERT INTO garagem VALUES
(1, 2022, '12345678000101', 10),
(2, 2023, '23456789000102', 8),
(3, 2021, '34567890000103', 12),
(4, 2024, '45678900000104', 15);