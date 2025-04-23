-- Atividade 1: Crie a modelagem física do bd mostrado em aula (01/04)

-- Apaga o bd anterior se existir um
DROP DATABASE IF EXISTS atividade1;

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

-- Atividade 2: Insira os dados nas tabelas (08/04)

-- Inserindo dados
INSERT INTO Usuario(nome_alu, data_nasc_alu, email_alu) VALUES   -- Inserindo usando o método ""
    ("Amanda Rangel", "2005-08-11", "amanda@gmail.com"),
    ("Júlio Cézar", "2003-09-17", "julio@gmail.com"),
    ("Filipe Maciel", "2003-09-24", "filipe@gmail.com"),
    ("Breno Dantas", "2005-11-01", "breno@gmail.com");
INSERT INTO Usuario(nome_alu, data_nasc_alu, email_alu) VALUES ("José Fernando", "2005-01-01", "fernando@gamil.com");   -- Inserindo usando o método ""
INSERT INTO Usuario(nome_alu, data_nasc_alu, email_alu) VALUES ("Caian Henrique", "2001-02-01", "caian@gmail.com");
INSERT INTO Usuario(nome_alu, data_nasc_alu, email_alu) VALUES ("Gabriel Zani", "1998-03-01", "gabriel@gmail.com");
INSERT INTO Usuario(nome_alu, data_nasc_alu, email_alu) VALUES ("Hermes Soares", "1988-05-01", "hermes@gmail.com");
INSERT INTO Usuario(nome_alu, data_nasc_alu, email_alu) VALUES ("Evandro Murilo", "1996-06-01", "murilo@gmail.com");
INSERT INTO Usuario(nome_alu, data_nasc_alu, email_alu) VALUES ("Thalys Braga", "1995-07-01", "braga@gmail.com");

INSERT INTO Professor(nome_prof, telefone_prof, email_prof) VALUES 
    ("Elias", "69999999999", "elias@ifro.edu.br"),
    ("Jackson", "69989999999", "jackson@ifro.edu.br"),
    ("Clayton", "69997999999", "clayton@ifro.edu.br");

INSERT INTO Disciplina(nome_disc) VALUES 
    ("Banco de Dados 2"),
    ("Programação Orientada a Objetos"),
    ("Redes de Computadores 1");

INSERT INTO Assunto(texto_assunto, fk_id_disc) VALUES 
    ("Modelagem Conceitual e Lógica", 1),
    ("Modelagem Física", 1),
    ("Classes e Métodos", 2),
    ("Herança e Polimofirsmo", 2),
    ("Endereçamento de IP", 3),
    ("Proxy e Firewall", 3);

-- Atividade 3: Vamos visualizar os dados das tabelas de diferentes formas (15/04)

-- Checando TODAS as colunas das tabelas
SELECT * FROM Usuario;
SELECT * FROM Professor;
SELECT * FROM Disciplina;
SELECT * FROM Assunto;

-- Checando ALGUMAS colunas das tabelas
SELECT nome_alu, email_alu FROM Usuario;
SELECT nome_prof, email_prof FROM Professor;

-- Checando uma linha da tabela com uma CONDIÇÃO
SELECT * FROM Usuario WHERE email_alu = "amanda@gmail.com";   -- Procura na tabela Usuario, na coluna email_alu, 
											                  -- todos os emails iguais a amanda@gmail.com

-- Checando colunas específicas da tabela com um OPERADOR
SELECT * FROM Usuario WHERE data_nasc_alu >= "2005-01-01";   -- Procura na tabela Usuario, na coluna data_nasc_alu, 
															 -- todas as datas iguais ou acima do ano de 2005

-- Checando colunas da tabela com uma ORDENAÇÃO
SELECT * FROM Usuario ORDER BY data_nasc_alu DESC;   -- Procura na tabela Usuario, todas as colunas
								                     -- ordenadas pela data de nascimento de forma decrescente

-- Checando linhas com INTERVALO de valores
SELECT * FROM Usuario WHERE id_usuario >= 5 AND id_usuario <= 9;   -- Procura na tabela Usuario, os IDs da coluna 
                                                                   -- id_usuario entre 5 e 9

-- Checando com MÚLTIPLAS condições e ordenação
SELECT * FROM Usuario 
	WHERE id_usuario >= 4 AND data_nasc_alu <= "2000-01-01" 
		ORDER BY nome_alu;   -- Procura na tabela Usuario, todas as colunas onde o id_usuario seja igual ou maior que 4
							 -- e as datas iguais ou abaixo do ano de 2000, ordenadas pelo nome dos alunos

-- Checando linhas onde os nomes INICIAM com a letra J
SELECT * FROM Usuario WHERE nome_alu LIKE "J%";   -- Procura na tabela Usuario, os nomes de alunos que
                                                  -- iniciam o nome com a letra J usando um comando próprio do MySQL

-- Checando por linhas onde os nomes CONTÉM a letra A no terceiro caractere
SELECT * FROM Usuario 
    WHERE nome_alu LIKE '__A%';   -- Procura na tabela Usuario,
								  -- todos os nomes onde a terceira letra é A

-- Checando usuários com IDs entre 5 e 10
SELECT * FROM Usuario WHERE id_usuario BETWEEN 5 AND 10;   -- Procura na tabela Usuario, os IDs entre 5 e 10

-- Atividade 4: Vamos atualizar tabelas e dados de um bd (15/04)

-- Atualizando colunas de uma tabela do bd
-- UPDATE Usuario SET nome_alu="Sharaskasvaldo Silvassauro";   -- Cuidado, isso altera TODOS os usuários
                                                               -- a receberem o nome Sharaskasvaldo Silvassauro

-- Maneira correta (aquela que não te demite)
UPDATE Usuario SET nome_alu = "Júlio Cézar (Juleba)" WHERE id_usuario = 1;
UPDATE Usuario SET nome_alu = "Amanda Rangel (Amandinha)" WHERE id_usuario = 2;
SELECT * FROM Usuario;


-- Faça uma nova coluna chamada "status_alu" com três combinativos e depois atualize os dados dessa coluna para ficarem todos ativos
ALTER TABLE Usuario ADD status_alu VARCHAR(50);
UPDATE Usuario SET status_alu = "ativo";
SELECT * FROM Usuario;

DELETE FROM Usuario;   -- Deleta todos os usuários (CUIDADO!)
DELETE FROM Usuario WHERE id_usuario IN (1, 2);   -- Forma correta de deletar os usuários

-- Conta quantos usuários ainda restam na tabela
SELECT COUNT(*) FROM Usuario;