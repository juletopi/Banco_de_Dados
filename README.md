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
 
  • Este é um repositório com o conteúdo de Banco de Dados com foco em modelagem física e na \
  criação e manipulação do banco de dados, ministrado pelo professor [**Elias de Abreu**](https://www.linkedin.com/in/elias-de-abreu-domingos-da-silva-843748262/), utilizando o **MySQL Workbench**, \
  linguagem **SQL** além de ferramentas de prototipação como o **BrModelo** para o aprendizado.
 
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

## 🌟 Sobre Banco de Dados

### ❓ Modelagem física

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
  - **Booleanos**: `BOOLEAN`

- **📜 Constraints (Restrições)**: São regras aplicadas às colunas para garantir a consistência dos dados.
  - `NOT NULL`: Impede que a coluna aceite valores vazios.
  - `UNIQUE`: Garante que os valores da coluna sejam únicos.
  - `CHECK`: Define uma condição que os valores da coluna devem seguir.
  - `DEFAULT`: Define um valor padrão para a coluna caso não seja informado.

### ❓ Criação do banco de dados

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

### ❓ Manipulação do banco de dados

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

<!-- AUTHOR -->

## 👤 Autor

<table>
  <tr>
    <td valign="top" width="33%">
      <div align="center">  
        <a href="https://github.com/juletopi">
          <img src="https://user-images.githubusercontent.com/76459155/220271784-9f930c36-c370-4518-9b56-604627c6e2b5.png" width="120px;" alt="JuletopiAvatar-pic" title="Autor: Juletopi" />
          <br>
          <sub><b>Júlio Cézar | Juletopi</b></sub>
        </a>
      </div>
    </td>
    <td valign="left" width="100%">
      <div align="left">
        <ul>
          <li>
            <sub><img align="center" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linkedin/linkedin-original.svg" height="15" alt="LinkedIn-icon"> LinkedIn - <a href="https://www.linkedin.com/in/julio-cezar-pereira-camargo/">Júlio Cézar P. Camargo</a></sub>
          </li>
          <li>
            <sub><img align="center" src="https://pngimg.com/uploads/email/email_PNG100738.png" height="15" alt="Facebook-icon"> Email - <a href="mailto:juliocezarpvh@hotmail.com">juliocezarpvh@hotmail.com</a></sub>
          </li>
          <li>
            <sub><img align="center" src="https://cdn3.emoji.gg/emojis/6158-whatsapp.png" height="15" alt="WhatsApp-icon"> Whatsapp - <a href="http://api.whatsapp.com/send?phone=5569993606894">+55 (69) 9 9360-6894</a></sub>
          </li>
          <li>
            <sub><img align="center" src="https://cdn3.emoji.gg/emojis/6333-instagram.png" height="15" alt="Instagram-icon"> Instagram - <a href="https://www.instagram.com/juletopi/">@juletopi</a></sub>
          </li>
        </ul>
      </div>
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
  <a href="https://git.io/typing-svg">
    <img src="https://readme-typing-svg.demolab.com?font=Sue+Ellen+Francisco&size=40&duration=1&pause=99999&color=8354d2&center=true&vCenter=true&repeat=false&width=620&height=60&lines=Obrigado+por+visitar%2C+e+até+a+próxima!" alt="TypingGoodbye-SVG" title="Boas venturas e volte sempre que precisar! ;)"/>
  </a>
</div>

<div align="center">
  Feito com 💜 por <a href="https://github.com/juletopi"> Juletopi</a>.
</div>
