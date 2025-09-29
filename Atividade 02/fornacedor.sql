-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/09/2025 às 16:54
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
-- Banco de dados: `comercialalfa`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornacedor`
--

CREATE TABLE `fornacedor` (
  `id_fornecedor` int(11) NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `CNPJ` varchar(50) DEFAULT NULL,
  `Telefone` varchar(15) DEFAULT NULL,
  `Cidade` varchar(20) DEFAULT NULL,
  `id_produto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `fornacedor`
--

INSERT INTO `fornacedor` (`id_fornecedor`, `nome`, `CNPJ`, `Telefone`, `Cidade`, `id_produto`) VALUES
(1, 'AeroTarque', '123.456.789.123-23', '(15)98765-9090', 'Votorantim', 1),
(2, 'Tramontina', '456.765.237.238-90', '(11)76543-9898', 'Sorocaba', 2),
(3, 'Brinquedotecabr', '876.543.921.456-65', '(11)56784-3234', 'Piedade', 3),
(4, 'EletroLux', '678.908.654.234-67', '(15)98762-2325', 'São José dos campos', 4),
(5, 'Iphone', '456.982.123.432-45', '(11)98567-4546', 'Cotia', 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `fornacedor`
--
ALTER TABLE `fornacedor`
  ADD PRIMARY KEY (`id_fornecedor`),
  ADD KEY `id_produto` (`id_produto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `fornacedor`
--
ALTER TABLE `fornacedor`
  MODIFY `id_fornecedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `fornacedor`
--
ALTER TABLE `fornacedor`
  ADD CONSTRAINT `fornacedor_ibfk_1` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
