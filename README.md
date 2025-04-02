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
 
  • Este é um repositório com o conteúdo de Banco de Dados com foco em modelagem física, \
  ministrado pelo professor [**Elias de Abreu**](https://www.linkedin.com/in/elias-de-abreu-domingos-da-silva-843748262/), utilizando o **MySQL Workbench**, linguagem \
  **SQL** e ferramentas de prototipação como o **BrModelo** para o aprendizado.
 
</div>

<div align="center">
  <a href="https://dev.mysql.com/doc/">
    <img src="https://img.shields.io/badge/Made%20with%20IDE:-MySQL%20-gray.svg?colorA=28679f&amp;colorB=e4a423&amp;style=for-the-badge" alt="MySQLIDE-badge" style="max-width: 100%;">
  </a>
  <a href="https://www.w3schools.com/sql/">
    <img src="https://img.shields.io/badge/Made%20with%20language:-SQL%20-gray.svg?colorA=4f5d99&amp;colorB=3d4a75&amp;style=for-the-badge" alt="SQLLanguage-badge" style="max-width: 100%;">
  </a>
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

<div align="center">
  <img width=100% align="center" src="https://capsule-render.vercel.app/api?type=rect&color=4f5d99&height=4&section=header&%20render">
</div>

<!-- ABOUT TOPIC -->

## 🌟 Banco de Dados – Modelagem Física  

### ❓ O que é?  

A **modelagem física de banco de dados** é a etapa onde o modelo lógico é transformado em um banco de dados real, definindo **tabelas, colunas, tipos de dados, chaves primárias e estrangeiras, índices** e outras restrições. No MySQL e SQL, essa modelagem segue as regras do SGBD escolhido e influencia diretamente no desempenho do banco.  

### 📋 Principais Conceitos  

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
  - **Booleanos**: `BOOLEAN` (ou `TINYINT(1)`)  

- **🚀 Índices (`INDEX`)**: Melhoram o desempenho das buscas no banco de dados, reduzindo o tempo de consulta.  

- **📜 Constraints (Restrições)**: São regras aplicadas às colunas para garantir a consistência dos dados.  
  - `NOT NULL`: Impede que a coluna aceite valores vazios.  
  - `UNIQUE`: Garante que os valores da coluna sejam únicos.  
  - `CHECK`: Define uma condição que os valores da coluna devem seguir.  
  - `DEFAULT`: Define um valor padrão para a coluna caso não seja informado.  

### 🏗️ Criando um Banco de Dados e Tabelas no MySQL  

```sql
CREATE DATABASE loja;
USE loja;

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    data_nascimento DATE
);

CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    data_pedido DATE NOT NULL,
    total DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);
```

Nesse exemplo:  
✔ Criamos um banco chamado **loja**.  
✔ Criamos a tabela **clientes** com ID único e e-mail obrigatório.  
✔ Criamos a tabela **pedidos**, relacionando-a com **clientes** por meio de uma chave estrangeira.

<div align="left">
  <h6><a href="#banco-de-dados-%EF%B8%8F"> Voltar para o início ↺</a></h6>
</div>

<div align="center">
  <img width=100% align="center" src="https://capsule-render.vercel.app/api?type=rect&color=4f5d99&height=4&section=header&%20render">
</div>
