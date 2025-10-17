📚 Biblioteca36 - Sistema de Gerenciamento de Biblioteca

Este projeto implementa um sistema simples de gerenciamento de biblioteca utilizando MySQL. Ele é composto por tabelas que armazenam informações sobre livros, usuários e empréstimos, permitindo operações básicas como inserção, consulta e exclusão de dados.

🗃️ Estrutura do Banco de Dados

Banco de Dados: Biblioteca36

🔹 Tabela Livro

Armazena informações sobre os livros disponíveis na biblioteca.

Coluna	Tipo	Descrição
id_Livro	INT	Identificador do livro
titulo	VARCHAR(30)	Título do livro
autor	VARCHAR(50)	Nome do autor
genero	VARCHAR(20)	Gênero literário
ano_publicacao	INT	Ano de publicação
🔹 Tabela Usuario

Contém dados dos usuários da biblioteca.

Coluna	Tipo	Descrição
id_Usuario	INT	Identificador do usuário
nome	VARCHAR(30)	Nome completo do usuário
email	VARCHAR(50)	E-mail para contato
tipo_Usuario	ENUM('aluno', 'professor', 'funcionario')	Tipo de usuário
🔹 Tabela Emprestimo

Registra os empréstimos realizados pelos usuários.

Coluna	Tipo	Descrição
id_Emprestimo	INT	Identificador do empréstimo
id_Usuario	INT	FK para a tabela Usuario
id_Livro	INT	FK para a tabela Livro
data_Emprestimo	DATE	Data em que o livro foi emprestado
data_Devolucao	DATE	Data em que o livro foi devolvido
📥 Inserção de Dados

O projeto já inclui inserções iniciais de:

8 livros

4 usuários

2 registros de empréstimos

Você pode adicionar mais usando comandos INSERT INTO.

🔍 Consultas Úteis
-- Buscar todos os alunos
SELECT * FROM Usuario WHERE tipo_Usuario = 'aluno';

-- Buscar livros do gênero Tecnologia
SELECT * FROM Livro WHERE genero LIKE 'Tecnologia%';

-- Buscar empréstimos realizados no mês de março
SELECT * FROM Emprestimo WHERE MONTH(data_Emprestimo) = 3;

🧹 Comandos de Exclusão
-- Excluir livro com ID 5
DELETE FROM Livro WHERE id_Livro = 5;

-- Excluir empréstimos com mais de 15 dias
DELETE FROM Emprestimo
WHERE data_Emprestimo < CURDATE() - INTERVAL 15 DAY;

🛠️ Requisitos

MySQL 5.7 ou superior

Cliente SQL (MySQL Workbench, phpMyAdmin, DBeaver ou outro)

🚀 Como Usar

Copie o script SQL para seu ambiente MySQL.

Execute o comando CREATE DATABASE Biblioteca36;.

Execute os CREATE TABLE e INSERT subsequentes.

Realize consultas e operações conforme necessário.

✍️ Autor

Gustavo Barreto

