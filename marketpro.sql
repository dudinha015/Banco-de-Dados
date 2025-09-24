-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/09/2025 às 16:35
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `marketpro`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `campanha`
--

CREATE TABLE `campanha` (
  `id` int(11) NOT NULL,
  `nome_campanha` varchar(50) DEFAULT NULL,
  `data_inicio` datetime DEFAULT NULL,
  `data_fim` datetime DEFAULT NULL,
  `orcamento` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `campanha`
--

INSERT INTO `campanha` (`id`, `nome_campanha`, `data_inicio`, `data_fim`, `orcamento`) VALUES
(1, 'campanha da fome', '2025-10-04 10:00:00', '2025-08-25 17:00:00', 0),
(2, 'campanha do lanche', '2025-06-10 14:00:00', '2025-06-14 18:00:00', 0),
(3, 'campanha da roupa', '2025-04-12 06:00:00', '2025-09-20 17:00:00', 0),
(4, 'campanha do passeio', '2025-06-10 09:00:00', '2025-06-10 17:00:00', 0),
(5, 'campanha de dia das crianças', '2025-10-14 14:00:00', '2025-10-14 18:00:00', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `id_midia` int(11) DEFAULT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `segmento` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id`, `id_midia`, `nome`, `email`, `segmento`) VALUES
(1, NULL, 'Mariana', 'mariana@gmail.com', 'papelaria'),
(2, NULL, 'Manuela', 'manuela@gmail.com', 'cosmeticos'),
(3, NULL, 'Ana', 'ana@gmail.com', 'sapatos'),
(4, NULL, 'Luisa', 'luisa@gmail.com', 'papelaria'),
(5, NULL, 'Larissa', 'larissa@gmail.com', ' roupas');

-- --------------------------------------------------------

--
-- Estrutura para tabela `midia`
--

CREATE TABLE `midia` (
  `id` int(11) NOT NULL,
  `tipo_midia` varchar(20) DEFAULT NULL,
  `custo_unitario` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `midia`
--

INSERT INTO `midia` (`id`, `tipo_midia`, `custo_unitario`) VALUES
(1, 'aaaa', 2),
(2, 'bbbb', 4),
(3, 'cccc', 6),
(4, 'dddd', 1),
(5, 'eeee', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `campanha`
--
ALTER TABLE `campanha`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_midia` (`id_midia`);

--
-- Índices de tabela `midia`
--
ALTER TABLE `midia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `campanha`
--
ALTER TABLE `campanha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `midia`
--
ALTER TABLE `midia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_midia`) REFERENCES `midia` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
