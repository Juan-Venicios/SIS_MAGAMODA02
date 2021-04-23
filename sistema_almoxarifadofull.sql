-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Abr-2021 às 16:08
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `avatar`, `nome`, `fone`, `email`, `cpf`, `senha`, `status`, `ip`, `hora`) VALUES
(87, '5ffd8f883b0b5.jpg', 'Mickael', '(85) 99102-9111', 'mickaelalexsander@gmail.com', '087.876.523-90', 'MTIz', 1, '1', '2021-04-19 19:45:10'),
(88, '5ffda320e8348.png', 'Grazi', '(85) 9102-9110', 'grazi@gmail.com', '087.876.523-90', 'MTIz', 1, '1', '2021-02-08 11:28:24'),
(89, '5ffdcd8a9a9a8.png', 'Juan Venicios', '(67) 86867-8676', 'juanvenicios@gmail.com', '081.782.773-01', 'MTIz', 1, '1', '2021-02-17 16:09:03'),
(90, '6006c7d9ec153.png', 'Mickael', '(85) 99102-9110', 'mickael@gmail.com', '087.876.523-90', 'MTIzNA==', 1, '', '0000-00-00 00:00:00'),
(91, '60080fc97aa46.jpg', 'Grazielle', '(85) 99293-8494', 'graazi@gmail.com', '087.876.523-90', 'MTIzNA==', 1, '', '0000-00-00 00:00:00'),
(92, '6019ab7bda598.jpg', 'Francisco José Diogenes Freitas', '(85) 99714-3220', 'fjdiogenes@gmail.com', '027.995.993-11', 'MTYzNjEx', 1, '1', '2021-02-02 17:11:25');

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
(118, 'site loco', 'Juan Venicios', '5ffdcd8a9a9a8.png', 89),
(119, 'qr code é uma b0$t@, ódio', 'Mickael', '5ffd8f883b0b5.jpg', 87),
(120, 'Eu n sei mandar o email pra costureira', 'Juan Venicios', '5ffdcd8a9a9a8.png', 89),
(121, 'q saco', 'Juan Venicios', '5ffdcd8a9a9a8.png', 89);

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

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cliente`
--

CREATE TABLE `tb_cliente` (
  `id_cliente` int(10) NOT NULL,
  `nome_cliente` varchar(250) NOT NULL,
  `uf_cliente` varchar(250) NOT NULL,
  `cidade_cliente` varchar(200) NOT NULL,
  `bairro_cliente` varchar(200) NOT NULL,
  `cep_cliente` varchar(200) NOT NULL,
  `rua_cliente` varchar(200) NOT NULL,
  `email_cliente` varchar(200) NOT NULL,
  `senha_cliente` varchar(250) NOT NULL,
  `cpf_cliente` varchar(200) NOT NULL,
  `telefone_cliente` varchar(20) NOT NULL,
  `status_cliente` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_cliente`
--

INSERT INTO `tb_cliente` (`id_cliente`, `nome_cliente`, `uf_cliente`, `cidade_cliente`, `bairro_cliente`, `cep_cliente`, `rua_cliente`, `email_cliente`, `senha_cliente`, `cpf_cliente`, `telefone_cliente`, `status_cliente`) VALUES
(4, 'Cliente 01', 'ceara', 'PACAJUS', 'Cumaru', '62870-000', 'R. R. Nova, n°7', 'cliente1@gmail.com', 'MTIz', '087.876.523-90', '(55) 85991-0291', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_costureira`
--

CREATE TABLE `tb_costureira` (
  `id_cost` int(10) NOT NULL,
  `nome_cost` varchar(250) NOT NULL,
  `rua_cost` varchar(250) NOT NULL,
  `uf_cost` varchar(200) DEFAULT NULL,
  `cidade_cost` varchar(200) DEFAULT NULL,
  `cep_cost` varchar(200) DEFAULT NULL,
  `bairro_cost` varchar(200) DEFAULT NULL,
  `email_cost` varchar(250) DEFAULT NULL,
  `senha_cost` varchar(50) NOT NULL,
  `cpf_cost` varchar(200) DEFAULT NULL,
  `telefone_cost` varchar(20) NOT NULL,
  `status` int(1) NOT NULL,
  `dispon_cost` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_costureira`
--

INSERT INTO `tb_costureira` (`id_cost`, `nome_cost`, `rua_cost`, `uf_cost`, `cidade_cost`, `cep_cost`, `bairro_cost`, `email_cost`, `senha_cost`, `cpf_cost`, `telefone_cost`, `status`, `dispon_cost`) VALUES
(14, 'Francisco José Diogenes Freitas', 'Rua: Raimundo Almeida de Lima', '', '', '', '', 'fjdiogenes@gmail.com', 'MTYzNjEx', '', '85997143220', 1, 1),
(24, 'Roselena', 'Rua Francisco Regis, 678', 'ceara', 'Pacajus', '62870-000', 'Cruz das Almas', 'roselena@gmail.com', 'cm9zZWxlbmE=', '081.782.773-01', '(89) 99090-8297', 1, 1),
(25, 'Vanderly', 'xxx', 'ceara', 'PACAJUS', '62870-000', 'xxx', 'vanderly@gmail.com', 'MTIz', '999.999.999-99', '(85) 99223-5955', 1, 1),
(26, 'Juan Venicios', 'Rua Francisco Regis, 678', 'goias', 'Pacajus', '62870-000', 'Buriti', 'juanvenicios@gmail.com', 'MTIz', '081.782.773-01', '(85) 90909-0909', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_modelo`
--

CREATE TABLE `tb_modelo` (
  `id_modelo` int(11) NOT NULL,
  `nome_modelo` varchar(100) NOT NULL,
  `codigo_modelo` varchar(100) NOT NULL,
  `desc_modelo` varchar(250) NOT NULL,
  `tamPP` int(100) NOT NULL,
  `tamP` int(100) NOT NULL,
  `tamM` int(100) NOT NULL,
  `tamG` int(100) NOT NULL,
  `tamGG` int(100) NOT NULL,
  `preco_modelo` decimal(10,0) NOT NULL,
  `total_modelo` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_modelo`
--

INSERT INTO `tb_modelo` (`id_modelo`, `nome_modelo`, `codigo_modelo`, `desc_modelo`, `tamPP`, `tamP`, `tamM`, `tamG`, `tamGG`, `preco_modelo`, `total_modelo`) VALUES
(27, 'camisa basica', 'c09', '', 0, 0, 0, 0, 0, '3', '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_observacao`
--

CREATE TABLE `tb_observacao` (
  `id_obs` int(10) NOT NULL,
  `id_pedidoobs` int(10) NOT NULL,
  `obs` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_observacao`
--

INSERT INTO `tb_observacao` (`id_obs`, `id_pedidoobs`, `obs`) VALUES
(1, 19, 'vdsuyvfuyvyucvyusdvuycvhvhuvc'),
(2, 17, ''),
(3, 17, ''),
(4, 16, 'Está faltando uma peça desde pedido aqui'),
(5, 18, 'Teste'),
(6, 40, 'Falta uma peça');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_pedido`
--

CREATE TABLE `tb_pedido` (
  `id_pedido` int(10) NOT NULL,
  `nome_pedido` varchar(250) NOT NULL,
  `modelo_pedido` varchar(250) NOT NULL,
  `data_pedido` varchar(100) NOT NULL,
  `data_entrega` varchar(100) DEFAULT NULL,
  `ptamPP` int(100) NOT NULL,
  `ptamP` int(100) NOT NULL,
  `ptamM` int(100) NOT NULL,
  `ptamG` int(100) NOT NULL,
  `ptamGG` int(100) NOT NULL,
  `total_pedido` int(100) NOT NULL,
  `preco_unitario` int(100) NOT NULL,
  `preco_total` int(100) NOT NULL,
  `ok_ent` varchar(10) DEFAULT NULL,
  `ok_dev` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_pedido`
--

INSERT INTO `tb_pedido` (`id_pedido`, `nome_pedido`, `modelo_pedido`, `data_pedido`, `data_entrega`, `ptamPP`, `ptamP`, `ptamM`, `ptamG`, `ptamGG`, `total_pedido`, `preco_unitario`, `preco_total`, `ok_ent`, `ok_dev`) VALUES
(89, 'Juan Venicios', 'c10', '12/02/2021', '19/02/2021', 4, 4, 4, 4, 4, 20, 3, 60, '1', '1'),
(90, 'Vanderly', 'c09', '16/02/2021', '23/02/2021', 10, 10, 10, 10, 0, 40, 3, 120, NULL, NULL),
(91, 'Roselena', 'c09', '16/02/2021', '23/02/2021', 0, 0, 0, 0, 10, 10, 3, 30, NULL, '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_pedido_cliente`
--

CREATE TABLE `tb_pedido_cliente` (
  `id_pedido_cliente` int(11) NOT NULL,
  `imagem_pedido` varchar(250) NOT NULL,
  `modelo_pedido` varchar(100) NOT NULL,
  `tamanho_pedido` varchar(2) NOT NULL,
  `quantidade_pedido` int(10) NOT NULL,
  `numero_pedido` varchar(10) NOT NULL,
  `nome_pedido` varchar(50) NOT NULL,
  `tipo_pedido` varchar(100) NOT NULL,
  `preco_pedido` varchar(10) NOT NULL,
  `preco_total` int(20) NOT NULL,
  `gola_polo` int(1) NOT NULL,
  `gola_alta` int(1) NOT NULL,
  `manga_longa` int(1) NOT NULL,
  `short_bolso` int(1) NOT NULL,
  `gola_v` int(1) NOT NULL,
  `gola_comum` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Índices para tabela `tb_cliente`
--
ALTER TABLE `tb_cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices para tabela `tb_costureira`
--
ALTER TABLE `tb_costureira`
  ADD PRIMARY KEY (`id_cost`);

--
-- Índices para tabela `tb_modelo`
--
ALTER TABLE `tb_modelo`
  ADD PRIMARY KEY (`id_modelo`);

--
-- Índices para tabela `tb_observacao`
--
ALTER TABLE `tb_observacao`
  ADD PRIMARY KEY (`id_obs`);

--
-- Índices para tabela `tb_pedido`
--
ALTER TABLE `tb_pedido`
  ADD PRIMARY KEY (`id_pedido`);

--
-- Índices para tabela `tb_pedido_cliente`
--
ALTER TABLE `tb_pedido_cliente`
  ADD PRIMARY KEY (`id_pedido_cliente`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

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
  MODIFY `idlembrar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

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

--
-- AUTO_INCREMENT de tabela `tb_cliente`
--
ALTER TABLE `tb_cliente`
  MODIFY `id_cliente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tb_costureira`
--
ALTER TABLE `tb_costureira`
  MODIFY `id_cost` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `tb_modelo`
--
ALTER TABLE `tb_modelo`
  MODIFY `id_modelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `tb_observacao`
--
ALTER TABLE `tb_observacao`
  MODIFY `id_obs` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tb_pedido`
--
ALTER TABLE `tb_pedido`
  MODIFY `id_pedido` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de tabela `tb_pedido_cliente`
--
ALTER TABLE `tb_pedido_cliente`
  MODIFY `id_pedido_cliente` int(11) NOT NULL AUTO_INCREMENT;

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
