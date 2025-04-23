-- Atividade 1: Crie a modelagem física do bd mostrado em aula (01/04)

-- Criando e selecionando o bd
CREATE DATABASE atividade1; 
USE atividade1;

-- Tabelas sem dependência
CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome_alu VARCHAR(80) NOT NULL,
    data_nasc_alu DATE NOT NULL,
    email_alu VARCHAR(50) NOT NULL
);

CREATE TABLE Professor (
    id_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome_prof VARCHAR(80) NOT NULL,
    telefone_prof VARCHAR(80),
    email_prof VARCHAR(50) NOT NULL
);

CREATE TABLE Banca (
    id_banca INT PRIMARY KEY AUTO_INCREMENT,
    nome_banca VARCHAR(80) NOT NULL,
    sigla_banca VARCHAR(10) NOT NULL
);

CREATE TABLE Disciplina (
    id_disc INT PRIMARY KEY AUTO_INCREMENT,
    nome_disc VARCHAR(80) NOT NULL
);

-- Tabelas com dependência
CREATE TABLE Assunto (
    id_assunto INT PRIMARY KEY AUTO_INCREMENT,
    texto_assunto TEXT NOT NULL,
    fk_id_disc INT NOT NULL,
    FOREIGN KEY (fk_id_disc) REFERENCES Disciplina (id_disc)
);

CREATE TABLE Questao (
    id_questao INT PRIMARY KEY AUTO_INCREMENT,
    enunciado TEXT NOT NULL,
    modalidade VARCHAR(50) NOT NULL,
    nivel VARCHAR(50) NOT NULL,
    fk_id_banca INT NOT NULL,
    fk_id_assunto INT NOT NULL,
    FOREIGN KEY (fk_id_banca) REFERENCES Banca (id_banca),
    FOREIGN KEY (fk_id_assunto) REFERENCES Assunto (id_assunto)
);

CREATE TABLE Alternativas (
    id_alt INT PRIMARY KEY AUTO_INCREMENT,
    texto_alt VARCHAR(200) NOT NULL,
    gabarito_alt BOOL DEFAULT FALSE,
    fk_id_questao INT NOT NULL,
    FOREIGN KEY (fk_id_questao) REFERENCES Questao (id_questao)
);

-- Terceiras tabelas
CREATE TABLE Resposta (
    id_resposta INT PRIMARY KEY AUTO_INCREMENT,
    data_resp DATE DEFAULT(CURRENT_DATE),
    resultado VARCHAR(100) NOT NULL,
    resposta_user VARCHAR(50) NOT NULL,
    fk_id_usuario INT,
    fk_id_questao INT,
    FOREIGN KEY (fk_id_usuario) REFERENCES Usuario (id_usuario),
    FOREIGN KEY (fk_id_questao) REFERENCES Questao (id_questao)
);

CREATE TABLE Comentario (
    id_coment INT PRIMARY KEY AUTO_INCREMENT,
    texto_coment TEXT NOT NULL,
    data_coment DATE,
    fk_id_questao INT,
    fk_id_professor INT,
    FOREIGN KEY (fk_id_questao) REFERENCES Questao (id_questao),
    FOREIGN KEY (fk_id_professor) REFERENCES Professor (id_professor)
);

SHOW TABLES;   -- Mostrando as tabelas
DESCRIBE Questao;   -- Mostrando a estrutura da tabela Questao
SHOW CREATE TABLE Questao;   -- Mostrando o comando SQL que criou a tabela Questao
