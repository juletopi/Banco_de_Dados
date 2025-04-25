DROP DATABASE IF EXISTS ecomerce;
CREATE DATABASE ecomerce;
USE ecomerce;

CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(100),
	cpfCnpj VARCHAR(100),
    email VARCHAR(100),
    endereco VARCHAR(255),
    telefone VARCHAR(20)
);
SELECT * FROM Clientes;

CREATE TABLE Categorias(
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(100)
);
SELECT * FROM Categorias;

CREATE TABLE Produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100),
    descricao TEXT,
    preco DECIMAL(10, 2),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria)
);
SELECT * FROM Produtos;

CREATE TABLE Estoque (
    id_produto INT,
    quantidade_estoque INT,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);
SELECT * FROM Estoque;

CREATE TABLE Vendas (
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    data_venda DATE,
    valorFinal double,
    status VARCHAR(50),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);
SELECT * FROM Vendas;

CREATE TABLE ItensVendidos (
    id_item INT PRIMARY KEY AUTO_INCREMENT,
    id_venda INT,
    id_produto INT,
    quantidade INT,
    preco_unitario DECIMAL(10, 2),
    FOREIGN KEY (id_venda) REFERENCES Vendas(id_venda),
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);
SELECT * FROM ItensVendidos;

CREATE TABLE TiposPagamento (
    id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    tipo_pagamento VARCHAR(50)
);
SELECT * FROM ItensVendidos;

CREATE TABLE Pagamentos (
    id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    id_venda INT,
    id_tipo_pagamento INT,
    valor DECIMAL(10, 2),
    status_pagamento VARCHAR(50),
    data_pagamento DATE,
    FOREIGN KEY (id_venda) REFERENCES Vendas(id_venda),
    FOREIGN KEY (id_tipo_pagamento) REFERENCES TiposPagamento(id_pagamento)
);
SELECT * FROM Pagamentos;

CREATE TABLE HistoricoPrecos (
    id_produto INT,
    data_alteracao DATE,
    preco DECIMAL(10, 2),
    PRIMARY KEY (id_produto, data_alteracao),
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);
SELECT * FROM HistoricoPrecos;

-- Inserir categorias (10 categorias para exemplo)
INSERT INTO Categorias (nome_categoria) VALUES
('Eletrônicos'),
('Vestuário'),
('Alimentos'),
('Brinquedos'),
('Esportes'),
('Livros'),
('Móveis'),
('Cosméticos'),
('Ferramentas'),
('Beleza e Cuidados');


INSERT INTO Produtos (nome_produto, descricao, preco, id_categoria) VALUES
('Smartphone Galaxy', 'Smartphone com tela 6.5", 128GB de memória', 1599.99, 1),
('Notebook Dell', 'Notebook i7, 16GB RAM, 512GB SSD', 4999.99, 1),
('Camiseta Estampada', 'Camiseta 100% algodão, tamanho M', 49.99, 2),
('Calça Jeans', 'Calça jeans slim fit, tamanho 42', 89.99, 2),
('Arroz 5kg', 'Pacote de arroz tipo 1, 5kg', 18.50, 3),
('Feijão 1kg', 'Feijão preto tipo 1', 7.99, 3),
('Bola de Futebol', 'Bola de futebol oficial, tamanho 5', 79.99, 4),
('Carrinho de Brinquedo', 'Carrinho de brinquedo de plástico', 29.99, 4),
('Tênis Nike', 'Tênis esportivo, modelo Air Max', 499.99, 5),
('Bola de Basquete', 'Bola de basquete oficial', 119.99, 5),
('Livro Harry Potter', 'Livro da série Harry Potter - Capa dura', 49.99, 6),
('Revista de Moda', 'Revista de moda feminina, edição especial', 12.99, 6),
('Sofá Retrátil', 'Sofá retrátil 3 lugares, cor cinza', 1799.99, 7),
('Mesa de Jantar', 'Mesa de jantar com 6 cadeiras', 1299.99, 7),
('Shampoo Loreal', 'Shampoo hidratação intensiva', 19.99, 8),
('Perfume Chanel', 'Perfume feminino Chanel No. 5', 499.99, 8),
('Furadeira Elétrica', 'Furadeira de impacto 750W', 159.99, 9),
('Serra Tico-Tico', 'Serra tico-tico para madeira', 129.99, 9),
('Creme Facial', 'Creme facial anti-idade', 89.99, 10),
('Escova de Cabelo', 'Escova de cabelo profissional', 29.99, 10),
('Smartwatch', 'Relógio inteligente com monitoramento de atividades', 299.99, 1),
('Tablet Samsung', 'Tablet com tela de 10 polegadas, 64GB', 899.99, 1),
('Jaqueta de Couro', 'Jaqueta de couro tamanho G', 199.99, 2),
('Tênis de Corrida', 'Tênis de corrida Nike, tamanho 42', 229.99, 2),
('Macarrão 500g', 'Pacote de macarrão espaguete', 3.99, 3),
('Café em Pó', 'Café moído 500g', 14.99, 3),
('Puzzles 500 peças', 'Quebra-cabeça de 500 peças', 59.99, 4),
('Boneca Barbie', 'Boneca Barbie com acessórios', 99.99, 4),
('Raquete de Tênis', 'Raquete de tênis Wilson', 249.99, 5),
('Tênis Converse', 'Tênis casual Converse, cor preta', 349.99, 5),
('Livro O Senhor dos Anéis', 'Livro da trilogia O Senhor dos Anéis', 59.99, 6),
('Caderno Universitário', 'Caderno universitário 10 matérias', 19.99, 6),
('Cadeira de Escritório', 'Cadeira de escritório ergonômica', 299.99, 7),
('Cômoda 5 Gavetas', 'Cômoda de madeira com 5 gavetas', 799.99, 7),
('Perfume Dior', 'Perfume masculino Dior Sauvage', 349.99, 8),
('Desodorante Rexona', 'Desodorante em spray Rexona 150ml', 12.99, 8),
('Chave de Fenda', 'Chave de fenda 6mm', 7.99, 9),
('Alicate de Corte', 'Alicate de corte 150mm', 19.99, 9),
('Máscara Facial', 'Máscara facial para hidratação', 49.99, 10),
('Balde de Plástico', 'Balde de plástico 15L', 10.99, 10);


INSERT INTO Estoque (id_produto, quantidade_estoque) VALUES
(1, FLOOR(RAND() * 29) + 2),
(2, FLOOR(RAND() * 29) + 2),
(3, FLOOR(RAND() * 29) + 2),
(4, FLOOR(RAND() * 29) + 2),
(5, FLOOR(RAND() * 29) + 2),
(6, FLOOR(RAND() * 29) + 2),
(7, FLOOR(RAND() * 29) + 2),
(8, FLOOR(RAND() * 29) + 2),
(9, FLOOR(RAND() * 29) + 2),
(10, FLOOR(RAND() * 29) + 2),
(11, FLOOR(RAND() * 29) + 2),
(12, FLOOR(RAND() * 29) + 2),
(13, FLOOR(RAND() * 29) + 2),
(14, FLOOR(RAND() * 29) + 2),
(15, FLOOR(RAND() * 29) + 2),
(16, FLOOR(RAND() * 29) + 2),
(17, FLOOR(RAND() * 29) + 2),
(18, FLOOR(RAND() * 29) + 2),
(19, FLOOR(RAND() * 29) + 2),
(20, FLOOR(RAND() * 29) + 2),
(21, FLOOR(RAND() * 29) + 2),
(22, FLOOR(RAND() * 29) + 2),
(23, FLOOR(RAND() * 29) + 2),
(24, FLOOR(RAND() * 29) + 2),
(25, FLOOR(RAND() * 29) + 2),
(26, FLOOR(RAND() * 29) + 2),
(27, FLOOR(RAND() * 29) + 2),
(28, FLOOR(RAND() * 29) + 2),
(29, FLOOR(RAND() * 29) + 2),
(30, FLOOR(RAND() * 29) + 2),
(31, FLOOR(RAND() * 29) + 2),
(32, FLOOR(RAND() * 29) + 2),
(33, FLOOR(RAND() * 29) + 2),
(34, FLOOR(RAND() * 29) + 2),
(35, FLOOR(RAND() * 29) + 2),
(36, FLOOR(RAND() * 29) + 2),
(37, FLOOR(RAND() * 29) + 2),
(38, FLOOR(RAND() * 29) + 2),
(39, FLOOR(RAND() * 29) + 2),
(40, FLOOR(RAND() * 29) + 2);


INSERT INTO Clientes (nome_cliente, cpfCnpj, email, endereco, telefone) VALUES
('João Silva', '123.456.789-00', 'joao.silva@email.com', 'Rua das Flores, 123, São Paulo - SP', '(11) 91234-5678'),
('Maria Oliveira', '987.654.321-00', 'maria.oliveira@email.com', 'Avenida Brasil, 456, Rio de Janeiro - RJ', '(21) 92345-6789'),
('Carlos Souza', '111.222.333-44', 'carlos.souza@email.com', 'Rua do Sol, 789, Belo Horizonte - MG', '(31) 93456-7890'),
('Ana Pereira', '555.666.777-88', 'ana.pereira@email.com', 'Rua das Palmeiras, 321, Curitiba - PR', '(41) 94567-8901'),
('Roberto Lima', '444.555.666-77', 'roberto.lima@email.com', 'Rua dos Limoeiros, 654, Salvador - BA', '(71) 95678-9012'),
('Fernanda Costa', '777.888.999-00', 'fernanda.costa@email.com', 'Avenida Santos Dumont, 987, Fortaleza - CE', '(85) 96789-0123'),
('Marcos Mendes', '222.333.444-55', 'marcos.mendes@email.com', 'Rua 25 de Março, 111, Porto Alegre - RS', '(51) 97890-1234'),
('Patricia Gomes', '888.999.000-11', 'patricia.gomes@email.com', 'Avenida Getúlio Vargas, 222, Recife - PE', '(81) 98901-2345'),
('Luiz Santos', '333.444.555-66', 'luiz.santos@email.com', 'Rua dos Bandeirantes, 333, Campinas - SP', '(19) 99112-3456'),
('Juliana Rocha', '999.000.111-22', 'juliana.rocha@email.com', 'Rua da Paz, 444, Florianópolis - SC', '(48) 92223-4567'),
('Felipe Alves', '666.777.888-99', 'felipe.alves@email.com', 'Avenida das Américas, 555, Manaus - AM', '(92) 93334-5678'),
('Tais Martins', '123.123.123-00', 'tais.martins@email.com', 'Rua Nova, 666, Natal - RN', '(84) 94445-6789'),
('Eduardo Carvalho', '234.234.234-11', 'eduardo.carvalho@email.com', 'Avenida dos Trabalhadores, 777, Goiânia - GO', '(62) 95556-7890'),
('Sofia Almeida', '345.345.345-22', 'sofia.almeida@email.com', 'Rua da Liberdade, 888, João Pessoa - PB', '(83) 96667-8901'),
('Gustavo Ferreira', '456.456.456-33', 'gustavo.ferreira@email.com', 'Avenida das Nações, 999, Campo Grande - MS', '(67) 97778-9012'),
('Isabela Silva', '567.567.567-44', 'isabela.silva@email.com', 'Rua dos Coqueiros, 101, Belém - PA', '(91) 98889-0123'),
('Renato Dias', '678.678.678-55', 'renato.dias@email.com', 'Rua da Alegria, 202, São Luís - MA', '(98) 99990-1234'),
('Larissa Barbosa', '789.789.789-66', 'larissa.barbosa@email.com', 'Avenida da Independência, 303, Aracaju - SE', '(79) 92201-2345'),
('Leonardo Cardoso', '890.890.890-77', 'leonardo.cardoso@email.com', 'Rua da Esperança, 404, Maceió - AL', '(82) 93312-3456'),
('Viviane Almeida', '901.901.901-88', 'viviane.almeida@email.com', 'Rua do Horizonte, 505, Vitória - ES', '(27) 94423-4567'),
('Gustavo Martins', '012.012.012-99', 'gustavo.martins@email.com', 'Avenida das Oliveiras, 606, Cuiabá - MT', '(65) 95534-5678'),
('Camila Ferreira', '123.321.432-00', 'camila.ferreira@email.com', 'Rua do Sol, 707, Brasília - DF', '(61) 96645-6789'),
('Ricardo Souza', '234.432.543-11', 'ricardo.souza@email.com', 'Rua São João, 808, São José - SC', '(48) 97756-7890'),
('Fernanda Pereira', '345.543.654-22', 'fernanda.pereira@email.com', 'Avenida Rio Branco, 909, Recife - PE', '(81) 98867-8901'),
('Daniel Lima', '456.654.765-33', 'daniel.lima@email.com', 'Rua das Árvores, 1000, Belo Horizonte - MG', '(31) 99978-9012'),
('Sandra Costa', '567.765.876-44', 'sandra.costa@email.com', 'Rua Santa Teresa, 1100, Fortaleza - CE', '(85) 98889-0123'),
('Jorge Almeida', '678.876.987-55', 'jorge.almeida@email.com', 'Avenida São Paulo, 1200, Campinas - SP', '(19) 99990-1234'),
('Priscila Rocha', '789.987.098-66', 'priscila.rocha@email.com', 'Rua do Rio, 1300, Porto Alegre - RS', '(51) 91101-2345');


INSERT INTO Vendas (id_cliente, data_venda, valorFinal) VALUES
(1, '2025-02-18', 1699.99),
(2, '2025-02-18', 4999.99),
(3, '2025-02-18', 59.99),
(4, '2025-02-18', 1799.99),
(5, '2025-02-18', 1299.99),
(6, '2025-02-18', 349.99),
(7, '2025-02-18', 499.99),
(8, '2025-02-18', 1599.99),
(9, '2025-02-18', 299.99),
(10, '2025-02-18', 1199.99),
(11, '2025-02-18', 89.99),
(12, '2025-02-18', 99.99),
(13, '2025-02-18', 799.99),
(14, '2025-02-18', 699.99),
(15, '2025-02-18', 199.99),
(16, '2025-02-18', 159.99),
(17, '2025-02-18', 1499.99),
(18, '2025-02-18', 259.99),
(19, '2025-02-18', 399.99),
(20, '2025-02-18', 799.99);


INSERT INTO ItensVendidos (id_venda, id_produto, quantidade, preco_unitario) VALUES
(1, 1, 1, 1599.99),
(2, 2, 1, 4999.99),
(3, 3, 1, 59.99),
(4, 13, 1, 1799.99),
(5, 14, 1, 1299.99),
(6, 16, 1, 349.99),
(7, 9, 1, 499.99),
(8, 22, 1, 1599.99),
(9, 21, 1, 299.99),
(10, 5, 1, 1199.99),
(11, 12, 1, 89.99),
(12, 4, 1, 99.99),
(13, 30, 1, 799.99),
(14, 27, 1, 699.99),
(15, 17, 1, 199.99),
(16, 18, 1, 159.99),
(17, 10, 1, 1499.99),
(18, 29, 1, 259.99),
(19, 26, 1, 399.99),
(20, 34, 1, 799.99);


INSERT INTO TiposPagamento (tipo_pagamento) VALUES ('Cartão de Crédito'), ('Boleto'), ('Pix'), ('Dinheiro'), ('Transferência');


INSERT INTO Pagamentos (id_venda, id_tipo_pagamento, valor, status_pagamento, data_pagamento) VALUES
(1, 1, 1599.99, 'Pago', '2025-02-18'),
(2, 2, 4999.99, 'Pago', '2025-02-18'),
(3, 3, 59.99, 'Pago', '2025-02-18'),
(4, 4, 1799.99, 'Pago', '2025-02-18'),
(5, 5, 1299.99, 'Pago', '2025-02-18'),
(6, 1, 349.99, 'Pago', '2025-02-18'),
(7, 2, 499.99, 'Pago', '2025-02-18'),
(8, 3, 1599.99, 'Pago', '2025-02-18'),
(9, 4, 299.99, 'Pago', '2025-02-18'),
(10, 5, 1199.99, 'Pago', '2025-02-18');

-- Aula 04: Vamos trabalhar com os dados deste bd (22/04)

-- Aplicando condições para listar a tabela Produtos
SELECT preco, nome_produto FROM Produtos WHERE preco > 500 AND preco < 1000;

-- Alterando a data_pagamento das linhas 5, 7 e 9
UPDATE Pagamentos SET data_pagamento = "2025-04-22" WHERE id_pagamento IN (5, 7, 9);
SELECT * FROM Pagamentos;

-- Tentando deletar um cliente do ID 1
DELETE FROM Clientes WHERE id_cliente = 1;

-- Listando clientes ordenados pelos seus nomes de forma decrescente
SELECT * FROM Clientes ORDER BY nome_cliente DESC;

-- Listando cliente(s) com o CPF 345.5*3.654-*2
SELECT * FROM Clientes WHERE cpfCnpj LIKE "345.5_3.654-_2";

-- Realizando consultas analíticas e estatísticas sobre a tabela Vendas
SELECT DISTINCT(data_venda) FROM Vendas;
SELECT valorFinal FROM Vendas;
SELECT AVG(valorFinal) FROM Vendas;
SELECT SUM(valorFinal) FROM Vendas;
SELECT MIN(valorFinal) FROM Vendas;
SELECT COUNT(id_venda) FROM Vendas;
SELECT COUNT(STATUS) FROM Vendas;
SELECT * FROM Vendas ORDER BY valorFinal DESC LIMIT 3;
SELECT * FROM Vendas WHERE STATUS IS NULL;