-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 24-Maio-2021 às 01:47
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `api_carros`
--
CREATE DATABASE IF NOT EXISTS `api_carros` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `api_carros`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `carro`
--

DROP TABLE IF EXISTS `carro`;
CREATE TABLE IF NOT EXISTS `carro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `url_foto` varchar(255) DEFAULT NULL,
  `url_video` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `carro`
--

INSERT INTO `carro` (`id`, `descricao`, `latitude`, `longitude`, `nome`, `tipo`, `url_foto`, `url_video`) VALUES
(1, 'Descrição Tucker 1948', '-23.564224', '-46.653156', 'Tucker 1948', 'classicos', 'http://www.livroandroid.com.br/livro/carros/classicos/Tucker.png', 'http://www.livroandroid.com.br/livro/carros/classicos/tucker.mp4'),
(2, 'Descrição Chevrolet Corvette', '-23.564224', '-46.653156', 'Chevrolet Corvette', 'classicos', 'http://www.livroandroid.com.br/livro/carros/classicos/Chevrolet_Corvette.png', 'http://www.livroandroid.com.br/livro/carros/classicos/corvette.mp4'),
(3, 'Descrição Chevrolet Impala Coupe', '-23.564224', '-46.653156', 'Chevrolet Impala Coupe', 'classicos', 'http://www.livroandroid.com.br/livro/carros/classicos/Chevrolet_Impala_Coupe.png', 'http://www.livroandroid.com.br/livro/carros/classicos/chevrolet_impala.mp4'),
(4, 'Descrição Cadillac Deville Convertible', '-23.564224', '-46.653156', 'Cadillac Deville Convertible', 'classicos', 'http://www.livroandroid.com.br/livro/carros/classicos/Cadillac_Deville_Convertible.png', 'http://www.livroandroid.com.br/livro/carros/classicos/cadillac_deville.mp4'),
(5, 'Descrição Chevrolet Bel-Air', '-23.564224', '-46.653156', 'Chevrolet Bel-Air', 'classicos', 'http://www.livroandroid.com.br/livro/carros/classicos/Chevrolet_BelAir.png', 'http://www.livroandroid.com.br/livro/carros/classicos/chevrolet_bel_air.mp4'),
(6, 'Descrição Cadillac Eldorado', '-23.564224', '-46.653156', 'Cadillac Eldorado', 'classicos', 'http://www.livroandroid.com.br/livro/carros/classicos/Cadillac_Eldorado.png', 'http://www.livroandroid.com.br/livro/carros/classicos/cadillac_eldorado.mp4'),
(7, 'Descrição Ferrari 250 GTO', '-23.564224', '-46.653156', 'Ferrari 250 GTO', 'classicos', 'http://www.livroandroid.com.br/livro/carros/classicos/Ferrari_250_GTO.png', 'http://www.livroandroid.com.br/livro/carros/classicos/ferrari_gto.mp4'),
(8, 'Descrição Dodge Challenger', '', '', 'Dodge Challenger', 'classicos', 'http://www.livroandroid.com.br/livro/carros/classicos/Dodge_Challenger.png', 'http://www.livroandroid.com.br/livro/carros/classicos/dodge_challenger.mp4'),
(9, 'Descrição Camaro SS 1969', '-23.564224', '-46.653156', 'Camaro SS 1969', 'classicos', 'http://www.livroandroid.com.br/livro/carros/classicos/Camaro_SS.png', 'http://www.livroandroid.com.br/livro/carros/classicos/camaro_ss.mp4'),
(10, 'Descrição Ford Mustang 1976', '-23.564224', '-46.653156', 'Ford Mustang 1976', 'classicos', 'http://www.livroandroid.com.br/livro/carros/classicos/Ford_Mustang.png', 'http://www.livroandroid.com.br/livro/carros/classicos/ford_mustang.mp4'),
(11, 'Descrição Ferrari FF', '44.532218', '10.864019', 'Ferrari FF', 'esportivos', 'http://www.livroandroid.com.br/livro/carros/esportivos/Ferrari_FF.png', 'http://www.livroandroid.com.br/livro/carros/esportivos/ferrari_ff.mp4'),
(12, 'Descrição AUDI GT Spyder', '-23.564224', '-46.653156', 'AUDI GT Spyder', 'esportivos', 'http://www.livroandroid.com.br/livro/carros/esportivos/Audi_Spyder.png', 'http://www.livroandroid.com.br/livro/carros/esportivos/audi_gt.mp4'),
(13, 'Descrição Porsche Panamera', '-23.564224', '-46.653156', 'Porsche Panamera', 'esportivos', 'http://www.livroandroid.com.br/livro/carros/esportivos/Porsche_Panamera.png', 'http://www.livroandroid.com.br/livro/carros/esportivos/porsche_panamera.mp4'),
(14, 'Descrição Lamborghini Aventador', '-23.564224', '-46.653156', 'Lamborghini Aventador', 'esportivos', 'http://www.livroandroid.com.br/livro/carros/esportivos/Lamborghini_Aventador.png', 'http://www.livroandroid.com.br/livro/carros/esportivos/lamborghini_aventador.mp4'),
(15, 'Descrição Chevrolet Corvette Z06', '-23.564224', '-46.653156', 'Chevrolet Corvette Z06', 'esportivos', 'http://www.livroandroid.com.br/livro/carros/esportivos/Chevrolet_Corvette_Z06.png', 'http://www.livroandroid.com.br/livro/carros/esportivos/chevrolet_corvette.mp4'),
(16, 'Descrição BMW M5', '-23.564224', '-46.653156', 'BMW M5', 'esportivos', 'http://www.livroandroid.com.br/livro/carros/esportivos/BMW.png', 'http://www.livroandroid.com.br/livro/carros/esportivos/bmw-m5.mp4'),
(17, 'Descrição Renault Megane RS Trophy', '-23.564224', '-46.653156', 'Renault Megane RS Trophy', 'esportivos', 'http://www.livroandroid.com.br/livro/carros/esportivos/Renault_Megane_Trophy.png', 'http://www.livroandroid.com.br/livro/carros/esportivos/renault_megane.mp4'),
(18, 'Descrição Maserati Grancabrio Sport', '-23.564224', '-46.653156', 'Maserati Grancabrio Sport', 'esportivos', 'http://www.livroandroid.com.br/livro/carros/esportivos/Maserati_Grancabrio_Sport.png', 'http://www.livroandroid.com.br/livro/carros/esportivos/renault_megane.mp4'),
(19, 'Descrição McLAREN MP4-12C', '-23.564224', '-46.653156', 'McLAREN MP4-12C', 'esportivos', 'http://www.livroandroid.com.br/livro/carros/esportivos/McLAREN.png', 'http://www.livroandroid.com.br/livro/carros/esportivos/mcLaren.mp4'),
(20, 'Descrição MERCEDES-BENZ C63 AMG', '-23.564224', '-46.653156', 'MERCEDES-BENZ C63 AMG', 'esportivos', 'http://www.livroandroid.com.br/livro/carros/esportivos/MERCEDES_BENZ_AMG.png', 'http://www.livroandroid.com.br/livro/carros/esportivos/mercedes.mp4'),
(21, 'Descrição Bugatti Veyron', '-23.564224', '-46.653156', 'Bugatti Veyron', 'luxo', 'http://www.livroandroid.com.br/livro/carros/luxo/Bugatti_Veyron.png', 'http://www.livroandroid.com.br/livro/carros/luxo/bugatti_veyron.mp4'),
(22, 'Descrição Ferrari Enzo', '-23.564224', '-46.653156', 'Ferrari Enzo', 'luxo', 'http://www.livroandroid.com.br/livro/carros/luxo/Ferrari_Enzo.png', 'http://www.livroandroid.com.br/livro/carros/luxo/ferrari_enzo.mp4'),
(23, 'Descrição Lamborghini Reventon', '-23.564224', '-46.653156', 'Lamborghini Reventon', 'luxo', 'http://www.livroandroid.com.br/livro/carros/luxo/Lamborghini_Reventon.png', 'http://www.livroandroid.com.br/livro/carros/luxo/lamborghini _reventon.mp4'),
(24, 'Descrição Leblanc Mirabeau', '-23.564224', '-46.653156', 'Leblanc Mirabeau', 'luxo', 'http://www.livroandroid.com.br/livro/carros/luxo/Leblanc_Mirabeau.png', 'http://www.livroandroid.com.br/livro/carros/luxo/leblanc_mirabeau.mp4'),
(25, 'Descrição Shelby Supercars Ultimate', '-23.564224', '-46.653156', 'Shelby Supercars Ultimate', 'luxo', 'http://www.livroandroid.com.br/livro/carros/luxo/Shelby_Supercars_Ultimate.png', 'http://www.livroandroid.com.br/livro/carros/luxo/shelby.mp4'),
(26, 'Descrição Pagani Zonda', '-23.564224', '-46.653156', 'Pagani Zonda', 'luxo', 'http://www.livroandroid.com.br/livro/carros/luxo/Pagani_Zonda.png', 'http://www.livroandroid.com.br/livro/carros/luxo/pagani_zonda.mp4'),
(27, 'Descrição Koenigsegg CCX', '-23.564224', '-46.653156', 'Koenigsegg CCX', 'luxo', 'http://www.livroandroid.com.br/livro/carros/luxo/Koenigsegg_CCX.png', 'http://www.livroandroid.com.br/livro/carros/luxo/koenigsegg.mp4'),
(28, 'Descrição Mercedes SLR McLaren', '-23.564224', '-46.653156', 'Mercedes SLR McLaren', 'luxo', 'http://www.livroandroid.com.br/livro/carros/luxo/Mercedes_McLaren.png', 'http://www.livroandroid.com.br/livro/carros/luxo/mclaren_slr.mp4'),
(29, 'Descrição Rolls Royce Phantom', '-23.564224', '-46.653156', 'Rolls Royce Phantom', 'luxo', 'http://www.livroandroid.com.br/livro/carros/luxo/Rolls_Royce_Phantom.png', 'http://www.livroandroid.com.br/livro/carros/luxo/rolls_royce.mp4'),
(30, 'Descrição Lexus LFA', '-23.564224', '-46.653156', 'Lexus LFA', 'luxo', 'http://www.livroandroid.com.br/livro/carros/luxo/Lexus_LFA.png', 'http://www.livroandroid.com.br/livro/carros/luxo/lexus.mp4');

-- --------------------------------------------------------

--
-- Estrutura da tabela `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `role`
--

INSERT INTO `role` (`id`, `nome`) VALUES
(1, 'ROLE_USER'),
(2, 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`id`, `email`, `login`, `nome`, `senha`) VALUES
(1, 'esoares@gmail.com', 'esoares', 'Enzo', '$2a$10$HKveMsPlst41Ie2LQgpijO691lUtZ8cLfcliAO1DD9TtZxEpaEoJe'),
(2, 'admin@gmail.com', 'admin', 'Admin', '$2a$10$HKveMsPlst41Ie2LQgpijO691lUtZ8cLfcliAO1DD9TtZxEpaEoJe'),
(3, 'user@gmail.com', 'user', 'User', '$2a$10$HKveMsPlst41Ie2LQgpijO691lUtZ8cLfcliAO1DD9TtZxEpaEoJe');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  KEY `FKbhgxpici80n5kpvs65q90ou14` (`role_id`),
  KEY `FKhlmdr3u7pdi6gfd47cgcb4p6t` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(2, 1);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `FKbhgxpici80n5kpvs65q90ou14` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `FKhlmdr3u7pdi6gfd47cgcb4p6t` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
