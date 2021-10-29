-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Out-2021 às 22:10
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `petcom59_petcomp_db`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `petianos`
--

CREATE TABLE `petianos` (
  `id` int(11) NOT NULL,
  `nome_completo` varchar(60) DEFAULT NULL,
  `primeiro_nome` varchar(15) NOT NULL,
  `ultimo_nome` varchar(15) NOT NULL,
  `ano` int(11) NOT NULL,
  `periodo` int(11) NOT NULL,
  `ativo` tinyint(4) NOT NULL,
  `orientador` tinyint(4) NOT NULL,
  `voluntario` tinyint(4) NOT NULL,
  `imagem` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `petianos`
--

INSERT INTO `petianos` (`id`, `nome_completo`, `primeiro_nome`, `ultimo_nome`, `ano`, `periodo`, `ativo`, `orientador`, `voluntario`, `imagem`) VALUES
(1, 'Arthur Passos', 'Arthur', 'Passos', 2019, 2, 1, 0, 0, 'arthur.jpg'),
(2, 'Alexandre Cesar Muniz de Oliveira', 'Alexandre', 'Oliveira', 2007, 2, 0, 1, 0, 'Alexandre Oliveira.jpg'),
(3, 'Geraldo Braz Junior', 'Geraldo', 'Braz', 2016, 1, 0, 1, 0, 'Geraldo Braz.jpg'),
(4, 'Luis Rivero', 'Luis', 'Riveiro', 2019, 1, 1, 1, 0, 'lucho.jpg'),
(5, 'Kennedy Anderson', 'Kennedy', 'Anderson', 2020, 1, 1, 0, 1, 'Kennedy Anderson.jpg'),
(6, 'Daniel Moreira Pinto', 'Daniel', 'Pinto', 2020, 1, 0, 0, 0, 'Daniel Moreira Pinto.jpg');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `petianos`
--
ALTER TABLE `petianos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `petianos`
--
ALTER TABLE `petianos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
