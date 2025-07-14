<!--
❗ ➤ References used in this Repository:
🔗 • https://github.com/piyushsuthar/github-readme-quotes
🔗 • https://github.com/kyechan99/capsule-render
🔗 • https://github.com/DenverCoder1/custom-icon-badges
🔗 • https://profilepicturemaker.com
🔗 • https://shields.io
🔗 • https://emoji.gg
🔗 • https://getemoji.com
-->

<div align="left">
  <img src="https://img.shields.io/github/license/juletopi/POO_Programacao_Orientada_a_Objetos" alt="Licence-badge">
</div>

<br>

<!-- PRESENTATION -->

<div align="center">
    <a href="">
        <img src="https://github.com/user-attachments/assets/2268dfea-de44-41f3-baae-b77e1781c5d0" alt="SQL-pic" width="140px" title="Repositório de Banco de Dados">
    </a>
    <h2 align="center">Banco de Dados 🗄️</h2>
</div>

<div align="center">
 
  • Este é um repositório com o conteúdo de Banco de Dados com foco em modelagem física e \
  na criação e manipulação do banco de dados, ministrado pelo professor [**Elias de Abreu**](https://www.linkedin.com/in/elias-de-abreu-domingos-da-silva-843748262/), utilizando o \
  **MySQL Workbench**, linguagem **SQL** além de ferramentas de prototipação \
  como o **BrModelo** para o aprendizado.
 
</div>

<div align="center">
  <a href="https://dev.mysql.com/doc/">
    <img src="https://img.shields.io/badge/Made%20with%20IDE:-MySQL%20-gray.svg?colorA=28679f&amp;colorB=e4a423&amp;style=for-the-badge" alt="MySQLIDE-badge" style="max-width: 100%;">
  </a>
  <a href="https://www.w3schools.com/sql/">
    <img src="https://img.shields.io/badge/Made%20with%20language:-SQL%20-gray.svg?colorA=4f5d99&amp;colorB=3d4a75&amp;style=for-the-badge" alt="SQLLanguage-badge" style="max-width: 100%;">
  </a>
</div>

<!-- SUMMARY -->

<h2 align="center">Sumário 🧾</h2>

<div align="center">
  <p align="center">
    <a href="#-professor">Professor</a> &#xa0; | &#xa0;
    <a href="#-sobre-banco-de-dados">Sobre o tópico</a> &#xa0; | &#xa0;
    <a href="#-sobre-banco-de-dados">Listagem de conceitos</a> &#xa0; | &#xa0;
    <a href="#-criação-do-banco-de-dados">Criação de banco de dados</a>
   </p>
    <a href="#-manipulação-do-banco-de-dados">Manipulação de banco de dados</a> &#xa0; | &#xa0;
    <a href="#1-criando-um-banco-de-dados">Conceitos Aprendidos 1</a> &#xa0; | &#xa0;
    <a href="#2-inserindo-e-manipulando-dados">Conceitos Aprendidos 2</a>
  </p>
    <a href="#3-consultas-mais-complexas-e-usando-join">Conceitos Aprendidos 3</a> &#xa0; | &#xa0;
    <a href="#4-treinando-consultas-com-join">Conceitos Aprendidos 4</a> &#xa0; | &#xa0;
    <a href="#5-união-de-consultas-e-inserção-com-seleção">Conceitos Aprendidos 5</a>
  </p>
    <a href="#6-trabalho-final-diagrama-der-modelagem-física-e-consultas-avançadas">Trabalho final</a> &#xa0; | &#xa0;
    <a href="#-autor">Autor</a>
</div>

<br>

<div align="center">
  <img width=100% align="center" src="https://capsule-render.vercel.app/api?type=rect&color=8354d2&height=4&section=header&%20render">
</div>

<br>

<!-- ABOUT TEACHER -->

## 👨‍🏫 Professor:

<a href="">
  <img align="left" height="135px" width="135px" alt="EliasAbreu-pic" title="Professor Elias de Abreu" src="https://github.com/user-attachments/assets/9428ca60-680a-4775-9315-707c8512c898">
</a>

  **Elias de Abreu Domingos da Silva - Entusiasta em T.I. | Perito Criminal na Área da Informática | Professor de Curso Técnico e Superior** \
  [**IFRO Campus Ji-Paraná**](https://portal.ifro.edu.br/ji-parana) • <i>Atuando desde Dezembro de 2017</i> \
  Linguagens & Tecnologias: `Visual Studio` • `MySQL` • `C#` • `PHP` • `Java` • `E outros...` \
  Contato: **[Elias de Abreu (LinkedIn)](https://www.linkedin.com/in/elias-de-abreu-domingos-da-silva-843748262/)**

</div>

<br>

<!-- ABOUT TOPIC -->

## 🌟 Sobre Banco de Dados

### ❓ Modelagem física e banco de dados

A **modelagem física de banco de dados** é a etapa em que o modelo lógico é transformado em um banco de dados real, por meio da criação de **tabelas, colunas, tipos de dados, chaves primárias e estrangeiras, índices** e outras restrições. No MySQL, essa implementação é feita utilizando a linguagem SQL e deve seguir as regras e limitações do SGBD escolhido. Essa fase é fundamental, pois influencia diretamente no desempenho, segurança e integridade dos dados.

Para fins de aprendizado, o **SGBD utilizado será o MySQL**, e os principais conceitos relacionados à modelagem e manipulação de dados estão listados abaixo.

<br>

## 📋 Listagem de conceitos

### 🎲 Principais Conceitos de Banco de Dados


- **🗄️ Tabela**: Estrutura que armazena os dados no banco. Cada tabela contém colunas (atributos) e linhas (registros).
  - **📊 Colunas (Atributos)**: Representam os diferentes tipos de dados armazenados, como texto, números, datas, etc.
  - **📄 Linhas (Registros)**: São os dados armazenados em cada coluna da tabela.

- **🔑 Chaves**: Elementos essenciais para garantir a integridade e organização dos dados.
  - **🔐 Chave Primária (`PRIMARY KEY`)**: Identifica de forma única cada registro em uma tabela.
  - **🔗 Chave Estrangeira (`FOREIGN KEY`)**: Relaciona tabelas, garantindo a integridade referencial entre os dados.

- **📦 Tipos de Dados**: Definem o tipo de informação que cada coluna pode armazenar. Alguns exemplos comuns no MySQL são:
  - **Texto**: `VARCHAR`, `TEXT`
  - **Números**: `INT`, `DECIMAL`, `FLOAT`
  - **Datas e Horas**: `DATE`, `DATETIME`, `TIMESTAMP`
  - **Booleanos**: `BOOLEAN`

- **📜 Constraints (Restrições)**: São regras aplicadas às colunas para garantir a consistência dos dados.
  - `NOT NULL`: Impede que a coluna aceite valores vazios.
  - `UNIQUE`: Garante que os valores da coluna sejam únicos.
  - `CHECK`: Define uma condição que os valores da coluna devem seguir.
  - `DEFAULT`: Define um valor padrão para a coluna caso não seja informado.

---

### 🏗️ Estrutura

- **🧱 Criação de Estrutura (DDL)**: Envolve a definição da estrutura do banco de dados.
  - `CREATE DATABASE`: Cria um novo banco de dados.
  - `USE`: Seleciona qual banco será utilizado.
  - `CREATE TABLE`: Cria uma nova tabela com colunas, tipos e restrições.
  - `DROP TABLE`: Exclui uma tabela e seus dados de forma permanente.

- **✍️ Manipulação de Dados (DML)**: Permite trabalhar com os dados dentro das tabelas.
  - `INSERT INTO`: Insere registros na tabela.
  - `SELECT`: Consulta dados armazenados.
  - `UPDATE`: Altera valores de registros existentes.
  - `DELETE`: Remove registros de uma tabela.
  - `ALTER TABLE`: Modifica a estrutura de uma tabela (como tipo de coluna ou nome).

---

### 🔎 Filtros e Condições

* **🔍 WHERE**: Define condições para filtrar registros nas consultas.

  * `=`: Igualdade
  * `<>`: Diferente
  * `>`, `<`, `>=`, `<=`: Operadores de comparação
  * `LIKE`: Filtro por padrão (ex: `'A%'` começa com A)
  * `BETWEEN`: Define um intervalo de valores
  * `IN`: Lista de valores permitidos
  * `IS NULL` / `IS NOT NULL`: Verifica se um valor é nulo
  * `AND`, `OR`, `NOT`: Combinações lógicas entre condições

---

### 📑 Ordenação e Agrupamento

* **🧾 ORDER BY**: Organiza os resultados da consulta.

  * `ASC`: Ordem crescente (padrão)
  * `DESC`: Ordem decrescente

* **📦 GROUP BY**: Agrupa registros com base em uma ou mais colunas.

* **🎯 HAVING**: Aplica condições **após** o agrupamento (diferente de `WHERE`, que vem antes).

---

### 📊 Funções Analíticas e Estatísticas

* **📐 Funções de Agregação**: Realizam cálculos sobre grupos de dados.

  * `AVG()`: Média
  * `SUM()`: Soma
  * `MIN()`: Mínimo
  * `MAX()`: Máximo
  * `COUNT()`: Contagem de registros

* **🔁 DISTINCT**: Elimina valores duplicados nos resultados da consulta.

---

### 🧠 Conceitos Avançados

* **🔗 JOINs (Junções)**: Permitem combinar dados de duas ou mais tabelas.

  * `INNER JOIN`: Retorna registros com correspondência em ambas as tabelas.
  * `LEFT JOIN`: Retorna todos os registros da tabela da esquerda (mesmo sem correspondência).
  * `RIGHT JOIN`: Retorna todos os registros da tabela da direita (mesmo sem correspondência).

* **🏷️ Aliases (`AS`)**: Atribui apelidos temporários a colunas ou tabelas para facilitar a leitura.

  * Exemplo: `SELECT nome AS 'Nome do Cliente' FROM Cliente;`

* **🔁 Subconsultas (SELECT alinhado)**: Um `SELECT` dentro de outro, usado como filtro ou valor.

  * Exemplo: `WHERE id IN (SELECT id FROM ...)`

* **🔀 União de Consultas**:

  * `UNION`: Junta os resultados de duas consultas e elimina duplicados.
  * `UNION ALL`: Junta os resultados e **mantém** os duplicados.

* **📥 Inserção com Seleção**:

  * `INSERT INTO tabela_destino (...) SELECT ... FROM tabela_origem;`
  * Usado para copiar dados de uma tabela para outra com base em um filtro.

<div align="left">
  <h6><a href="#banco-de-dados-%EF%B8%8F"> Voltar para o início ↺</a></h6>
</div>

<br>

## ❓ Criação do banco de dados

A **criação do banco de dados** transforma o projeto lógico em um banco relacional usando **DDL (Data Definition Language)** no SQL (`CREATE`, `ALTER`, `DROP`). Implementa tabelas, colunas, tipos de dados, chaves, e restrições no SGBD (e.g., MySQL).

### 🏗️ Comandos de Definição (DDL)

1. **Criar Banco**:
   ```sql
   CREATE DATABASE loja;
   USE loja;
   ```

2. **Criar Tabelas**:
   - Definir colunas, tipos de dados, e restrições (`PRIMARY KEY`, `NOT NULL`, `UNIQUE`).
   - Exemplo:
     ```sql
     CREATE TABLE clientes (
         id_cliente INT PRIMARY KEY AUTO_INCREMENT,
         nome VARCHAR(100) NOT NULL,
         email VARCHAR(150) UNIQUE,
         data_nascimento DATE
     );
     ```

3. **Definir Chaves Estrangeiras (FK)**:
   - FK vincula tabelas, referenciando uma PK.
   - Exemplo (tabela `pedidos`):
     ```sql
     CREATE TABLE pedidos (
         id_pedido INT PRIMARY KEY AUTO_INCREMENT,
         id_cliente INT NOT NULL,
         data_pedido DATE NOT NULL,
         valor_total DECIMAL(10,2),
         FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
     );
     ```

4. **Regras de FK por Cardinalidade**:
   - **1:1**: FK na tabela menos acessada, com `NOT NULL` e `UNIQUE`.
   - **1:N**: FK na tabela do lado "muitos" (e.g., `pedidos`).
   - **N:N**: Tabela intermediária com duas FKs.
     - Exemplo:
       ```sql
       CREATE TABLE aluno_curso (
           id_aluno INT,
           id_curso INT,
           PRIMARY KEY (id_aluno, id_curso),
           FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
           FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
       );
       ```

<div align="left">
  <h6><a href="#banco-de-dados-%EF%B8%8F"> Voltar para o início ↺</a></h6>
</div>

<br>

## ❓ Manipulação do banco de dados

A **manipulação do banco de dados** é realizada utilizando a **DML (Data Manipulation Language)** do SQL, que inclui comandos como `INSERT`, `UPDATE`, `DELETE`, e `SELECT`. Esses comandos permitem inserir, atualizar, remover e consultar dados nas tabelas criadas.

### 🛠️ Comandos de Manipulação (DML)

1. **INSERT**: Insere novos registros em uma tabela.
   - Sintaxe:
     ```sql
     INSERT INTO nome_tabela (coluna1, coluna2, ...) VALUES (valor1, valor2, ...);
     ```
   - Exemplo (inserindo um cliente na tabela `clientes`):
     ```sql
     INSERT INTO clientes (nome, email, data_nascimento)
     VALUES ('João Silva', 'joao.silva@email.com', '1990-05-15');
     ```
   - Exemplo (inserindo um pedido na tabela `pedidos`):
     ```sql
     INSERT INTO pedidos (id_cliente, data_pedido, valor_total)
     VALUES (1, '2025-06-10', 150.75);
     ```

2. **UPDATE**: Atualiza registros existentes em uma tabela.
   - Sintaxe:
     ```sql
     UPDATE nome_tabela SET coluna1 = valor1, coluna2 = valor2 WHERE condição;
     ```
   - Exemplo (atualizando o email de um cliente):
     ```sql
     UPDATE clientes
     SET email = 'joao.novo@email.com'
     WHERE id_cliente = 1;
     ```
   - **Nota**: A cláusula `WHERE` é essencial para evitar atualizações indesejadas em todos os registros.

3. **DELETE**: Remove registros de uma tabela.
   - Sintaxe:
     ```sql
     DELETE FROM nome_tabela WHERE condição;
     ```
   - Exemplo (removendo um pedido):
     ```sql
     DELETE FROM pedidos
     WHERE id_pedido = 1;
     ```
   - **Nota**: A integridade referencial garantida pelas FKs impede a remoção de registros que sejam referenciados (e.g., não é possível deletar um cliente com pedidos associados, a menos que configurado com `ON DELETE CASCADE`).

4. **SELECT**: Consulta dados em uma ou mais tabelas.
   - Sintaxe básica:
     ```sql
     SELECT coluna1, coluna2, ... FROM nome_tabela WHERE condição;
     ```
   - Exemplo (consultando todos os clientes):
     ```sql
     SELECT * FROM clientes;
     ```
   - Exemplo (consultando pedidos de um cliente específico):
     ```sql
     SELECT p.id_pedido, p.data_pedido, c.nome FROM pedidos p
     JOIN clientes c ON p.id_cliente = c.id_cliente
     WHERE c.id_cliente = 1;
     ```

<div align="left">
  <h6><a href="#banco-de-dados-%EF%B8%8F"> Voltar para o início ↺</a></h6>
</div>

<br>

<div align="center">
  <img width=100% align="center" src="https://capsule-render.vercel.app/api?type=rect&color=4f5d99&height=4&section=header&%20render">
</div>

<!-- LEARNED CONCEPTS -->

## 📚 Conceitos Aprendidos:

### 1. Criando um banco de dados

> [!NOTE]\
> *Retirado da aula de "[atividade1.sql](https://github.com/juletopi/Banco_de_Dados/blob/main/atividade1.sql)"*

- Conceitos aprendidos:
  - Criar um banco de dados e inserir tabelas no banco de dados
  - Criar e apagar bancos de dados com `CREATE DATABASE`, `DROP DATABASE`
  - Selecionar um banco de dados com `USE`
  - Criar tabelas com `CREATE TABLE`, incluindo tipagens `INT`, `VARCHAR`, `DATE`, `TEXT`, `BOOL`
  - Definir restrições `PRIMARY KEY`, `AUTO_INCREMENT`, `NOT NULL`, `DEFAULT`, `FOREIGN KEY`
  - Referenciando uma chave-estrangeira `FOREIGN KEY (fk) REFERENCES Table (id)`

```sql
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
```

<div align="left">
  <h6><a href="#banco-de-dados-%EF%B8%8F"> Voltar para o início ↺</a></h6>
</div>

<div align="center">
  <img width=100% align="center" src="https://capsule-render.vercel.app/api?type=rect&color=4f5d99&height=4&section=header&%20render">
</div>

### 2. Inserindo e manipulando dados

> [!NOTE]\
> *Retirado da aula de "[atividade1-2.sql](https://github.com/juletopi/Banco_de_Dados/blob/main/atividade1-2.sql)"*

- Conceitos aprendidos:
  - Inserir dados em tabelas com `INSERT INTO ... VALUES`
  - Consultar dados com `SELECT`, incluindo todas as colunas `(*)` ou colunas específicas
  - Filtrar consultas com `WHERE`, usando condições `(=, >=, <=,)`, `LIKE`, `BETWEEN`, `IN`, `AND`
  - Ordenar resultados com `ORDER BY`, incluindo `ASC` e `DESC`
  - Atualizar dados com `UPDATE` ... SET ... WHERE`
  - Adicionar colunas com `ALTER TABLE ... ADD`
  - Excluir dados com `DELETE ... WHERE`
  - Contar registros com `COUNT(*)`
  - Usar padrões de busca com `LIKE` (ex.: `J%, __A%`)

```sql
-- Atividade 2: Insira os dados nas tabelas (08/04)

-- Inserindo dados
INSERT INTO Usuario(nome_alu, data_nasc_alu, email_alu) VALUES
    ("Amanda Rangel", "2005-08-11", "amanda@gmail.com"),
    ("Júlio Cézar", "2003-09-17", "julio@gmail.com"),
    ("Filipe Maciel", "2003-09-24", "filipe@gmail.com"),
    ("Breno Dantas", "2005-11-01", "breno@gmail.com");
INSERT INTO Usuario(nome_alu, data_nasc_alu, email_alu) VALUES ("José Fernando", "2005-01-01", "fernando@gamil.com");
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
SELECT * FROM Usuario WHERE email_alu = "amanda@gmail.com";

-- Checando colunas específicas da tabela com um OPERADOR
SELECT * FROM Usuario WHERE data_nasc_alu >= "2005-01-01";

-- Checando colunas da tabela com uma ORDENAÇÃO
SELECT * FROM Usuario ORDER BY data_nasc_alu DESC;

-- Checando linhas com INTERVALO de valores
SELECT * FROM Usuario WHERE id_usuario >= 5 AND id_usuario <= 9;

-- Checando com MÚLTIPLAS condições e ordenação
SELECT * FROM Usuario
WHERE id_usuario >= 4 AND data_nasc_alu <= "2000-01-01"
ORDER BY nome_alu;

-- Checando linhas onde os nomes INICIAM com a letra J
SELECT * FROM Usuario WHERE nome_alu LIKE "J%";

-- Checando por linhas onde os nomes CONTÉM a letra A no terceiro caractere
SELECT * FROM Usuario
WHERE nome_alu LIKE '__A%';

-- Checando usuários com IDs entre 5 e 10
SELECT * FROM Usuario WHERE id_usuario BETWEEN 5 AND 10;

-- Atividade 4: Vamos atualizar tabelas e dados de um bd (15/04)

-- Atualizando colunas de uma tabela do bd
UPDATE Usuario SET nome_alu = "Júlio Cézar (Juleba)" WHERE id_usuario = 1;
UPDATE Usuario SET nome_alu = "Amanda Rangoel (Amandinha)" WHERE id_usuario = 2;

-- Faça uma nova coluna chamada "status_alu" com três combinativos
ALTER TABLE Usuario ADD status_alu VARCHAR(20);
UPDATE Usuario SET status_alu = "ativo";

-- Excluindo registros
DELETE FROM Usuario WHERE id_usuario IN (3, 4);

-- Conta quantos usuários restam
SELECT COUNT(*) AS total_usuarios FROM Usuario;
```

<div align="left">
  <h6><a href="#banco-de-dados-%EF%B8%8F"> Voltar para o início ↺</a></h6>
</div>

<div align="center">
  <img width=100% align="center" src="https://capsule-render.vercel.app/api?type=rect&color=4f5d99&height=4&section=header&%20render">
</div>

### 3. Consultas mais complexas e usando `JOIN`

> [!NOTE]\
> *Retirado da aula de "[ecomerce2.sql](https://github.com/juletopi/Banco_de_Dados/blob/main/ecomerce2.sql)"*

- Conceitos aprendidos:
  - Realizar consultas analíticas com funções agregadas `AVG`, `SUM`, `MIN`, `COUNT`, `DISTINCT`
  - Usar `JOIN` para combinar tabelas:
    - `INNER JOIN` para registros com correspondência em ambas as tabelas
    - `LEFT JOIN` para todos os registros da tabela à esquerda
    - `RIGHT JOIN` para todos os registros da tabela à direita
  - Usar subconsultas (`SELECT` alinhado) com `WHERE` para comparar resultados
  - Agrupar dados com `GROUP BY` por uma ou mais colunas
  - Filtrar grupos com `HAVING` após `GROUP BY`
  - Usar aliases em colunas e tabelas (ex.:` AS 'quantidade_pagamentos'`, `AS p`)

```sql
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
SELECT * FROM TiposPagamento;

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
('Camiseta Estampada', 'Camiseta 100% algodão, tamanho M', 49.99, NULL),
('Calça Jeans', 'Calça jeans slim fit, tamanho 42', 89.99, 2),
('Arroz 5kg', 'Pacote de arroz tipo 1, 5kg', 18.50, 3),
('Feijão 1kg', 'Feijão preto tipo 1', 7.99, NULL),
('Bola de Futebol', 'Bola de futebol oficial, tamanho 5', 79.99, NULL),
('Carrinho de Brinquedo', 'Carrinho de brinquedo de plástico', 29.99, NULL),
('Tênis Nike', 'Tênis esportivo, modelo Air Max', 499.99, 5),
('Bola de Basquete', 'Bola de basquete oficial', 119.99, 5),
('Livro Harry Potter', 'Livro da série Harry Potter - Capa dura', 49.99, 6),
('Revista de Moda', 'Revista de moda feminina, edição especial', 12.99, 6),
('Sofá Retrátil', 'Sofá retrátil 3 lugares, cor cinza', 1799.99, 7),
('Mesa de Jantar', 'Mesa de jantar com 6 cadeiras', 1299.99, NULL),
('Shampoo Loreal', 'Shampoo hidratação intensiva', 19.99, 8),
('Perfume Chanel', 'Perfume feminino Chanel No. 5', 499.99, NULL),
('Furadeira Elétrica', 'Furadeira de impacto 750W', 159.99, NULL),
('Serra Tico-Tico', 'Serra tico-tico para madeira', 129.99, 9),
('Creme Facial', 'Creme facial anti-idade', 89.99, 10),
('Escova de Cabelo', 'Escova de cabelo profissional', 29.99, 10),
('Smartwatch', 'Relógio inteligente com monitoramento de atividades', 299.99, 1),
('Tablet Samsung', 'Tablet com tela de 10 polegadas, 64GB', 899.99, 1),
('Jaqueta de Couro', 'Jaqueta de couro tamanho G', 199.99, 2),
('Tênis de Corrida', 'Tênis de corrida Nike, tamanho 42', 229.99, 2),
('Macarrão 500g', 'Pacote de macarrão espaguete', 3.99, 3),
('Café em Pó', 'Café moído 500g', 14.99, NULL),
('Puzzles 500 peças', 'Quebra-cabeça de 500 peças', 59.99, NULL),
('Boneca Barbie', 'Boneca Barbie com acessórios', 99.99, NULL),
('Raquete de Tênis', 'Raquete de tênis Wilson', 249.99, 5),
('Tênis Converse', 'Tênis casual Converse, cor preta', 349.99, 5),
('Livro O Senhor dos Anéis', 'Livro da trilogia O Senhor dos Anéis', 59.99, 6),
('Caderno Universitário', 'Caderno universitário 10 matérias', 19.99, NULL),
('Cadeira de Escritório', 'Cadeira de escritório ergonômica', 299.99, NULL),
('Cômoda 5 Gavetas', 'Cômoda de madeira com 5 gavetas', 799.99, 7),
('Perfume Dior', 'Perfume masculino Dior Sauvage', 349.99, 8),
('Desodorante Rexona', 'Desodorante em spray Rexona 150ml', 12.99, 8),
('Chave de Fenda', 'Chave de fenda 6mm', 7.99, NULL),
('Alicate de Corte', 'Alicate de corte 150mm', 19.99, 9),
('Máscara Facial', 'Máscara facial para hidratação', 49.99, 10),
('Balde de Plástico', 'Balde de plástico 15L', 10.99, NULL);


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
(1, 1, 4, 1599.99),
(2, 2, 1, 4999.99),
(3, 3, 9, 59.99),
(4, 13, 2, 1799.99),
(5, 14, 2, 1299.99),
(6, 16, 1, 349.99),
(7, 9, 7, 499.99),
(8, 22, 11, 1599.99),
(9, 21, 28, 299.99),
(10, 5, 5, 1199.99),
(11, 12, 7, 89.99),
(12, 4, 1, 99.99),
(13, 30, 1, 799.99),
(14, 27, 1, 699.99),
(15, 17, 1, 199.99),
(16, 18, 1, 159.99),
(17, 10, 1, 1499.99),
(18, 29, 2, 259.99),
(19, 26, 1, 399.99),
(20, 34, 4, 799.99);


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
-- DELETE FROM Clientes WHERE id_cliente = 1;

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

-- Aula 05: Vamos trabalhar com JOINs, SELECT alinhado, GROUP BY e HAVING (27/05)

-- Usando INNER JOIN
SELECT p.* FROM Pagamentos AS p          -- O uso do INNER JOIN aconte para os registros com correspondência em ambas as tabelas
	INNER JOIN Vendas AS v
		ON p.id_pagamento = v.id_venda;

-- Usando LEFT JOIN
SELECT p.* FROM Produtos AS p                -- O uso do LEFT JOIN aconte para todos os registros da tabela esquerda, mesmo que não tenham categoria correspondente
	LEFT JOIN Categorias AS c
		ON p.id_categoria = c.id_categoria;

-- Usando RIGHT JOIN
SELECT v.* FROM Vendas AS v               -- O uso do RIGHT JOIN aconte para todos os registros da tabela direita, mesmo que não tenham categoria correspondente
	RIGHT JOIN Clientes AS c
		ON v.id_cliente = c.id_cliente;
        
-- Usando SELECT alinhado
SELECT p.* FROM Produtos AS p INNER JOIN ItensVendidos AS i   -- O uso do SELECT alinhado aconte para comparar
	ON p.id_produto = i.id_produto                            -- o resultado do segundo SELECT e utilizar esse
    WHERE (SELECT SUM(quantidade) FROM ItensVendidos AS it    -- resultado na primeira condição
		WHERE p.id_produto = it.id_produto) > 2;

-- Outro exemplo usando SELECT alinhado
SELECT v.* FROM Vendas AS v 
    WHERE (SELECT COUNT(id_pagamento) FROM Pagamentos AS pag
		WHERE pag.id_venda = v.id_venda) >= 2;
        
-- Usando HAVING
SELECT SUM(i.preco_unitario), p.* FROM ItensVendidos AS i
	INNER JOIN Produtos AS p ON p.id_produto = i.id_produto
		GROUP BY i.id_produto HAVING SUM(i.preco_unitario) > 1000;   -- HAVING é seleção de agrupamentos
        
-- Usando GROUP BY
SELECT COUNT(p.id_categoria) AS 'quantidade_vendas', c.id_categoria, nome_categoria FROM Produtos AS p
	INNER JOIN Categorias AS c ON c.id_categoria = p.id_categoria
		GROUP BY p.id_categoria;

-- Qtd que cada tipo_pagamento foi realizado/executado
SELECT COUNT(p.id_pagamento) AS 'quantidade_pagamentos', p.id_tipo_pagamento, tp.tipo_pagamento FROM Pagamentos AS p
	INNER JOIN TiposPagamento AS tp ON tp.id_pagamento = p.id_tipo_pagamento
		GROUP BY p.id_tipo_pagamento;
        
SELECT SUM(p.id_pagamento) AS 'valores', p.id_tipo_pagamento, tp.tipo_pagamento FROM Pagamentos AS p
	INNER JOIN TiposPagamento AS tp ON tp.id_pagamento = p.id_tipo_pagamento
		WHERE p.status_pagamento = 'Pago'   -- WHERE vem antes de GROUP BY
		GROUP BY p.id_tipo_pagamento HAVING COUNT(p.valor) > 2000;
```

<div align="left">
  <h6><a href="#banco-de-dados-%EF%B8%8F"> Voltar para o início ↺</a></h6>
</div>

<div align="center">
  <img width=100% align="center" src="https://capsule-render.vercel.app/api?type=rect&color=4f5d99&height=4&section=header&%20render">
</div>

### 4. Treinando consultas com `JOIN`
> [!NOTE]\
> *Retirado da aula de "[academia.sql](https://github.com/juletopi/Banco_de_Dados/blob/main/academia.sql)"*

- Conceitos aprendidos:
  - Lista de 10 questões sobre consultas com JOIN:
    - 1. Liste todos os planos contratados, apresentando os dados do plano, o nome e CPF do cliente.
    - 2. Apresente todos os caixas com o seu respectivo funcionário responsável (nome, email e telefone do funcionário e todos os dados do caixa).
    - 3. Apresente todos os pagamentos recebidos de 01/01/2025 até 31/05/2025.
    - 4. Faça uma consulta SQL que apresente o total de recebimentos obtidos por cada caixa.
    - 5. Faça uma consulta SQL que apresente o nome do aluno, o nome do exercício, o musculo alvo e o membro de todos os exercícios atribuídos ao treino da aluna Joana Martins.
    - 6. Apresente o nome dos alunos que pagaram valores acima da média de todos os pagamentos registrados no sistema.
    - 7. Liste o nome dos alunos que realizaram pelo menos um treino registrado na tabela FrequenciaTreinamento.
    - 8. Liste os grupos musculares (musculoAlvo) que possuem mais de 5 exercícios cadastrados na tabela Exercicio.
    - 9. Liste todos os alunos, mesmo aqueles que ainda não possuem treinos cadastrados, mostrando também (quando houver) a data de criação do treino.
    - 10.  Liste todos os alunos que possuem contrato vigente (dataFim ainda não ocorreu) com o Plano Básico.

```sql
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
```

<div align="left">
  <h6><a href="#banco-de-dados-%EF%B8%8F"> Voltar para o início ↺</a></h6>
</div>

<div align="center">
  <img width=100% align="center" src="https://capsule-render.vercel.app/api?type=rect&color=4f5d99&height=4&section=header&%20render">
</div>

### 5. União de Consultas e Inserção com Seleção
> [!NOTE]\
> *Retirado da aula de "[academia.sql](https://github.com/juletopi/Banco_de_Dados/blob/main/academia.sql)"*

- Conceitos aprendidos:
  - Utilização do UNION e UNION ALL para unir resultados de diferentes consultas SELECT.
  - Utilização do INSERT INTO ... SELECT para inserir dados de uma tabela em outra a partir de uma seleção.
  - Possibilidade de unir dados entre diferentes bancos de dados.

```sql
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
```

<div align="left">
  <h6><a href="#banco-de-dados-%EF%B8%8F"> Voltar para o início ↺</a></h6>
</div>

<div align="center">
  <img width=100% align="center" src="https://capsule-render.vercel.app/api?type=rect&color=4f5d99&height=4&section=header&%20render">
</div>

### 6. Trabalho final: Diagrama D.E.R, Modelagem Física e Consultas Avançadas
> [!NOTE]\
> *Retirado da aula de "[controleGeo.sql](https://github.com/juletopi/Banco_de_Dados/blob/main/controleGeo.sql)"*

- Conceitos aprendidos:
  - Trabalho final com modelagem do D.E.R, modelagem física e consultas avançadas a partir das seguintes instruções:
    - A case deve ter no mínimo 7 tabelas;
    - Apresentar o script para a inserção de no mínimo 10 registros em cada tabela;
    - Apresentar 3 exemplos de consultas usando junção de tabelas (INNER JOIN, LEFT JOIN, RIGHT JOIN);
    - Apresentar 2 consultas que utilizam subconsultas (consultas aninhadas);
    - Apresentar 2 consultas que utilizam GROUP BY, sendo uma obrigatoriamente usando a cláusula HAVING;
    - O aluno deve apresentar o modelo Entidade-Relacionamento (D.E.R).

#### Diagrama Entidade-Relacionamento (D.E.R)
> <img align="center" src="https://github.com/user-attachments/assets/f64d714e-6fcd-4791-97a8-a35f4cb57d79" alt="DERControleGeo-pic" title="D.E.R controleGeo" style="width: 60%;">

#### Código SQL com criação do banco de dados, inserção de registros e consultas
```sql
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

-- Imagens
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

-- Lote
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
```

<div align="left">
  <h6><a href="#banco-de-dados-%EF%B8%8F"> Voltar para o início ↺</a></h6>
</div>

<br>

<!-- AUTHOR -->

## 👤 Autor

<table>
  <tr>
    <td valign="middle" width="25%">
      <div align="center">  
        <a href="https://github.com/juletopi" title="Perfil no GitHub" aria-label="GitHub - Juletopi">
          <img src="https://user-images.githubusercontent.com/76459155/220271784-9f930c36-c370-4518-9b56-604627c6e2b5.png" width="150" alt="Profile Pic - Juletopi"/>
          <br>
          <sub><strong>Júlio Cézar | Juletopi</strong></sub>
          <br>
        </a>
      </div>
    </td>
    <td valign="middle" width="75%">
      <ul style="list-style: none; padding-left: 0; margin: 0;">
        <li>
          <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linkedin/linkedin-original.svg" width="15" alt="LinkedIn" style="vertical-align:middle;">
          LinkedIn — 
          <a href="https://www.linkedin.com/in/julio-cezar-pereira-camargo/" target="_blank" rel="noopener noreferrer" aria-label="LinkedIn - Júlio Cézar P. Camargo">
            Júlio Cézar P. Camargo
          </a>
        </li>
        <li>
          <img src="https://pngimg.com/uploads/email/email_PNG100738.png" width="15" alt="Email" style="vertical-align:middle;">
          Email — 
          <a href="mailto:juliocezarpvh@hotmail.com" aria-label="Send email - juliocezarpvh@hotmail.com">
            juliocezarpvh@hotmail.com
          </a>
        </li>
        <li>
          <img src="https://cdn3.emoji.gg/emojis/2116-facebook.png" width="15" alt="Facebook" style="vertical-align:middle;">
          Facebook — 
          <a href="https://www.facebook.com/juhletopi" target="_blank" rel="noopener noreferrer" aria-label="Facebook - Juhletopi">
            facebook.com/juhletopi
          </a>
        </li>
        <li>
          <img src="https://cdn3.emoji.gg/emojis/6333-instagram.png" width="15" alt="Instagram" style="vertical-align:middle;">
          Instagram — 
          <a href="https://www.instagram.com/juletopi/" target="_blank" rel="noopener noreferrer" aria-label="Instagram - Juletopi">
            @juletopi
          </a>
        </li>
      </ul>
    </td>
  </tr>
  <tr>
    <td colspan="2" align="center">
      <img src="https://juletopi.github.io/JCPC_Portfolio/src/images/initialsLogo.png" width="25" alt="Portfolio" align="center"/>
      Portfolio —
      <a href="https://juletopi.github.io/JCPC_Portfolio/" target="_blank" rel="noopener noreferrer" aria-label="Portfolio - Juletopi">
        juletopi.github.io/JCPC_Portfolio
      </a>
    </td>
  </tr>
</table>

<div align="left">
  <h6><a href="#banco-de-dados-%EF%B8%8F"> Voltar para o início ↺</a></h6>
</div>

<br>

<!-- THANK YOU, GOODBYE -->

----

<div align="center">
  Feito com 💜 e ☕ por <a href="https://github.com/juletopi"> Juletopi</a>.
</div>
