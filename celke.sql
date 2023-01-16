-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 23-Jan-2022 às 15:25
-- Versão do servidor: 8.0.27
-- versão do PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `celke`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `senhas`
--

DROP TABLE IF EXISTS `senhas`;
CREATE TABLE IF NOT EXISTS `senhas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_senha` varchar(44) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sits_senha_id` int NOT NULL,
  `tipos_senha_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `senhas`
--

INSERT INTO `senhas` (`id`, `nome_senha`, `sits_senha_id`, `tipos_senha_id`) VALUES
(1, 'A1', 2, 1),
(2, 'A2', 2, 1),
(3, 'A3', 1, 1),
(4, 'A4', 1, 1),
(5, 'A5', 1, 1),
(6, 'A6', 1, 1),
(7, 'A7', 1, 1),
(8, 'A8', 1, 1),
(9, 'A9', 1, 1),
(10, 'A10', 1, 1),
(11, 'A11', 1, 1),
(12, 'A12', 1, 1),
(13, 'A13', 1, 1),
(14, 'A14', 1, 1),
(15, 'A15', 1, 1),
(16, 'A16', 1, 1),
(17, 'A17', 1, 1),
(18, 'A18', 1, 1),
(19, 'A19', 1, 1),
(20, 'A20', 1, 1),
(21, 'M1', 2, 2),
(22, 'M2', 2, 2),
(23, 'M3', 1, 2),
(24, 'M4', 1, 2),
(25, 'M5', 1, 2),
(26, 'M6', 1, 2),
(27, 'M7', 1, 2),
(28, 'M8', 1, 2),
(29, 'M9', 1, 2),
(30, 'M10', 1, 2),
(31, 'M11', 1, 2),
(32, 'M12', 1, 2),
(33, 'M13', 1, 2),
(34, 'M14', 1, 2),
(35, 'M15', 1, 2),
(36, 'M16', 1, 2),
(37, 'M17', 1, 2),
(38, 'M18', 1, 2),
(39, 'M19', 1, 2),
(40, 'M20', 1, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `senhas_geradas`
--

DROP TABLE IF EXISTS `senhas_geradas`;
CREATE TABLE IF NOT EXISTS `senhas_geradas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `senha_id` int NOT NULL,
  `sits_senha_id` int NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `senhas_geradas`
--

INSERT INTO `senhas_geradas` (`id`, `senha_id`, `sits_senha_id`, `created`, `modified`) VALUES
(1, 1, 2, '2022-01-23 12:15:49', NULL),
(2, 21, 2, '2022-01-23 12:16:30', NULL),
(3, 22, 2, '2022-01-23 12:16:33', NULL),
(4, 2, 2, '2022-01-23 12:16:36', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sits_senhas`
--

DROP TABLE IF EXISTS `sits_senhas`;
CREATE TABLE IF NOT EXISTS `sits_senhas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sits_senhas`
--

INSERT INTO `sits_senhas` (`id`, `nome`) VALUES
(1, 'Livre'),
(2, 'Emitida'),
(3, 'Chamada'),
(4, 'Atendida'),
(5, 'Cancelada');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipos_senhas`
--

DROP TABLE IF EXISTS `tipos_senhas`;
CREATE TABLE IF NOT EXISTS `tipos_senhas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tipos_senhas`
--

INSERT INTO `tipos_senhas` (`id`, `nome`) VALUES
(1, 'Senha Convencional'),
(2, 'Senha Preferencial');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
