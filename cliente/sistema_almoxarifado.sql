-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Jan-2021 às 00:07
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema_almoxarifado`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acessos`
--

CREATE TABLE `acessos` (
  `id` int(11) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `acessos`
--

INSERT INTO `acessos` (`id`, `ip`, `hora`) VALUES
(21, '::1', '17:58:21');

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `fone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `status` int(11) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `hora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- Erro ao ler dados para tabela sistema_almoxarifado.admin: #1064 - Você tem um erro de sintaxe no seu SQL próximo a 'FROM `sistema_almoxarifado`.`admin`' na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `alerta`
--

CREATE TABLE `alerta` (
  `id` int(11) NOT NULL,
  `msmalerta` varchar(200) NOT NULL,
  `idUsuario` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `alerta`
--

INSERT INTO `alerta` (`id`, `msmalerta`, `idUsuario`) VALUES
(23, 'ffffff', 0),
(24, 'kkkkkkkkkk', 0),
(25, 'lllllllllllllllllllllll', 0),
(26, 'kkkkkkkk', 0),
(27, 'gg', 0),
(30, 'sssss', 0),
(31, 'ccccc', 0),
(35, 'Jonas', 44),
(36, 'Jonas', 39),
(37, 'fgdg', 86);

-- --------------------------------------------------------

--
-- Estrutura da tabela `meletrico`
--

CREATE TABLE `meletrico` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `qtdMinima` int(11) NOT NULL,
  `qtdProduto` int(11) NOT NULL,
  `Pretirados` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `meletrico`
--

INSERT INTO `meletrico` (`id`, `nome`, `qtdMinima`, `qtdProduto`, `Pretirados`) VALUES
(75, 'Chave de Fenda', 5, 20, 53),
(76, 'Pendrive', 5, 10, 2),
(78, 'Papel Higiênico', 5, 10, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagem`
--

CREATE TABLE `mensagem` (
  `idlembrar` int(11) NOT NULL,
  `lembrar` varchar(200) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `idIdentidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mensagem`
--

INSERT INTO `mensagem` (`idlembrar`, `lembrar`, `nome`, `avatar`, `idIdentidade`) VALUES
(1, 'LAURA\r\n', 'Luara', '5ecdc469283df.png', 40),
(2, 'KALLIANE', 'Kelliane', '5ece4d369518d.jpg', 41),
(105, 'qqq', 'Francisco Delay', '5ef6395ae13fd.jpg', 81),
(107, 'ewqd', 'Caio Vitor', '5ff899a619e78.jpg', 86);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mexpediente`
--

CREATE TABLE `mexpediente` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `qtdMinima` varchar(45) NOT NULL,
  `qtdProduto` varchar(45) DEFAULT NULL,
  `Pretirados` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mexpediente`
--

INSERT INTO `mexpediente` (`id`, `nome`, `qtdMinima`, `qtdProduto`, `Pretirados`) VALUES
(3, 'Lampada', '10', '20', 2),
(4, 'Papel Higiênico', '15', '10', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mlimpeza`
--

CREATE TABLE `mlimpeza` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `qtdMinima` int(11) NOT NULL,
  `validade` date NOT NULL,
  `qtdProduto` varchar(45) NOT NULL,
  `Pretirados` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mlimpeza`
--

INSERT INTO `mlimpeza` (`id`, `nome`, `qtdMinima`, `validade`, `qtdProduto`, `Pretirados`) VALUES
(8, 'Água Sanitária', 5, '2020-06-04', '17', 33),
(9, 'Lampadae', 5, '2020-06-15', '4', 16),
(10, 'Detergente', 5, '2020-06-17', '1', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mprocessamento`
--

CREATE TABLE `mprocessamento` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `qtdMinima` varchar(45) NOT NULL,
  `qtdProduto` varchar(45) NOT NULL,
  `Pretirados` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mprocessamento`
--

INSERT INTO `mprocessamento` (`id`, `nome`, `qtdMinima`, `qtdProduto`, `Pretirados`) VALUES
(3, 'Lampada', '05', '18', 2),
(4, 'Pendrive', '05', '46', 19);

-- --------------------------------------------------------

--
-- Estrutura da tabela `releletrico`
--

CREATE TABLE `releletrico` (
  `id` int(200) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `qtdProduto` int(255) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `releletrico`
--

INSERT INTO `releletrico` (`id`, `nome`, `qtdProduto`, `data`) VALUES
(10, 'Chave de Fenda', 2, '2020-06-04'),
(11, 'Chave de Fenda', 15, '2020-06-05'),
(12, 'Chave de Fenda', 2, '2020-06-06'),
(13, 'Chave de Fenda', 6, '2020-06-07'),
(14, 'Pendrive', 2, '2020-06-08'),
(15, 'aa', 2, '2020-06-09'),
(16, 'aa', 5, '2020-06-19'),
(17, 'Papel Higiênico', 2, '2020-06-26');

-- --------------------------------------------------------

--
-- Estrutura da tabela `relexpediente`
--

CREATE TABLE `relexpediente` (
  `id` int(200) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `qtdProduto` varchar(200) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `relexpediente`
--

INSERT INTO `relexpediente` (`id`, `nome`, `qtdProduto`, `data`) VALUES
(1, 'Lampada', '2', '2020-06-12'),
(2, 'Papel Higiênico', '2', '2020-06-12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rellimpeza`
--

CREATE TABLE `rellimpeza` (
  `id` int(200) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `qtdProduto` varchar(200) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `rellimpeza`
--

INSERT INTO `rellimpeza` (`id`, `nome`, `qtdProduto`, `data`) VALUES
(1, 'Desinfetante', '2', '2020-06-11'),
(2, 'Água Sanitária', '2', '2020-06-11'),
(3, 'Água Sanitária', '15', '2020-06-11'),
(4, 'Água Sanitária', '2', '2020-06-11'),
(5, 'Água Sanitária', '2', '2020-06-19'),
(6, 'Desinfetante', '5', '2020-06-19'),
(7, 'Água Sanitária', '6', '2020-06-19'),
(8, 'Água Sanitária', '6', '2020-06-19'),
(9, 'Lampadae', '5', '2020-06-26'),
(10, 'Detergente', '1', '2020-06-26'),
(11, 'Lampadae', '11', '2020-06-26'),
(12, 'Detergente', '1', '2020-06-26'),
(13, 'Detergente', 'q', '2020-06-26');

-- --------------------------------------------------------

--
-- Estrutura da tabela `relprocessamento`
--

CREATE TABLE `relprocessamento` (
  `id` int(200) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `qtdProduto` varchar(200) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `relprocessamento`
--

INSERT INTO `relprocessamento` (`id`, `nome`, `qtdProduto`, `data`) VALUES
(1, 'Lampada', '2', '2020-06-12'),
(2, 'Pendrive', '2', '2020-06-12'),
(3, 'Pendrive', '2', '2020-06-12');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `acessos`
--
ALTER TABLE `acessos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `alerta`
--
ALTER TABLE `alerta`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `meletrico`
--
ALTER TABLE `meletrico`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mensagem`
--
ALTER TABLE `mensagem`
  ADD PRIMARY KEY (`idlembrar`);

--
-- Índices para tabela `mexpediente`
--
ALTER TABLE `mexpediente`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mlimpeza`
--
ALTER TABLE `mlimpeza`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mprocessamento`
--
ALTER TABLE `mprocessamento`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `releletrico`
--
ALTER TABLE `releletrico`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `relexpediente`
--
ALTER TABLE `relexpediente`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `rellimpeza`
--
ALTER TABLE `rellimpeza`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `relprocessamento`
--
ALTER TABLE `relprocessamento`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `acessos`
--
ALTER TABLE `acessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de tabela `alerta`
--
ALTER TABLE `alerta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de tabela `meletrico`
--
ALTER TABLE `meletrico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de tabela `mensagem`
--
ALTER TABLE `mensagem`
  MODIFY `idlembrar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT de tabela `mexpediente`
--
ALTER TABLE `mexpediente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `mlimpeza`
--
ALTER TABLE `mlimpeza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `mprocessamento`
--
ALTER TABLE `mprocessamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `releletrico`
--
ALTER TABLE `releletrico`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `relexpediente`
--
ALTER TABLE `relexpediente`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `rellimpeza`
--
ALTER TABLE `rellimpeza`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `relprocessamento`
--
ALTER TABLE `relprocessamento`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

DELIMITER $$
--
-- Eventos
--
CREATE DEFINER=`root`@`localhost` EVENT `online` ON SCHEDULE EVERY 10 MINUTE STARTS '2020-05-27 08:23:44' ENDS '2030-07-29 08:11:05' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE admin SET ip='0' WHERE hora<(NOW() +  INTERVAL 5 MINUTE)$$

CREATE DEFINER=`root`@`localhost` EVENT `Pretirados` ON SCHEDULE EVERY 6 DAY STARTS '2020-05-26 09:04:10' ENDS '2030-05-27 09:04:10' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE meletrico SET Pretirados = '0'$$

CREATE DEFINER=`root`@`localhost` EVENT `Pretirados_limpeza` ON SCHEDULE EVERY 6 DAY STARTS '2020-05-28 17:26:33' ENDS '2030-05-28 17:26:33' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE mlimpeza SET Pretirados = '0'$$

CREATE DEFINER=`root`@`localhost` EVENT `Pretiados_procassamento` ON SCHEDULE EVERY 6 DAY STARTS '2020-05-29 13:35:46' ENDS '2030-05-29 13:35:46' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE mprocessamento SET Pretirados = '0'$$

CREATE DEFINER=`root`@`localhost` EVENT `Pretiados_expediente` ON SCHEDULE EVERY 6 MONTH STARTS '2020-05-29 13:39:52' ENDS '2030-05-29 13:39:52' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE mexpediente SET Pretirados = '0'$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
