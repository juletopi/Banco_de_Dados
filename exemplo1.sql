-- Criando um banco de dados
CREATE DATABASE exemplo1;   -- Cria o bd

USE exemplo1;   -- Seleciona qual bd irá usar

-- DROP DATABASE exemplo1;   -- Exclui o bd selecionado

-- Criando uma tabela
CREATE TABLE Aluno (
    id_alu INT PRIMARY KEY AUTO_INCREMENT,   -- Coluna para o ID único do funcionário (toda PK já é NOT NULL)
    nome_alu VARCHAR(80) NOT NULL,   -- Coluna para o nome do aluno
    email_alu VARCHAR(50) NOT NULL,   -- Coluna para o email do aluno
    telefone_alu VARCHAR(80),
    data_nasc_alu DATE NOT NULL,
    ativo_alu BOOLEAN DEFAULT TRUE
);

-- Interagindo com as colunas de uma tabela
ALTER TABLE Aluno ADD cpf VARCHAR(11) NOT NULL UNIQUE AFTER id_alu;   -- Criando uma coluna nova DEPOIS do id_alu
ALTER TABLE Aluno CHANGE cpf cpf_alu VARCHAR(11) NOT NULL UNIQUE;   -- Modificando o nome de uma coluna existente

-- Renomeando uma tabela (cuidado com isso!)
RENAME TABLE Aluno TO Alunos;

-- Excluindo uma tabela (exclui os dados juntos!)
-- DROP TABLE Alunos;

-- Criando e referenciando uma tabela com FK (Foreign Key)
CREATE TABLE Departamento (
    id_dept INT PRIMARY KEY AUTO_INCREMENT,
    nome_dept VARCHAR(50)
);

CREATE TABLE Funcionario (
    id_func INT PRIMARY KEY AUTO_INCREMENT,
    nome_func VARCHAR(50),
    id_dept_fk INT NOT NULL,
    FOREIGN KEY (id_dept_fk) REFERENCES Departamento (id_dept)   -- Referencia iniciando com FK
);
