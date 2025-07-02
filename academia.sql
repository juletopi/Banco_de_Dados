DROP DATABASE IF EXISTS FitnessTraining;
CREATE DATABASE FitnessTraining;
USE FitnessTraining;

-- Aluno
CREATE TABLE Aluno (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    CPF VARCHAR(15) NOT NULL UNIQUE,
    DataNasc DATE,
    sexo CHAR(1),
    altura DECIMAL(5,2),
    telefone VARCHAR(50)
);

-- Funcionario
CREATE TABLE Funcionario (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(50),
    dataAdmissao DATE,
    dataNasc DATE,
    email VARCHAR(100) UNIQUE
);

-- Plano
CREATE TABLE Plano (
    id_plano INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(100) NOT NULL,
    ValorSugerido DECIMAL(10,2),
    atv BOOLEAN
);

-- Tipo de Pagamento
CREATE TABLE TipoPag (
    id_tipopag INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(50)
);

-- Caixa
CREATE TABLE Caixa (
    id_caixa INT PRIMARY KEY AUTO_INCREMENT,
    DataAbertura DATETIME DEFAULT CURRENT_TIMESTAMP,
    DataFechamento DATE,
    SaldoInicial DECIMAL(10,2) NOT NULL,
    SaldoFinal DECIMAL(10,2),
    TotalEntradas DECIMAL(10,2),
    TotalSaidas DECIMAL(10,2),
    fk_id_funcionario INT NOT NULL,
    FOREIGN KEY (fk_id_funcionario) REFERENCES Funcionario(id_funcionario)
);

-- Contrato
CREATE TABLE Contrato (
    id_contrato INT PRIMARY KEY AUTO_INCREMENT,
    dataInicio DATE NOT NULL,
    Valor DECIMAL(10,2) NOT NULL,
    dataFim DATE,
    fk_id_aluno INT NOT NULL,
    fk_id_plano INT NOT NULL,
    FOREIGN KEY (fk_id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY (fk_id_plano) REFERENCES Plano(id_plano)
);

-- Pagamento
CREATE TABLE Pagamento (
    id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    valor DECIMAL(10,2) NOT NULL,
    statusPag VARCHAR(20),
    dataPagamento DATE,
    fk_id_tipopag INT NOT NULL,
    fk_id_contrato INT NOT NULL,
    fk_id_caixa INT NOT NULL,
    FOREIGN KEY (fk_id_tipopag) REFERENCES TipoPag(id_tipopag),
    FOREIGN KEY (fk_id_contrato) REFERENCES Contrato(id_contrato),
    FOREIGN KEY (fk_id_caixa) REFERENCES Caixa(id_caixa)
);

-- Treino
CREATE TABLE Treino (
    id_treino INT PRIMARY KEY AUTO_INCREMENT,
    membro VARCHAR(50) NOT NULL,
    dataCriacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    observacoes TEXT,
    fk_id_contrato INT NOT NULL,
    FOREIGN KEY (fk_id_contrato) REFERENCES Contrato(id_contrato)
);

-- FrequenciaTreinamento
CREATE TABLE FrequenciaTreinamento (
    id_frequencia INT PRIMARY KEY AUTO_INCREMENT,
    fk_id_treino INT NOT NULL,
    DataExecucao DATE,
    observacoes TEXT,
    FOREIGN KEY (fk_id_treino) REFERENCES Treino(id_treino)
);

-- Exercicio
CREATE TABLE Exercicio (
    id_exercicio INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    descricao TEXT,
    musculoAlvo VARCHAR(50)
);

-- Exercicio_Treino
CREATE TABLE Exercicio_Treino (
	id_Exercicio_Treino INT PRIMARY KEY AUTO_INCREMENT,
    fk_id_treino INT,
    fk_id_exercicio INT NOT NULL,
    serie INT,
    repeticoes INT,
    CargaProposta DECIMAL(5,2),
    OrdemSugerida INT,
    FOREIGN KEY (fk_id_treino) REFERENCES Treino(id_treino),
    FOREIGN KEY (fk_id_exercicio) REFERENCES Exercicio(id_exercicio)
);

-- Inserts
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (1, 'Cauã da Conceição', '605.712.849-49', '1978-10-30', 'M', 1.65, '+55 (071) 8080-6922');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (2, 'Joana Martins', '135.720.648-80', '1999-02-10', 'F', 1.81, '84 1756 2985');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (3, 'Rodrigo da Cunha', '146.230.978-03', '1989-06-03', 'M', 1.77, '71 8777-9365');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (4, 'Mariane Martins', '184.536.970-00', '2006-11-12', 'M', 1.54, '0300-855-9032');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (5, 'Maria Luiza Oliveira', '360.215.947-70', '2003-02-01', 'F', 1.61, '(031) 5425 6076');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (6, 'Isaac Barros', '934.028.651-06', '1976-08-04', 'F', 1.86, '(041) 7429-6719');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (7, 'Manuela Monteiro', '508.319.276-40', '2006-12-29', 'F', 1.53, '+55 (051) 0549 6151');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (8, 'Heloísa Gomes', '782.459.631-19', '2000-09-11', 'M', 1.88, '+55 31 4499-6081');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (9, 'Ana Beatriz Campos', '324.195.608-33', '1995-07-19', 'F', 1.54, '(061) 6248 6251');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (10, 'Otávio da Rosa', '486.239.517-19', '2002-11-07', 'M', 1.56, '(081) 7364 6788');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (11, 'Emanuella Carvalho', '601.295.734-34', '1975-10-22', 'F', 1.64, '41 3797 7306');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (12, 'Marcelo Dias', '029.756.413-70', '1980-04-29', 'F', 1.87, '+55 21 5451 1862');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (13, 'Dra. Bianca Cardoso', '793.218.654-46', '1993-11-03', 'F', 1.75, '+55 41 7554-4250');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (14, 'André Rezende', '079.612.538-40', '2002-09-08', 'F', 1.52, '+55 (021) 5787 1231');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (15, 'Letícia da Cruz', '791.356.082-77', '1983-04-25', 'F', 1.62, '+55 (081) 8677-4055');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (16, 'Igor Peixoto', '730.289.614-31', '1995-02-15', 'F', 1.59, '+55 71 0142 4546');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (17, 'Julia Ribeiro', '483.706.521-07', '1994-01-12', 'M', 1.54, '0800 767 1436');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (18, 'Ana Beatriz Campos', '412.703.589-79', '1999-01-02', 'F', 1.79, '+55 (051) 1032 5420');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (19, 'Dr. Luiz Miguel Martins', '975.108.236-68', '1979-10-03', 'M', 1.52, '(081) 7714-3852');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (20, 'Luana Rodrigues', '945.671.038-66', '1978-11-24', 'F', 1.85, '+55 61 0616 1302');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (21, 'Gustavo Henrique Silva', '176.043.829-40', '1975-01-22', 'F', 1.78, '84 3922-7826');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (22, 'Esther Moreira', '376.019.542-34', '2005-12-14', 'M', 1.67, '+55 (061) 1798-9428');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (23, 'Maria Fernanda Pereira', '095.741.263-07', '1987-04-28', 'M', 1.64, '(061) 9990 9839');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (24, 'Agatha da Mata', '256.183.490-51', '1990-08-05', 'M', 1.52, '+55 11 4230-2486');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (25, 'Carlos Eduardo Lima', '347.651.802-71', '1991-06-24', 'M', 1.7, '84 9013-2194');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (26, 'Vitor Hugo Pereira', '205.679.134-06', '1985-09-13', 'F', 1.54, '+55 (011) 9664 1207');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (27, 'Ana Júlia Duarte', '023.947.685-92', '1979-10-09', 'F', 1.81, '+55 71 1751-3193');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (28, 'Cauã Pires', '547.901.326-25', '1997-04-05', 'F', 1.78, '+55 (081) 5365 5107');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (29, 'Lara Moreira', '685.104.923-60', '1975-10-18', 'F', 1.55, '+55 51 4890 5660');
INSERT INTO Aluno (id_aluno, nome, CPF, DataNasc, sexo, altura, telefone) VALUES (30, 'Luiz Felipe das Neves', '976.802.143-87', '1985-03-04', 'M', 1.67, '+55 31 6724-7608');
INSERT INTO Plano (id_plano, descricao, ValorSugerido, atv) VALUES (1, 'Plano Básico', 97.83, 0);
INSERT INTO Plano (id_plano, descricao, ValorSugerido, atv) VALUES (2, 'Plano Mensal Fitness', 136.46, 0);
INSERT INTO Plano (id_plano, descricao, ValorSugerido, atv) VALUES (3, 'Plano Premium Ilimitado', 64.01, 0);
INSERT INTO Plano (id_plano, descricao, ValorSugerido, atv) VALUES (4, 'Plano CrossFit Performance', 73.33, 1);
INSERT INTO Plano (id_plano, descricao, ValorSugerido, atv) VALUES (5, 'Plano Estudante', 100, 1);
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (1, 'Supino Reto', 'Execução do exercício supino reto com técnica adequada.', 'Bíceps');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (2, 'Rosca Direta', 'Execução do exercício rosca direta com técnica adequada.', 'Peito');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (3, 'Agachamento Livre', 'Execução do exercício agachamento livre com técnica adequada.', 'Pernas');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (4, 'Desenvolvimento Militar', 'Execução do exercício desenvolvimento militar com técnica adequada.', 'Ombros');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (5, 'Crucifixo', 'Execução do exercício crucifixo com técnica adequada.', 'Abdômen');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (6, 'Remada Curvada', 'Execução do exercício remada curvada com técnica adequada.', 'Abdômen');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (7, 'Puxada na Frente', 'Execução do exercício puxada na frente com técnica adequada.', 'Ombros');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (8, 'Stiff', 'Execução do exercício stiff com técnica adequada.', 'Abdômen');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (9, 'Leg Press', 'Execução do exercício leg press com técnica adequada.', 'Pernas');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (10, 'Cadeira Extensora', 'Execução do exercício cadeira extensora com técnica adequada.', 'Peito');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (11, 'Cadeira Flexora', 'Execução do exercício cadeira flexora com técnica adequada.', 'Tríceps');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (12, 'Tríceps Testa', 'Execução do exercício tríceps testa com técnica adequada.', 'Peito');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (13, 'Tríceps Pulley', 'Execução do exercício tríceps pulley com técnica adequada.', 'Abdômen');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (14, 'Abdominal Supra', 'Execução do exercício abdominal supra com técnica adequada.', 'Tríceps');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (15, 'Abdominal Infra', 'Execução do exercício abdominal infra com técnica adequada.', 'Peito');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (16, 'Panturrilha Sentado', 'Execução do exercício panturrilha sentado com técnica adequada.', 'Pernas');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (17, 'Panturrilha em Pé', 'Execução do exercício panturrilha em pé com técnica adequada.', 'Abdômen');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (18, 'Rosca Martelo', 'Execução do exercício rosca martelo com técnica adequada.', 'Ombros');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (19, 'Remada Unilateral', 'Execução do exercício remada unilateral com técnica adequada.', 'Peito');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (20, 'Voador', 'Execução do exercício voador com técnica adequada.', 'Costas');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (21, 'Crucifixo Inverso', 'Execução do exercício crucifixo inverso com técnica adequada.', 'Bíceps');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (22, 'Elevação Lateral', 'Execução do exercício elevação lateral com técnica adequada.', 'Bíceps');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (23, 'Elevação Frontal', 'Execução do exercício elevação frontal com técnica adequada.', 'Pernas');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (24, 'Rosca Scott', 'Execução do exercício rosca scott com técnica adequada.', 'Ombros');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (25, 'Pullover', 'Execução do exercício pullover com técnica adequada.', 'Pernas');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (26, 'Barra Fixa', 'Execução do exercício barra fixa com técnica adequada.', 'Tríceps');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (27, 'Paralelas', 'Execução do exercício paralelas com técnica adequada.', 'Peito');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (28, 'Mesa Flexora', 'Execução do exercício mesa flexora com técnica adequada.', 'Pernas');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (29, 'Crossover', 'Execução do exercício crossover com técnica adequada.', 'Pernas');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (30, 'Peck Deck', 'Execução do exercício peck deck com técnica adequada.', 'Abdômen');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (31, 'Good Morning', 'Execução do exercício good morning com técnica adequada.', 'Tríceps');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (32, 'Prancha Abdominal', 'Execução do exercício prancha abdominal com técnica adequada.', 'Costas');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (33, 'Ponte Isométrica', 'Execução do exercício ponte isométrica com técnica adequada.', 'Ombros');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (34, 'Burpee', 'Execução do exercício burpee com técnica adequada.', 'Bíceps');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (35, 'Swing com Kettlebell', 'Execução do exercício swing com kettlebell com técnica adequada.', 'Abdômen');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (36, 'Clean com Barra', 'Execução do exercício clean com barra com técnica adequada.', 'Abdômen');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (37, 'Snatch com Halteres', 'Execução do exercício snatch com halteres com técnica adequada.', 'Abdômen');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (38, 'Push Press', 'Execução do exercício push press com técnica adequada.', 'Tríceps');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (39, 'Push Jerk', 'Execução do exercício push jerk com técnica adequada.', 'Pernas');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (40, 'Box Jump', 'Execução do exercício box jump com técnica adequada.', 'Abdômen');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (41, 'Wall Ball', 'Execução do exercício wall ball com técnica adequada.', 'Abdômen');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (42, 'Corrida Estacionária', 'Execução do exercício corrida estacionária com técnica adequada.', 'Abdômen');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (43, 'Corrida Intervalada', 'Execução do exercício corrida intervalada com técnica adequada.', 'Abdômen');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (44, 'Remo Ergométrico', 'Execução do exercício remo ergométrico com técnica adequada.', 'Tríceps');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (45, 'Saltos Laterais', 'Execução do exercício saltos laterais com técnica adequada.', 'Ombros');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (46, 'Avanço com Halteres', 'Execução do exercício avanço com halteres com técnica adequada.', 'Costas');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (47, 'Deadlift', 'Execução do exercício deadlift com técnica adequada.', 'Abdômen');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (48, 'Sumô Deadlift', 'Execução do exercício sumô deadlift com técnica adequada.', 'Costas');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (49, 'Farmer Walk', 'Execução do exercício farmer walk com técnica adequada.', 'Pernas');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (50, 'Barbell Row', 'Execução do exercício barbell row com técnica adequada.', 'Ombros');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (51, 'Overhead Squat', 'Execução do exercício overhead squat com técnica adequada.', 'Abdômen');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (52, 'Snatch Balance', 'Execução do exercício snatch balance com técnica adequada.', 'Bíceps');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (53, 'Turkish Get-Up', 'Execução do exercício turkish get-up com técnica adequada.', 'Tríceps');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (54, 'Thruster', 'Execução do exercício thruster com técnica adequada.', 'Ombros');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (55, 'Jump Rope', 'Execução do exercício jump rope com técnica adequada.', 'Ombros');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (56, 'Mountain Climber', 'Execução do exercício mountain climber com técnica adequada.', 'Ombros');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (57, 'Plank com Peso', 'Execução do exercício plank com peso com técnica adequada.', 'Bíceps');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (58, 'Kipping Pull-Up', 'Execução do exercício kipping pull-up com técnica adequada.', 'Peito');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (59, 'Muscle Up', 'Execução do exercício muscle up com técnica adequada.', 'Tríceps');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (60, 'Handstand Push-Up', 'Execução do exercício handstand push-up com técnica adequada.', 'Ombros');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (61, 'Front Squat', 'Execução do exercício front squat com técnica adequada.', 'Pernas');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (62, 'Back Squat', 'Execução do exercício back squat com técnica adequada.', 'Pernas');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (63, 'Shoulder Press', 'Execução do exercício shoulder press com técnica adequada.', 'Tríceps');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (64, 'Push-Up', 'Execução do exercício push-up com técnica adequada.', 'Peito');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (65, 'Sit-Up', 'Execução do exercício sit-up com técnica adequada.', 'Ombros');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (66, 'Lunge', 'Execução do exercício lunge com técnica adequada.', 'Abdômen');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (67, 'Step-Up', 'Execução do exercício step-up com técnica adequada.', 'Tríceps');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (68, 'Clean and Jerk', 'Execução do exercício clean and jerk com técnica adequada.', 'Bíceps');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (69, 'Toes to Bar', 'Execução do exercício toes to bar com técnica adequada.', 'Ombros');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (70, 'Hollow Hold', 'Execução do exercício hollow hold com técnica adequada.', 'Costas');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (71, 'Superman Hold', 'Execução do exercício superman hold com técnica adequada.', 'Bíceps');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (72, 'Skater Jump', 'Execução do exercício skater jump com técnica adequada.', 'Ombros');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (73, 'Tuck Jump', 'Execução do exercício tuck jump com técnica adequada.', 'Costas');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (74, 'Bear Crawl', 'Execução do exercício bear crawl com técnica adequada.', 'Bíceps');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (75, 'Crab Walk', 'Execução do exercício crab walk com técnica adequada.', 'Bíceps');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (76, 'Russian Twist', 'Execução do exercício russian twist com técnica adequada.', 'Pernas');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (77, 'V-Up', 'Execução do exercício v-up com técnica adequada.', 'Tríceps');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (78, 'Plank to Push-Up', 'Execução do exercício plank to push-up com técnica adequada.', 'Abdômen');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (79, 'Single Leg Deadlift', 'Execução do exercício single leg deadlift com técnica adequada.', 'Abdômen');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (80, 'Kettlebell Swing Alternado', 'Execução do exercício kettlebell swing alternado com técnica adequada.', 'Costas');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (81, 'Sprint de 100m', 'Execução do exercício sprint de 100m com técnica adequada.', 'Costas');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (82, 'Sprint de 200m', 'Execução do exercício sprint de 200m com técnica adequada.', 'Bíceps');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (83, 'Sprint de 400m', 'Execução do exercício sprint de 400m com técnica adequada.', 'Abdômen');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (84, 'Bike Ergométrica', 'Execução do exercício bike ergométrica com técnica adequada.', 'Bíceps');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (85, 'Dumbbell Snatch', 'Execução do exercício dumbbell snatch com técnica adequada.', 'Costas');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (86, 'Dumbbell Clean', 'Execução do exercício dumbbell clean com técnica adequada.', 'Pernas');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (87, 'Dumbbell Press', 'Execução do exercício dumbbell press com técnica adequada.', 'Costas');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (88, 'Wall Sit', 'Execução do exercício wall sit com técnica adequada.', 'Peito');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (89, 'Pull-Over com Halteres', 'Execução do exercício pull-over com halteres com técnica adequada.', 'Costas');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (90, 'Chest Press', 'Execução do exercício chest press com técnica adequada.', 'Ombros');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (91, 'Incline Press', 'Execução do exercício incline press com técnica adequada.', 'Pernas');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (92, 'Decline Press', 'Execução do exercício decline press com técnica adequada.', 'Tríceps');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (93, 'Reverse Fly', 'Execução do exercício reverse fly com técnica adequada.', 'Costas');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (94, 'Cable Crossover', 'Execução do exercício cable crossover com técnica adequada.', 'Peito');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (95, 'Arnold Press', 'Execução do exercício arnold press com técnica adequada.', 'Tríceps');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (96, 'Zottman Curl', 'Execução do exercício zottman curl com técnica adequada.', 'Ombros');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (97, 'Concentration Curl', 'Execução do exercício concentration curl com técnica adequada.', 'Tríceps');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (98, 'Overhead Triceps', 'Execução do exercício overhead triceps com técnica adequada.', 'Costas');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (99, 'Kickback', 'Execução do exercício kickback com técnica adequada.', 'Bíceps');
INSERT INTO Exercicio (id_exercicio, nome, descricao, musculoAlvo) VALUES (100, 'Incline Curl', 'Execução do exercício incline curl com técnica adequada.', 'Pernas');
INSERT INTO Funcionario (id_funcionario, nome, telefone, dataAdmissao, dataNasc, email) VALUES (1, 'Murilo Silveira', '(021) 0875-3546', '2023-11-21', '1981-08-20', 'araujolorena@uol.com.br');
INSERT INTO Funcionario (id_funcionario, nome, telefone, dataAdmissao, dataNasc, email) VALUES (2, 'Isis Araújo', '+55 (071) 6341 3431', '2025-04-09', '1973-06-14', 'heloisacorreia@bol.com.br');
INSERT INTO Funcionario (id_funcionario, nome, telefone, dataAdmissao, dataNasc, email) VALUES (3, 'Rodrigo Jesus', '+55 81 7121 5527', '2024-05-15', '1971-07-31', 'mirellapereira@hotmail.com');
INSERT INTO Funcionario (id_funcionario, nome, telefone, dataAdmissao, dataNasc, email) VALUES (4, 'Luiz Henrique Melo', '+55 71 0770 4047', '2022-06-21', '1995-05-05', 'ceciliaaragao@uol.com.br');
INSERT INTO Funcionario (id_funcionario, nome, telefone, dataAdmissao, dataNasc, email) VALUES (5, 'Sofia Barbosa', '+55 (081) 0451-9814', '2022-11-25', '1996-08-08', 'moraesenrico@uol.com.br');
INSERT INTO TipoPag (id_tipopag, descricao) VALUES (1, 'Pix');
INSERT INTO TipoPag (id_tipopag, descricao) VALUES (2, 'Dinheiro');
INSERT INTO TipoPag (id_tipopag, descricao) VALUES (3, 'Cartão de Crédito');
INSERT INTO TipoPag (id_tipopag, descricao) VALUES (4, 'Cartão de Débito');
INSERT INTO Caixa (id_caixa, DataFechamento, SaldoInicial, SaldoFinal, TotalEntradas, TotalSaidas, fk_id_funcionario) VALUES (1, '2025-05-07', 893.49, 2214.0199999999995, 1694.5, 373.97, 1);
INSERT INTO Caixa (id_caixa, DataFechamento, SaldoInicial, SaldoFinal, TotalEntradas, TotalSaidas, fk_id_funcionario) VALUES (2, '2025-05-23', 769.39, 1607.6600000000003, 1112.41, 274.14, 2);
INSERT INTO Caixa (id_caixa, DataFechamento, SaldoInicial, SaldoFinal, TotalEntradas, TotalSaidas, fk_id_funcionario) VALUES (3, '2025-05-06', 728.96, 1725.5799999999997, 1406.07, 409.45, 5);
INSERT INTO Caixa (id_caixa, DataFechamento, SaldoInicial, SaldoFinal, TotalEntradas, TotalSaidas, fk_id_funcionario) VALUES (4, '2025-05-04', 988.56, 1658.61, 1073.0, 402.95, 3);
INSERT INTO Caixa (id_caixa, DataFechamento, SaldoInicial, SaldoFinal, TotalEntradas, TotalSaidas, fk_id_funcionario) VALUES (5, '2025-05-25', 974.42, 2301.26, 1739.15, 412.31, 1);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (1, '2025-04-13', 149.76, '2025-06-03', 1, 2);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (2, '2024-11-16', 80.34, '2025-06-03', 2, 4);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (3, '2024-08-11', 64.42, '2025-06-03', 3, 2);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (4, '2024-12-03', 134.79, '2025-06-03', 4, 4);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (5, '2025-02-17', 102.23, '2025-06-03', 5, 4);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (6, '2025-01-23', 123.6, '2025-06-03', 6, 2);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (7, '2025-02-16', 60.19, '2025-06-03', 7, 3);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (8, '2024-07-08', 119.54, '2025-06-03', 8, 5);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (9, '2024-09-20', 137.43, '2025-06-03', 9, 5);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (10, '2025-01-17', 90.9, '2025-06-03', 10, 5);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (11, '2025-05-01', 102.35, '2025-06-03', 11, 3);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (12, '2024-07-27', 124.11, '2025-06-03', 12, 1);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (13, '2024-08-31', 136.31, '2025-06-03', 13, 1);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (14, '2025-04-02', 111.09, '2025-06-03', 14, 5);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (15, '2025-04-30', 134.79, '2025-06-03', 15, 3);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (16, '2024-06-14', 94.05, '2025-06-03', 16, 4);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (17, '2024-12-12', 77.6, '2025-06-03', 17, 2);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (18, '2024-09-03', 123.9, '2025-06-03', 18, 5);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (19, '2025-03-15', 117.76, '2025-06-03', 19, 4);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (20, '2024-12-31', 89.75, '2025-06-03', 20, 2);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (21, '2024-10-23', 116.27, '2025-06-03', 21, 5);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (22, '2024-06-03', 104.1, '2025-06-03', 22, 4);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (23, '2024-07-07', 61.1, '2025-06-03', 23, 4);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (24, '2024-08-24', 81.92, '2025-06-03', 24, 1);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (25, '2025-05-02', 115.65, '2025-06-03', 25, 2);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (26, '2024-10-01', 74.12, '2025-06-03', 26, 1);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (27, '2025-04-25', 83.78, '2025-06-03', 27, 3);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (28, '2024-06-14', 131.99, '2025-06-03', 28, 5);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (29, '2024-11-27', 136.53, '2025-06-03', 29, 1);
INSERT INTO Contrato (id_contrato, dataInicio, Valor, dataFim, fk_id_aluno, fk_id_plano) VALUES (30, '2024-07-07', 77.94, '2025-06-03', 30, 2);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (1, 'Treino Geral', 'Treino adaptado ao aluno.', 1);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (2, 'Treino Geral', 'Treino adaptado ao aluno.', 2);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (3, 'Treino Geral', 'Treino adaptado ao aluno.', 3);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (4, 'Treino Geral', 'Treino adaptado ao aluno.', 4);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (5, 'Treino Geral', 'Treino adaptado ao aluno.', 5);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (6, 'Treino Geral', 'Treino adaptado ao aluno.', 6);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (7, 'Treino Geral', 'Treino adaptado ao aluno.', 7);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (8, 'Treino Geral', 'Treino adaptado ao aluno.', 8);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (9, 'Treino Geral', 'Treino adaptado ao aluno.', 9);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (10, 'Treino Geral', 'Treino adaptado ao aluno.', 10);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (11, 'Treino Geral', 'Treino adaptado ao aluno.', 11);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (12, 'Treino Geral', 'Treino adaptado ao aluno.', 12);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (13, 'Treino Geral', 'Treino adaptado ao aluno.', 13);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (14, 'Treino Geral', 'Treino adaptado ao aluno.', 14);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (15, 'Treino Geral', 'Treino adaptado ao aluno.', 15);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (16, 'Treino Geral', 'Treino adaptado ao aluno.', 16);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (17, 'Treino Geral', 'Treino adaptado ao aluno.', 17);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (18, 'Treino Geral', 'Treino adaptado ao aluno.', 18);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (19, 'Treino Geral', 'Treino adaptado ao aluno.', 19);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (20, 'Treino Geral', 'Treino adaptado ao aluno.', 20);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (21, 'Treino Geral', 'Treino adaptado ao aluno.', 21);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (22, 'Treino Geral', 'Treino adaptado ao aluno.', 22);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (23, 'Treino Geral', 'Treino adaptado ao aluno.', 23);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (24, 'Treino Geral', 'Treino adaptado ao aluno.', 24);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (25, 'Treino Geral', 'Treino adaptado ao aluno.', 25);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (26, 'Treino Geral', 'Treino adaptado ao aluno.', 26);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (27, 'Treino Geral', 'Treino adaptado ao aluno.', 27);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (28, 'Treino Geral', 'Treino adaptado ao aluno.', 28);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (29, 'Treino Geral', 'Treino adaptado ao aluno.', 29);
INSERT INTO Treino (id_treino, membro, observacoes, fk_id_contrato) VALUES (30, 'Treino Geral', 'Treino adaptado ao aluno.', 30);
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (1, 1, '2025-04-17', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (2, 2, '2024-12-02', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (3, 3, '2024-10-04', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (4, 4, '2025-04-11', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (5, 5, '2025-03-27', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (6, 6, '2025-03-24', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (7, 7, '2025-06-02', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (8, 8, '2024-09-06', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (9, 9, '2024-11-18', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (10, 10, '2025-02-05', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (11, 11, '2025-05-24', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (12, 12, '2025-03-06', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (13, 13, '2024-10-05', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (14, 14, '2025-04-14', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (15, 15, '2025-05-20', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (16, 16, '2024-11-14', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (17, 17, '2025-03-02', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (18, 18, '2025-05-22', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (19, 19, '2025-05-19', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (20, 20, '2025-03-18', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (21, 21, '2025-01-04', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (22, 22, '2025-04-16', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (23, 23, '2025-05-28', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (24, 24, '2024-11-08', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (25, 25, '2025-05-12', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (26, 26, '2024-12-09', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (27, 27, '2025-05-16', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (28, 28, '2024-11-14', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (29, 29, '2025-05-29', 'Aluno executou o treino conforme recomendado.');
INSERT INTO FrequenciaTreinamento (id_frequencia, fk_id_treino, DataExecucao, observacoes) VALUES (30, 30, '2025-04-17', 'Aluno executou o treino conforme recomendado.');
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (1, 149.76, 'Pago', '2025-04-13', 1, 1, 4);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (2, 80.34, 'Pago', '2024-11-16', 1, 2, 3);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (3, 64.42, 'Pago', '2024-08-11', 2, 3, 3);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (4, 134.79, 'Pago', '2024-12-03', 1, 4, 5);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (5, 102.23, 'Pago', '2025-02-17', 4, 5, 4);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (6, 123.6, 'Pago', '2025-01-23', 1, 6, 1);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (7, 60.19, 'Pago', '2025-02-16', 4, 7, 2);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (8, 119.54, 'Pago', '2024-07-08', 2, 8, 4);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (9, 137.43, 'Pago', '2024-09-20', 2, 9, 1);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (10, 90.9, 'Pago', '2025-01-17', 1, 10, 2);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (11, 102.35, 'Pago', '2025-05-01', 3, 11, 2);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (12, 124.11, 'Pago', '2024-07-27', 3, 12, 5);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (13, 136.31, 'Pago', '2024-08-31', 4, 13, 1);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (14, 111.09, 'Pago', '2025-04-02', 3, 14, 3);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (15, 134.79, 'Pago', '2025-04-30', 2, 15, 3);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (16, 94.05, 'Pago', '2024-06-14', 3, 16, 4);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (17, 77.6, 'Pago', '2024-12-12', 4, 17, 3);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (18, 123.9, 'Pago', '2024-09-03', 4, 18, 4);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (19, 117.76, 'Pago', '2025-03-15', 3, 19, 5);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (20, 89.75, 'Pago', '2024-12-31', 3, 20, 5);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (21, 116.27, 'Pago', '2024-10-23', 1, 21, 1);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (22, 104.1, 'Pago', '2024-06-03', 2, 22, 5);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (23, 61.1, 'Pago', '2024-07-07', 2, 23, 5);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (24, 81.92, 'Pago', '2024-08-24', 1, 24, 2);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (25, 115.65, 'Pago', '2025-05-02', 2, 25, 5);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (26, 74.12, 'Pago', '2024-10-01', 4, 26, 2);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (27, 83.78, 'Pago', '2025-04-25', 4, 27, 1);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (28, 131.99, 'Pago', '2024-06-14', 3, 28, 3);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (29, 136.53, 'Pago', '2024-11-27', 3, 29, 5);
INSERT INTO Pagamento (id_pagamento, valor, statusPag, dataPagamento, fk_id_tipopag, fk_id_contrato, fk_id_caixa) VALUES (30, 77.94, 'Pago', '2024-07-07', 4, 30, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (1, 50, 3, 10, 11.43, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (1, 52, 3, 10, 17.91, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (1, 30, 4, 10, 5.88, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (1, 3, 3, 12, 13.51, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (1, 11, 3, 12, 39.23, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (2, 35, 4, 12, 13.61, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (2, 23, 4, 10, 13.1, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (2, 84, 3, 12, 37.75, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (2, 87, 4, 12, 28.77, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (2, 70, 4, 12, 45.66, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (3, 28, 4, 12, 31.31, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (3, 17, 3, 15, 35.87, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (3, 65, 4, 10, 40.21, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (3, 19, 3, 10, 25.63, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (3, 20, 4, 10, 7.23, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (4, 2, 3, 10, 19.17, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (4, 32, 4, 10, 34.87, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (4, 71, 3, 15, 21.52, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (4, 14, 4, 15, 45.39, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (4, 63, 3, 12, 12.94, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (5, 84, 4, 12, 17.56, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (5, 37, 3, 10, 32.92, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (5, 52, 4, 12, 38.08, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (5, 50, 3, 12, 6.8, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (5, 35, 4, 10, 26.79, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (6, 7, 4, 15, 49.95, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (6, 3, 3, 10, 12.76, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (6, 94, 4, 10, 35.41, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (6, 38, 3, 12, 8.42, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (6, 61, 4, 15, 24.98, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (7, 9, 3, 10, 24.88, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (7, 52, 3, 10, 13.37, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (7, 44, 4, 12, 36.35, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (7, 39, 4, 12, 38.92, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (7, 92, 4, 15, 38.98, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (8, 60, 4, 15, 45.28, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (8, 90, 3, 15, 30.14, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (8, 64, 3, 12, 43.67, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (8, 72, 3, 10, 37.96, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (8, 23, 4, 15, 47.27, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (9, 38, 4, 10, 38.3, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (9, 3, 4, 15, 41.48, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (9, 22, 4, 12, 22.13, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (9, 86, 4, 10, 48.31, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (9, 32, 3, 15, 48.71, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (10, 24, 3, 15, 32.59, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (10, 26, 3, 12, 19.89, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (10, 14, 4, 10, 36.98, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (10, 68, 3, 12, 7.23, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (10, 77, 4, 12, 46.75, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (11, 92, 3, 15, 23.42, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (11, 24, 3, 12, 30.22, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (11, 57, 4, 10, 36.38, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (11, 14, 3, 12, 12.89, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (11, 15, 4, 12, 36.25, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (12, 33, 4, 10, 17.73, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (12, 17, 4, 15, 36.88, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (12, 16, 3, 15, 48.05, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (12, 77, 3, 12, 8.5, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (12, 76, 3, 15, 28.19, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (13, 79, 3, 10, 35.2, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (13, 18, 4, 15, 21.29, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (13, 81, 4, 10, 34.27, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (13, 96, 4, 15, 18.21, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (13, 74, 3, 15, 28.73, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (14, 26, 3, 12, 20.49, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (14, 83, 4, 15, 5.64, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (14, 61, 3, 15, 32.99, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (14, 2, 3, 12, 45.2, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (14, 82, 4, 12, 30.55, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (15, 71, 3, 10, 11.24, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (15, 67, 3, 10, 10.01, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (15, 78, 3, 10, 49.49, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (15, 97, 4, 15, 43.99, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (15, 10, 4, 15, 29.34, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (16, 84, 4, 15, 24.79, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (16, 99, 4, 10, 48.22, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (16, 68, 4, 10, 36.34, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (16, 98, 4, 12, 17.2, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (16, 90, 3, 15, 14.11, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (17, 91, 4, 15, 42.72, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (17, 13, 4, 10, 35.59, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (17, 62, 3, 10, 45.36, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (17, 34, 4, 12, 30.42, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (17, 90, 3, 15, 34.47, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (18, 15, 4, 15, 43.93, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (18, 88, 3, 10, 16.66, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (18, 74, 3, 15, 29.3, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (18, 57, 4, 15, 20.98, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (18, 59, 3, 12, 44.31, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (19, 62, 4, 15, 39.1, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (19, 99, 3, 15, 5.59, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (19, 6, 4, 15, 22.28, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (19, 79, 3, 10, 20.41, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (19, 92, 4, 10, 14.28, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (20, 72, 4, 12, 17.28, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (20, 86, 4, 12, 5.32, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (20, 12, 3, 12, 26.73, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (20, 18, 3, 10, 6.54, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (20, 32, 3, 10, 14.06, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (21, 100, 3, 15, 13.11, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (21, 68, 3, 15, 42.61, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (21, 70, 3, 12, 6.66, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (21, 57, 3, 10, 17.06, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (21, 4, 4, 10, 6.63, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (22, 11, 3, 12, 17.35, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (22, 95, 3, 15, 24.64, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (22, 28, 3, 15, 15.88, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (22, 74, 4, 12, 21.65, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (22, 59, 4, 10, 21.79, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (23, 61, 4, 15, 28.68, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (23, 95, 3, 10, 21.93, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (23, 32, 3, 10, 30.57, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (23, 97, 4, 12, 27.51, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (23, 23, 4, 15, 15.26, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (24, 83, 3, 10, 20.66, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (24, 79, 3, 15, 26.02, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (24, 43, 3, 10, 43.02, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (24, 12, 4, 12, 20.02, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (24, 21, 4, 10, 6.89, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (25, 20, 3, 12, 34.44, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (25, 51, 4, 10, 18.29, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (25, 33, 4, 12, 14.27, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (25, 86, 4, 12, 41.28, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (25, 12, 3, 12, 33.14, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (26, 70, 4, 15, 32.06, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (26, 18, 3, 15, 44.48, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (26, 39, 4, 15, 43.17, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (26, 88, 4, 10, 32.73, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (26, 60, 3, 15, 26.37, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (27, 8, 3, 12, 11.82, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (27, 4, 3, 12, 23.46, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (27, 89, 4, 15, 45.51, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (27, 63, 4, 12, 40.96, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (27, 75, 3, 12, 10.07, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (28, 7, 3, 10, 21.03, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (28, 22, 4, 15, 22.44, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (28, 78, 3, 15, 25.13, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (28, 32, 4, 12, 10.9, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (28, 26, 4, 12, 36.29, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (29, 83, 4, 12, 18.47, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (29, 100, 3, 12, 17.96, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (29, 16, 3, 12, 11.55, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (29, 75, 4, 12, 29.85, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (29, 41, 4, 10, 5.62, 5);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (30, 96, 4, 12, 28.36, 1);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (30, 35, 4, 15, 37.83, 2);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (30, 37, 4, 12, 34.86, 3);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (30, 50, 3, 15, 12.83, 4);
INSERT INTO Exercicio_Treino (fk_id_treino, fk_id_exercicio, serie, repeticoes, CargaProposta, OrdemSugerida) VALUES (30, 99, 4, 10, 25.48, 5);

-- Aula 06: Vamos trabalhar com uma atividade de consultas (03/06)

-- 1. Liste todos os planos contratados, apresentando os dados do plano, o nome e CPF do cliente. 
SELECT p.*, a.nome, a.cpf FROM Contrato AS c
	INNER JOIN Plano AS p ON c.fk_id_plano = p.id_plano
	INNER JOIN Aluno AS a ON c.fk_id_aluno = a.id_aluno;

-- 2. Apresente todos os caixas com o seu respectivo funcionário responsável (nome, email e telefone do funcionário e todos os dados do caixa). 
SELECT c.*, f.nome, f.email, f.telefone FROM Caixa AS c
	INNER JOIN Funcionario AS f ON c.fk_id_funcionario = f.id_funcionario;
    
-- 3. Apresente todos os pagamentos recebidos de 01/01/2025 até 31/05/2025. 
SELECT * FROM Pagamento WHERE dataPagamento BETWEEN '2025-01-01' AND '2025-05-31';

-- 4. Faça uma consulta SQL que apresente o total de recebimentos obtidos por cada caixa.
SELECT COUNT(p.id_pagamento) AS 'total_recebimentos', c.id_caixa AS 'caixa' FROM Pagamento AS p
	INNER JOIN Caixa AS c ON p.fk_id_caixa = c.id_caixa
		GROUP BY c.id_caixa;

-- 5. Faça uma consulta SQL que apresente o nome do aluno, o nome do exercício, o musculo alvo e o membro de todos os exercícios atribuídos ao treino da aluna Joana Martins.
SELECT a.nome AS 'nome', e.nome AS 'exercicio', e.musculoAlvo, t.membro FROM Exercicio_Treino AS et
	INNER JOIN Treino AS t ON et.fk_id_treino = t.id_treino
    INNER JOIN Exercicio AS e ON et.fk_id_exercicio = e.id_exercicio
    INNER JOIN Contrato AS c ON t.fk_id_contrato = c.id_contrato
    INNER JOIN Aluno AS a ON c.fk_id_aluno = a.id_aluno
		WHERE a.nome = 'Joana Martins';
 
-- 6. Apresente o nome dos alunos que pagaram valores acima da média de todos os pagamentos registrados no sistema.
SELECT a.nome AS 'aluno_pagante_acima_media', p.valor AS 'valor_pago', (SELECT AVG(valor) FROM Pagamento) AS 'media' FROM Pagamento AS p
    INNER JOIN Contrato AS c ON p.fk_id_contrato = c.id_contrato
    INNER JOIN Aluno AS a ON c.fk_id_aluno = a.id_aluno
		WHERE p.valor > (SELECT AVG(valor) FROM Pagamento)
        GROUP BY a.nome, p.valor;

-- 7. Liste o nome dos alunos que realizaram pelo menos um treino registrado na tabela FrequenciaTreinamento. 
SELECT a.nome FROM FrequenciaTreinamento as ft
	INNER JOIN Treino AS t ON ft.fk_id_treino = t.id_treino
	INNER JOIN Contrato AS c ON t.fk_id_contrato = c.id_contrato
    INNER JOIN Aluno AS a ON c.fk_id_aluno = a.id_aluno
		GROUP BY a.nome;

-- 8. Liste os grupos musculares (musculoAlvo) que possuem mais de 5 exercícios cadastrados na tabela Exercicio. 
SELECT musculoAlvo, COUNT(*) AS 'total_exercicios' FROM Exercicio
	GROUP BY musculoAlvo HAVING total_exercicios > 5;

-- 9. Liste todos os alunos, mesmo aqueles que ainda não possuem treinos cadastrados, mostrando também (quando houver) a data de criação do treino. 
SELECT a.nome, ft.DataExecucao AS 'possui_treino' FROM Aluno AS a
	LEFT JOIN Contrato AS c ON a.id_aluno = c.fk_id_aluno
	LEFT JOIN Treino AS t ON c.id_contrato = t.fk_id_contrato
	LEFT JOIN FrequenciaTreinamento AS ft ON t.id_treino = ft.fk_id_treino;

-- 10.  Liste todos os alunos que possuem contrato vigente (dataFim ainda não ocorreu) com o Plano Básico.
SELECT a.nome FROM Aluno AS a
	INNER JOIN Contrato AS c ON a.id_aluno = c.fk_id_aluno
	INNER JOIN Plano AS p ON c.fk_id_plano = p.id_plano
		WHERE p.descricao = 'Plano Básico' AND c.dataFim >= '2025-06-03';

-- Aula 07: Vamos trabalhar com UNION e INSERT com SELECT (17/06)

-- Unindo SELECTs com o UNION
SELECT nome, DataNasc, telefone FROM Aluno UNION ALL 
	SELECT nome, DataNasc, telefone FROM Funcionario;   -- Requisitos para a união: mesmo num. de colunas, 
											            -- mesmo tipo de dados (ex.: VARCHAR)

SELECT nome_cliente, telefone FROM ecomerce.Clientes UNION ALL   -- O UNION também pode ser usado em múltiplos BDs
	SELECT nome, telefone FROM Aluno;
    
-- Inserindo novos dados a partir da seleção usando INSERT com SELECT
INSERT INTO Funcionario(nome, telefone, dataNasc, dataAdmissao)
	SELECT nome, telefone, dataNasc, '2025-06-17' FROM Aluno
		WHERE id_aluno > 5;
        
SELECT * FROM Funcionario;
