-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 22 Janvier 2021 à 16:05
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `terrainfacile`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) NOT NULL,
  `pseudo` text NOT NULL,
  `mail` text NOT NULL,
  `password` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`id`, `pseudo`, `mail`, `password`) VALUES
(0, 'admin', 'admin@gmail.com', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918'),
(2, 'Théo', 'theomichels@gmail.com', 'f4f263e439cf40925e6a412387a9472a6773c2580212a4fb50d224d3a817de17'),
(3, 'Arthur', 'arthur@gmail.com', 'f4f263e439cf40925e6a412387a9472a6773c2580212a4fb50d224d3a817de17'),
(4, 'Louis', 'louis@gmail.com', 'f4f263e439cf40925e6a412387a9472a6773c2580212a4fb50d224d3a817de17');

-- --------------------------------------------------------

--
-- Structure de la table `terrains`
--

CREATE TABLE IF NOT EXISTS `terrains` (
  `id` int(11) NOT NULL,
  `nom` text CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `prix` double NOT NULL,
  `surface` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `terrains`
--

INSERT INTO `terrains` (`id`, `nom`, `prix`, `surface`) VALUES
(1, 'Parc de Saurupt', 1900, 300),
(2, 'Parc Olry', 15, 1500),
(3, 'Parc de la Pépinière', 50, 5000),
(4, 'Parc Sainte-Marie', 30, 4200),
(5, 'Parc Blondlot', 10, 600),
(6, 'Parc Charles III', 25, 1000),
(7, 'Parc de Noiseville', 30, 5463);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
