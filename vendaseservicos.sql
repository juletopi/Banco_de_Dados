-- Crie a modelagem física do bd descrito em aula (22/04)
DROP DATABASE IF EXISTS vendaseservicos;
CREATE DATABASE vendaseservicos;
USE vendaseservicos;

-- Sem dependência

CREATE TABLE Cliente (
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(100) NOT NULL,
    cpf_cnpj VARCHAR(14) NOT NULL UNIQUE,
    razao_social VARCHAR(100),
    data_nasc DATE,
    sexo CHAR(1)
);

CREATE TABLE Funcionario (
	id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    cnh VARCHAR(9),
    nome_func VARCHAR(100) NOT NULL,
    cpf_cnpj VARCHAR(11) NOT NULL UNIQUE,
    data_nasc DATE,
    sexo CHAR(1)
);

CREATE TABLE Equipamento (
	id_equipamento INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(200)
);

CREATE TABLE TipoPag (
	id_tipopag INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(200)
);

CREATE TABLE Servico (
	id_servico INT PRIMARY KEY AUTO_INCREMENT,
    valor_atual DOUBLE,
    tempo_estimado DATETIME,
    descricao VARCHAR(200)
);

-- Com dependência

CREATE TABLE Caixa (
	id_caixa INT PRIMARY KEY AUTO_INCREMENT,
    datahora_abertura DATETIME,
    datahora_fechamento DATETIME,
    saldo_incial DOUBLE,
    saldo_final DOUBLE,
    total_entradas INT,
    total_saidas INT,
    id_funcionario_fk INT NOT NULL,
    FOREIGN KEY(id_funcionario_fk) REFERENCES Funcionario(id_funcionario)
);

CREATE TABLE Vendas (
	id_vendas INT PRIMARY KEY AUTO_INCREMENT,
    valor_total DOUBLE NOT NULL,
    valor_final DOUBLE NOT NULL,
    desconto DOUBLE,
    data_venda DATE,
    id_cliente_fk INT,
    FOREIGN KEY(id_cliente_fk) REFERENCES Cliente(id_cliente)
);

CREATE TABLE Despesa (
	id_despesa INT PRIMARY KEY AUTO_INCREMENT,
	status_desp VARCHAR(50),
    valor_desp DOUBLE,
    descricao_desp VARCHAR(200),
    id_caixa_fk INT NOT NULL,
    FOREIGN KEY(id_caixa_fk) REFERENCES Caixa(id_caixa)
);

CREATE TABLE Recebimento (
	id_recebimento INT PRIMARY KEY AUTO_INCREMENT,
    valor_parcela DOUBLE,
    status_receb VARCHAR(50),
    data_receb DATE,
    id_caixa_fk INT NOT NULL,
    id_vendas_fk INT NOT NULL,
    id_tipopag_fk INT NOT NULL,
    FOREIGN KEY(id_caixa_fk) REFERENCES Caixa(id_caixa),
    FOREIGN KEY(id_vendas_fk) REFERENCES Vendas(id_vendas),
    FOREIGN KEY(id_tipopag_fk) REFERENCES TipoPag(id_tipopag)
);

CREATE TABLE Encargo (
	id_encargo INT PRIMARY KEY AUTO_INCREMENT,
    data_encargo DATE,
    valor_encargo DOUBLE,
    status_encargo VARCHAR(20),
    descricao VARCHAR(200),
    id_equipamento_fk INT NOT NULL,
    id_recebimento_fk INT NOT NULL,
    FOREIGN KEY(id_equipamento_fk) REFERENCES Equipamento(id_equipamento),
    FOREIGN KEY(id_recebimento_fk) REFERENCES Recebimento(id_recebimento)
);

CREATE TABLE Historico (
	id_historico INT PRIMARY KEY AUTO_INCREMENT,
    valor_hist DOUBLE,
    id_servico_fk INT NOT NULL,
    id_funcionario_fk INT NOT NULL,
    FOREIGN KEY(id_servico_fk) REFERENCES Servico(id_servico),
    FOREIGN KEY(id_funcionario_fk) REFERENCES Funcionario(id_funcionario)
);

-- Terceiras tabelas

CREATE TABLE Venda_Servico (
	id_venda_servico INT PRIMARY KEY AUTO_INCREMENT,
    qtd INT NOT NULL DEFAULT 1,
    valor_unitario DOUBLE NOT NULL,
    id_vendas_fk INT NOT NULL,
    id_servico_fk INT NOT NULL,
    FOREIGN KEY(id_vendas_fk) REFERENCES Vendas(id_vendas),
    FOREIGN KEY(id_servico_fk) REFERENCES Servico(id_servico)
);

-- Faça o insert de 10 clientes, 10 serviços, 5 funcionários e 10 caixas (29/04)
-- Inserts

INSERT INTO Cliente (nome_cliente, cpf_cnpj, razao_social, data_nasc, sexo) VALUES
	("Carlos Andrade", "12345678900", "Carlos Andrade ME", "1985-06-15", "M"),
	("Fernanda Lima", "23456789001", "Fernanda Lima LTDA", "1990-04-22", "F"),
	("João Pereira", "34567890123", "João Pereira EPP", "1978-09-30", "M"),
	("Mariana Silva", "45678901234", "Mariana Silva MEI", "1989-11-10", "F"),
	("Ana Souza", "56789012345", "Ana Souza ME", "2000-03-05", "F"),
	("Ricardo Melo", "67890123456", "Ricardo Melo LTDA", "1982-01-18", "M"),
	("Juliana Rocha", "78901234567", "Juliana Rocha EIRELI", "1995-07-25", "F"),
	("Felipe Gomes", "89012345678", "Felipe Gomes LTDA", "1987-12-12", "M"),
	("Roberta Dias", "90123456789", "Roberta Dias ME", "1992-08-08", "F"),
	("Bruno Fernandes", "01234567890", "Bruno Fernandes LTDA", "1980-05-20", "M");
    
INSERT INTO Funcionario (cnh, nome_func, cpf_cnpj, data_nasc, sexo) VALUES
	("123456789", "Pedro Oliveira", "11122233344", "1990-02-20", "M"),
	("234567890", "Lucas Almeida", "22233344455", "1988-05-12", "M"),
	("345678901", "Camila Torres", "33344455566", "1995-09-08", "F"),
	("456789012", "Tiago Martins", "44455566677", "1983-11-01", "M"),
	("567890123", "Laura Castro", "55566677788", "1992-06-18", "F");

INSERT INTO Servico (valor_atual, tempo_estimado, descricao) VALUES
	(150.00, "2025-04-29 01:30:00", "Troca de óleo e filtro"),
	(300.00, "2025-04-29 03:00:00", "Revisão completa do motor"),
	(80.00, "2025-04-29 00:45:00", "Alinhamento e balanceamento"),
	(200.00, "2025-04-29 02:00:00", "Instalação de ar-condicionado"),
	(120.00, "2025-04-29 01:15:00", "Troca de pastilhas de freio"),
	(90.00, "2025-04-29 01:00:00", "Reparo elétrico simples"),
	(400.00, "2025-04-29 04:00:00", "Troca de embreagem"),
	(250.00, "2025-04-29 02:30:00", "Troca de correia dentada"),
	(50.00, "2025-04-29 00:30:00", "Lavagem completa"),
	(180.00, "2025-04-29 01:45:00", "Reparo de suspensão");

INSERT INTO Caixa (datahora_abertura, datahora_fechamento, saldo_incial, saldo_final, total_entradas, total_saidas, id_funcionario_fk) VALUES
	("2025-04-29 08:00:00", "2025-04-29 18:00:00", 1000.00, 1800.00, 10, 2, 1),
	("2025-04-28 08:00:00", "2025-04-28 18:00:00", 800.00, 1600.00, 9, 3, 2),
	("2025-04-27 08:00:00", "2025-04-27 18:00:00", 900.00, 1700.00, 11, 1, 3),
	("2025-04-26 08:00:00", "2025-04-26 18:00:00", 850.00, 1400.00, 8, 2, 4),
	("2025-04-25 08:00:00", "2025-04-25 18:00:00", 750.00, 1350.00, 7, 1, 5),
	("2025-04-24 08:00:00", "2025-04-24 18:00:00", 950.00, 1750.00, 10, 2, 1),
	("2025-04-23 08:00:00", "2025-04-23 18:00:00", 1000.00, 1650.00, 9, 4, 2),
	("2025-04-22 08:00:00", "2025-04-22 18:00:00", 920.00, 1680.00, 10, 2, 3),
	("2025-04-21 08:00:00", "2025-04-21 18:00:00", 870.00, 1550.00, 8, 3, 4),
	("2025-04-20 08:00:00", "2025-04-20 18:00:00", 940.00, 1720.00, 11, 1, 5);

SELECT * FROM Cliente;
SELECT * FROM Funcionario;
SELECT * FROM Servico;
SELECT * FROM Caixa;

SELECT SUM(saldo_final) FROM Caixa;  -- Soma do saldo final de todos os caixas
SELECT AVG(saldo_final) FROM Caixa;  -- Média do saldo final de todos os caixas
SELECT nome_cliente FROM Cliente ORDER BY nome_cliente ASC;  -- Apresenta todos os clientes em ordem crescente
