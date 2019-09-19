-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 18-Set-2019 às 13:43
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `urna`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `cd_aluno` int(11) NOT NULL,
  `nr_matricula` int(15) NOT NULL,
  `nm_aluno` varchar(55) NOT NULL,
  `dt_nasc` date NOT NULL,
  `bl_votou` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`cd_aluno`, `nr_matricula`, `nm_aluno`, `dt_nasc`, `bl_votou`) VALUES
(1, 1010101010, 'joao', '2002-08-02', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `chapa`
--

CREATE TABLE `chapa` (
  `cd_chapa` int(11) NOT NULL,
  `nm_chapa` varchar(55) DEFAULT NULL,
  `ft_chapa` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `chapa`
--

INSERT INTO `chapa` (`cd_chapa`, `nm_chapa`, `ft_chapa`) VALUES
(1, 'maria', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tela`
--

CREATE TABLE `tela` (
  `cd_tela` int(11) NOT NULL,
  `ds_tela` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tela`
--

INSERT INTO `tela` (`cd_tela`, `ds_tela`) VALUES
(1, 'inicio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `cd_usuario` int(11) NOT NULL,
  `login` varchar(55) DEFAULT NULL,
  `senha` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`cd_usuario`, `login`, `senha`) VALUES
(1, 'maria', '1010');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_tela`
--

CREATE TABLE `usuario_tela` (
  `cd_permissao` int(11) NOT NULL,
  `cd_usuario` int(11) DEFAULT NULL,
  `cd_tela` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario_tela`
--

INSERT INTO `usuario_tela` (`cd_permissao`, `cd_usuario`, `cd_tela`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `voto`
--

CREATE TABLE `voto` (
  `cd_voto` int(11) NOT NULL,
  `cd_chapa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `voto`
--

INSERT INTO `voto` (`cd_voto`, `cd_chapa`) VALUES
(1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`cd_aluno`);

--
-- Indexes for table `chapa`
--
ALTER TABLE `chapa`
  ADD PRIMARY KEY (`cd_chapa`);

--
-- Indexes for table `tela`
--
ALTER TABLE `tela`
  ADD PRIMARY KEY (`cd_tela`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cd_usuario`);

--
-- Indexes for table `usuario_tela`
--
ALTER TABLE `usuario_tela`
  ADD PRIMARY KEY (`cd_permissao`);

--
-- Indexes for table `voto`
--
ALTER TABLE `voto`
  ADD PRIMARY KEY (`cd_voto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `cd_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chapa`
--
ALTER TABLE `chapa`
  MODIFY `cd_chapa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tela`
--
ALTER TABLE `tela`
  MODIFY `cd_tela` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `cd_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usuario_tela`
--
ALTER TABLE `usuario_tela`
  MODIFY `cd_permissao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `voto`
--
ALTER TABLE `voto`
  MODIFY `cd_voto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
