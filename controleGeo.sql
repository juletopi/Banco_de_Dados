CREATE DATABASE controleGeo;
USE controleGeo;

-- Usuário
CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome_usu VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(50),
    cpf_cnpj VARCHAR(14) NOT NULL UNIQUE,
    senha VARCHAR(30) NOT NULL
);

-- Imagens
CREATE TABLE Imagens (
    id_imagens INT PRIMARY KEY AUTO_INCREMENT,
    data_captura DATE NOT NULL,
    caminho_arq TEXT NOT NULL,
    origem VARCHAR(100)
);

-- Lote
CREATE TABLE Lote (
    id_lote INT PRIMARY KEY AUTO_INCREMENT,
    nome_lote VARCHAR(100) NOT NULL,
    delimitacao_area TEXT NOT NULL,
    tamanho_km2 DECIMAL(6,2),
    latitude DECIMAL(10,6) NOT NULL,
    longitude DECIMAL(10,6) NOT NULL,
    fk_id_usuario INT NOT NULL,
    FOREIGN KEY (fk_id_usuario) REFERENCES Usuario(id_usuario)
);

-- Histórico
CREATE TABLE Historico (
    id_historico INT PRIMARY KEY AUTO_INCREMENT,
    data_hist DATE NOT NULL,
    descricao TEXT,
    fk_id_lote INT NOT NULL,
    fk_id_imagens INT NOT NULL,
    FOREIGN KEY (fk_id_lote) REFERENCES Lote(id_lote),
    FOREIGN KEY (fk_id_imagens) REFERENCES Imagens(id_imagens)
);

-- Infraestrutura
CREATE TABLE Infraestrutura (
    id_infraestrutura INT PRIMARY KEY AUTO_INCREMENT,
    tipo_infra VARCHAR(100),
    descricao TEXT,
    localizacao TEXT NOT NULL,
    fk_id_lote INT NOT NULL,
    fk_id_imagens INT NOT NULL,
    FOREIGN KEY (fk_id_lote) REFERENCES Lote(id_lote),
    FOREIGN KEY (fk_id_imagens) REFERENCES Imagens(id_imagens)
);

-- Relevo
CREATE TABLE Relevo (
    id_relevo INT PRIMARY KEY AUTO_INCREMENT,
    tipo_rel VARCHAR(100) NOT NULL,
    declividade DECIMAL(5,2) NOT NULL,
    altitude DECIMAL(6,2) NOT NULL,
    fk_id_lote INT NOT NULL,
    fk_id_imagens INT NOT NULL,
    FOREIGN KEY (fk_id_lote) REFERENCES Lote(id_lote),
    FOREIGN KEY (fk_id_imagens) REFERENCES Imagens(id_imagens)
);

-- Sensores
CREATE TABLE Sensores (
    id_sensores INT PRIMARY KEY AUTO_INCREMENT,
    tipo_sensor VARCHAR(100) NOT NULL,
    valor_lido DECIMAL(6,2) NOT NULL,
    data_leitura DATETIME NOT NULL,
    uni_medida VARCHAR(50) NOT NULL,
    fk_id_relevo INT NOT NULL,
    FOREIGN KEY (fk_id_relevo) REFERENCES Relevo(id_relevo)
);


-- Inserção de dados

-- Usuário
INSERT INTO Usuario (nome_usu, email, telefone, cpf_cnpj, senha) VALUES
('Carlos Andrade', 'carlos@gmail.com', '69999990001', '12345678901', 'geo2024abc'),
('Fernanda Lima', 'fernanda@gmail.com', NULL, '34567890123001', 'F3rn@L1m@2024'),
('João Silva', 'joao@hotmail.com', NULL, '98765432100', 'Joao!Silva1234'),
('Mariana Souza', 'mariana@hotmail.com', '69999990004', '45678901234001', 'MariSo2024_geo@'),
('Rafael Torres', 'rafael@gmail.com', '69999990005', '23456789012', 'R4faelT@rr3s89'),
('Juliana Rocha', 'juliana@outlook.com', '69999990006', '56789012345001', 'JRocha2024**!!@@##'),
('Tiago Martins', 'tiago@gmail.com', '69999990007', '89012345678', 'T!Mart_99882211'),
('Lucas Almeida', 'lucas@outlook.com', '69999990008', '90123456789001', 'LucasGeoXYZ2024v2'),
('Camila Torres', 'camila@hotmail.com', NULL, '78901234567', 'Camila$ens0r2024__'),
('Bruno Fernandes', 'bruno@gmail.com', '69999990010', '67890123456001', 'BrunoFern@001xt1234567890xyz');

SELECT * FROM Usuario;

-- Lotes
INSERT INTO Imagens (data_captura, caminho_arq, origem) VALUES
('2024-01-10', '/imagens/0odhu4.png', 'SENTINEL-2'),
('2024-02-15', '/imagens/0dn333.png', 'LANDSAT-9'),
('2024-03-05', '/imagens/0sdj5i.png', 'Outros'),
('2024-01-22', '/imagens/0qhx47.png', NULL),
('2024-02-01', '/imagens/0cdsj5.png', 'Outros'),
('2024-03-20', '/imagens/0vnd79.png', 'LANDSAT-9'),
('2024-06-10', '/imagens/08dbee.png', 'LANDSAT-9'),
('2024-06-15', '/imagens/0dff69.png', 'SENTINEL-2'),
('2024-06-20', '/imagens/0cnv43.png', 'Outros'),
('2024-04-10', '/imagens/01sdk2.png', NULL),
('2024-04-15', '/imagens/0xhe22.png', 'SENTINEL-2'),
('2024-05-01', '/imagens/0sjk7m.png', NULL),
('2024-06-01', '/imagens/06sjkd.png', 'Outros');

SELECT * FROM Imagens;

-- Lotes
INSERT INTO Lote (nome_lote, delimitacao_area, tamanho_km2, latitude, longitude, fk_id_usuario) VALUES
('Lote A', 'Polígono A', NULL, -11.440001, -61.440001, 1),
('Lote B', 'Polígono B', 560.50, -11.441002, -61.442002, 2),
('Lote C', 'Polígono C', 130.90, -11.442003, -61.443003, 3),
('Lote D', 'Polígono D', NULL, -11.443004, -61.444004, 4),
('Lote E', 'Polígono E', 20.80, -11.444005, -61.445005, 5),
('Lote F', 'Polígono F', 64.50, -11.445006, -61.446006, 6),
('Lote G', 'Polígono G', 218.00, -11.446007, -61.447007, 7),
('Lote H', 'Polígono H', 187.75, -11.447008, -61.448008, 8),
('Lote I', 'Polígono I', NULL, -11.448009, -61.449009, 9),
('Lote J', 'Polígono J', 206.25, -11.449010, -61.450010, 10);

SELECT * FROM Lote;

-- Histórico
INSERT INTO Historico (data_hist, descricao, fk_id_lote, fk_id_imagens) VALUES
('2024-01-15', 'Primeiro mapeamento completo.', 1, 1),
('2024-07-01', 'Revisão do pasto após período de seca.', 1, 1),
('2024-07-15', 'Instalação de novo galpão de sementes.', 2, 2),
('2024-07-20', 'Limpeza de canaleta detectada na imagem.', 3, 3),
('2024-08-01', 'Nova estrada foi identificada na divisa leste.', 1, 4),
('2024-02-17', 'Identificação de novas áreas de plantio.', 2, 2),
('2024-03-10', 'Atualização de infraestrutura.', 3, 3),
('2024-01-25', 'Mapeamento atualizado.', 4, 4),
('2024-08-12', 'Atualização do mapa com plantio de milho.', 2, 2),
('2024-08-15', 'Identificação de áreas de erosão avançada.', 5, 6),
('2024-02-03', 'Detectada erosão leve.', 5, 5),
('2024-03-22', 'Mapeamento atualizado.', 6, 6),
('2024-04-12', 'Nova cobertura vegetal detectada.', 7, 7),
('2024-09-07', 'Análise de uso de solo alterado.', 6, 7),
('2024-09-10', 'Nova infraestrutura adicionada (bebedouros).', 7, 8),
('2024-04-17', 'Plantação substituída.', 8, 8),
('2024-05-05', 'Galpão ampliado.', 9, 9),
('2024-06-02', 'Mapeamento atualizado.', 10, 10);

SELECT * FROM Historico;

-- Infraestrutura
INSERT INTO Infraestrutura (tipo_infra, descricao, localizacao, fk_id_lote, fk_id_imagens) VALUES
('Pasto', 'Área de pastagem', 'Setor Norte', 1, 1),
('Galpão', 'Galpão de armazenamento', 'Centro', 2, 2),
('Outros', 'Área de comunhão', 'Sul', 3, 3),
('Cercado', 'Cerca nova para gado', 'Noroeste', 1, 2),
('Pasto', 'Rotacionado para recuperação', 'Norte', 1, 3),
('Plantio', 'Milho safrinha 2024', 'Centro-Oeste', 2, 4),
('Estrada', 'Caminho de acesso', 'Leste', 4, 4),
('Estrada', 'Caminho de acesso', 'Oeste', 5, 5),
('Plantio', 'Plantio de soja', 'Norte', 6, 6),
('Outros', 'Espaço de festas', 'Leste', 7, 7),
('Galpão', 'Galpão de ração', 'Leste', 2, 5),
('Estrada', 'Acesso principal ao lote', 'Centro', 3, 6),
('Outros', 'Área de compostagem', 'Sul', 4, 7),
('Plantio', 'Área de sorgo experimental', 'Norte', 5, 7),
('Pasto', 'Área para bovinos leiteiros', 'Oeste', 5, 8),
('Galpão', 'Galpão de ferramentas', 'Centro-Sul', 8, 8),
('Estrada', 'Ramal interno', 'Oeste', 9, 9),
('Plantio', 'Plantio de milho', 'Sul', 10, 10);

SELECT * FROM Infraestrutura;

-- Relevo
INSERT INTO Relevo (tipo_rel, declividade, altitude, fk_id_lote, fk_id_imagens) VALUES
('Ondulado', 12.5, 135, 1, 1),
('Plano', 3.2, 120, 2, 2),
('Plano', 25.0, 160, 3, 3),
('Plano', 4.8, 110, 4, 4),
('Ondulado', 10.3, 145, 5, 5),
('Ondulado', 7.4, 130, 6, 6),
('Montanhoso', 30.1, 170, 7, 7),
('Plano', 5.0, 125, 8, 8),
('Irregular', 18.0, 150, 9, 9),
('Ondulado', 13.3, 140, 10, 10);

SELECT * FROM Relevo;

-- Sensores
INSERT INTO Sensores (tipo_sensor, valor_lido, data_leitura, uni_medida, fk_id_relevo) VALUES
('Umidade', 42.3, '2024-06-01 10:00:00', '%', 1),
('Temperatura', 31.2, '2024-06-01 10:05:00', '°C', 1),
('Umidade', 45.0, '2024-06-01 11:00:00', '%', 2),
('Temperatura', 29.5, '2024-06-01 11:05:00', '°C', 2),
('Umidade', 40.2, '2024-06-01 12:00:00', '%', 3),
('Temperatura', 32.0, '2024-06-01 12:05:00', '°C', 3),
('Umidade', 41.8, '2024-06-01 13:00:00', '%', 4),
('Temperatura', 30.7, '2024-06-01 13:05:00', '°C', 4),
('Umidade', 38.6, '2024-06-01 14:00:00', '%', 5),
('Temperatura', 28.9, '2024-06-01 14:05:00', '°C', 5);

SELECT * FROM Sensores;


-- 1. Apresentar 3 exemplos de consultas usando junção de tabelas (INNER JOIN, LEFT JOIN, RIGHT JOIN);

-- Todas as infraestruturas e suas respectivas imagens geracionais
SELECT i.tipo_infra, i.localizacao, img.caminho_arq FROM Infraestrutura AS i
	INNER JOIN Imagens AS img ON i.fk_id_imagens = img.id_imagens;

-- Nome do lote junto com os dados básicos de cada proprietário (mesmo aqueles sem telefone)
SELECT l.nome_lote, u.nome_usu AS 'proprietario', u.email, u.telefone  FROM Lote AS l
	LEFT JOIN Usuario AS u ON l.fk_id_usuario = u.id_usuario;

-- Todas as imagens capturadas e respectivo histórico (mesmo que ainda não tenham histórico gerado)
SELECT img.id_imagens, img.caminho_arq, h.descricao FROM Historico AS h
	RIGHT JOIN Imagens AS img ON h.fk_id_imagens = img.id_imagens;


-- 2. Apresentar 2 consultas que utilizam subconsultas (consultas aninhadas);

-- Lotes com mais de 2 estruturas cadastradas
SELECT nome_lote FROM Lote
	WHERE id_lote IN (SELECT fk_id_lote FROM Infraestrutura
    GROUP BY fk_id_lote HAVING COUNT(*) > 2);

-- Usuários com lotes com declividade igual ou maior que 10
SELECT nome_usu FROM Usuario
	WHERE id_usuario IN (SELECT l.fk_id_usuario FROM Lote AS l
		INNER JOIN Relevo AS r ON l.id_lote = r.fk_id_lote
		WHERE r.declividade > 10);


-- 3. Apresentar 2 consultas que utilizam GROUP BY, sendo uma obrigatoriamente usando a cláusula HAVING;

-- Quantidade de infraestruturas por tipo
SELECT tipo_infra, COUNT(*) AS 'total' FROM Infraestrutura
	GROUP BY tipo_infra;
    
-- Lotes com mais de 2 registros históricos
SELECT L.nome_lote, COUNT(H.id_historico) AS 'total_historicos' FROM Lote AS l
	INNER JOIN Historico AS h ON l.id_lote = h.fk_id_lote
	GROUP BY l.id_lote HAVING COUNT(h.id_historico) > 2;
