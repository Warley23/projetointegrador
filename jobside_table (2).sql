-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Jan-2024 às 16:13
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jobside_table`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `id_adm` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `login_adm` varchar(255) NOT NULL,
  `senha_adm` varchar(15) NOT NULL,
  `email_adm` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidatos`
--

CREATE TABLE `candidatos` (
  `id_cand` int(11) NOT NULL,
  `cpf_cand` char(11) NOT NULL,
  `formacao_cand` varchar(255) DEFAULT NULL,
  `conhecimentos_cand` varchar(255) DEFAULT NULL,
  `nome_cand` varchar(255) NOT NULL,
  `data_nasc_cand` date NOT NULL,
  `desc_cand` text DEFAULT NULL,
  `tel_cand` varchar(11) DEFAULT NULL,
  `tel_alt_cand` varchar(11) DEFAULT NULL,
  `email_cand` varchar(255) DEFAULT NULL,
  `end_cand` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `candidatos`
--

INSERT INTO `candidatos` (`id_cand`, `cpf_cand`, `formacao_cand`, `conhecimentos_cand`, `nome_cand`, `data_nasc_cand`, `desc_cand`, `tel_cand`, `tel_alt_cand`, `email_cand`, `end_cand`, `password_hash`, `username`) VALUES
(1, '', NULL, NULL, '', '0000-00-00', NULL, NULL, NULL, '', NULL, '$2y$10$3WRAwP9.8.n8F.0z9b0lMOJUqw0hOUqOExQ5Cop6cye5nrnViKYxS', ''),
(2, '', NULL, NULL, '', '0000-00-00', NULL, NULL, NULL, '', NULL, '$2y$10$1PKL4DcBQ35/hFxoqFLlx.oZ2ZT.qydLJ7ZVEp85A5.5Mb1WIQltm', ''),
(3, '', NULL, NULL, '', '0000-00-00', NULL, NULL, NULL, '', NULL, '$2y$10$TnBu0z6rKUCUAitNjzjSbObywHr2sMvdd228MoAA7vri1DIv2E/Iu', ''),
(4, '021529', NULL, NULL, 'warleychaves', '2003-09-29', NULL, '33998018988', NULL, 'teixeirawarley00@gmail.com', NULL, '$2y$10$6J4T5AeZa7gfd0yX/nZb4uNigGfMZnPlzt5fIN.5ScvBwQ..VRn2G', 'warley'),
(5, '021529', NULL, NULL, 'warleychaves', '0001-10-10', NULL, '33998018988', NULL, 'teixeirawarley00@gmail.com', NULL, '$2y$10$WVvGgcMwyOorNvNXBDF2V.6hCK/KbhWERbGyTXTP2NRdYorB3ScU.', 'warley1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidaturas`
--

CREATE TABLE `candidaturas` (
  `id_candidatura` int(11) NOT NULL,
  `id_cand` int(11) DEFAULT NULL,
  `id_vag` int(11) DEFAULT NULL,
  `data_candidatura` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresas`
--

CREATE TABLE `empresas` (
  `id_emp` int(11) NOT NULL,
  `end_emp` varchar(255) NOT NULL,
  `cnpj_emp` char(14) NOT NULL,
  `nome_emp` varchar(255) NOT NULL,
  `email_emp` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `empresas`
--

INSERT INTO `empresas` (`id_emp`, `end_emp`, `cnpj_emp`, `nome_emp`, `email_emp`, `password_hash`, `username`) VALUES
(1, '', '00000000', 'log', 'teixeiralog@gmail.com', '$2y$10$v8jAM50918hfEw3U0kZb4.S0.qvu.ehPN9xdBZNRw2j7nDph0mwra', 'ltda');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vagas`
--

CREATE TABLE `vagas` (
  `id_vag` int(11) NOT NULL,
  `titulo_vag` varchar(255) NOT NULL,
  `data_publi_vag` date DEFAULT NULL,
  `end_vag` varchar(255) NOT NULL,
  `salario_vag` float(10,2) DEFAULT NULL,
  `cargo_vag` varchar(255) NOT NULL,
  `desc_vag` text NOT NULL,
  `id_emp` int(11) NOT NULL,
  `req_vag` varchar(255) DEFAULT NULL,
  `benef_vag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `vagas`
--

INSERT INTO `vagas` (`id_vag`, `titulo_vag`, `data_publi_vag`, `end_vag`, `salario_vag`, `cargo_vag`, `desc_vag`, `id_emp`, `req_vag`, `benef_vag`) VALUES
(1, 'teste', '0001-01-01', 'teste', 12000.00, 'teste', 'teste', 1, 'teste', 'teste');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_adm`);

--
-- Índices para tabela `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`id_cand`);

--
-- Índices para tabela `candidaturas`
--
ALTER TABLE `candidaturas`
  ADD PRIMARY KEY (`id_candidatura`),
  ADD KEY `id_cand` (`id_cand`),
  ADD KEY `id_vag` (`id_vag`);

--
-- Índices para tabela `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id_emp`);

--
-- Índices para tabela `vagas`
--
ALTER TABLE `vagas`
  ADD PRIMARY KEY (`id_vag`),
  ADD KEY `id_emp` (`id_emp`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admin`
--
ALTER TABLE `admin`
  MODIFY `id_adm` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `id_cand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id_emp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `vagas`
--
ALTER TABLE `vagas`
  MODIFY `id_vag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `candidaturas`
--
ALTER TABLE `candidaturas`
  ADD CONSTRAINT `candidaturas_ibfk_1` FOREIGN KEY (`id_cand`) REFERENCES `candidatos` (`id_cand`),
  ADD CONSTRAINT `candidaturas_ibfk_2` FOREIGN KEY (`id_vag`) REFERENCES `vagas` (`id_vag`);

--
-- Limitadores para a tabela `vagas`
--
ALTER TABLE `vagas`
  ADD CONSTRAINT `vagas_ibfk_1` FOREIGN KEY (`id_emp`) REFERENCES `empresas` (`id_emp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
