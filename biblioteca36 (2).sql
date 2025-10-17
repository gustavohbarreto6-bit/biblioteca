-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 17/10/2025 às 11:24
-- Versão do servidor: 8.0.40
-- Versão do PHP: 8.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblioteca36`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `emprestimo`
--

CREATE TABLE `emprestimo` (
  `id_Emprestimo` int NOT NULL,
  `id_Usuario` int NOT NULL,
  `id_Livro` int NOT NULL,
  `data_Emprestimo` date NOT NULL,
  `data_Devolucao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `emprestimo`
--

INSERT INTO `emprestimo` (`id_Emprestimo`, `id_Usuario`, `id_Livro`, `data_Emprestimo`, `data_Devolucao`) VALUES
(2, 2, 2, '2025-10-10', '2026-09-15'),
(4, 2, 2, '2025-10-10', '2026-09-15');

-- --------------------------------------------------------

--
-- Estrutura para tabela `livro`
--

CREATE TABLE `livro` (
  `id_Livro` int NOT NULL,
  `titulo` varchar(30) DEFAULT NULL,
  `autor` varchar(50) DEFAULT NULL,
  `genero` varchar(20) DEFAULT NULL,
  `ano_publicacao` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `livro`
--

INSERT INTO `livro` (`id_Livro`, `titulo`, `autor`, `genero`, `ano_publicacao`) VALUES
(1, 'Harry Potter', 'J.K. Rowling', 'Ficção', 1998),
(2, 'O Menino do Pijama Listrado', 'John Boyne', 'Ficção Histórica', 2006),
(3, 'As Peripécias de BRT', 'Gustavo Barreto', 'Aventura', 2027),
(4, 'Java e Suas Maravilhas', 'Diogo Barão', 'Fantasia', 2004),
(6, 'Avanze: A História do GOAT', 'Eduardo Zanetti', 'Biografia', 2025),
(7, 'Ciencia da Computação', 'J.K. Rowling', 'Tecnologia', 2005),
(8, 'HTML e suas Maravilhas', 'Manuel Alvarez', 'Tecnologia', 2025),
(9, 'Harry Potter', 'J.K. Rowling', 'Ficção', 1998),
(10, 'O Menino do Pijama Listrado', 'John Boyne', 'Ficção Histórica', 2006),
(11, 'As Peripécias de BRT', 'Gustavo Barreto', 'Aventura', 2027),
(12, 'Java e Suas Maravilhas', 'Diogo Barão', 'Fantasia', 2004),
(13, 'It: A Coisa', 'Stephen King', 'Terror', 1986),
(14, 'Avanze: A História do GOAT', 'Eduardo Zanetti', 'Biografia', 2025),
(15, 'Ciencia da Computação', 'J.K. Rowling', 'Tecnologia', 2005),
(16, 'HTML e suas Maravilhas', 'Manuel Alvarez', 'Tecnologia', 2025);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_Usuario` int NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tipo_Usuario` enum('aluno','professor','funcionario') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id_Usuario`, `nome`, `email`, `tipo_Usuario`) VALUES
(1, 'Gustavo Barreto', 'gbrtsports@gnail.com', 'aluno'),
(2, 'Raul Lopes', 'magosupremo@gmail.com', 'professor'),
(3, 'Diogo Nascimento', 'diogobahia24@outlook.com', 'professor'),
(4, 'Andreia Silva', 'drica23@outlook.com', 'funcionario'),
(5, 'Gustavo Barreto', 'gbrtsports@gnail.com', 'aluno'),
(6, 'Raul Lopes', 'magosupremo@gmail.com', 'professor'),
(7, 'Diogo Nascimento', 'diogobahia24@outlook.com', 'professor'),
(8, 'Andreia Silva', 'drica23@outlook.com', 'funcionario');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD PRIMARY KEY (`id_Emprestimo`),
  ADD KEY `id_Usuario` (`id_Usuario`),
  ADD KEY `id_Livro` (`id_Livro`);

--
-- Índices de tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`id_Livro`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_Usuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  MODIFY `id_Emprestimo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `id_Livro` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_Usuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD CONSTRAINT `emprestimo_ibfk_1` FOREIGN KEY (`id_Usuario`) REFERENCES `usuario` (`id_Usuario`),
  ADD CONSTRAINT `emprestimo_ibfk_2` FOREIGN KEY (`id_Livro`) REFERENCES `livro` (`id_Livro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
