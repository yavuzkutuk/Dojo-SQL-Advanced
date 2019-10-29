-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 29 oct. 2019 à 09:26
-- Version du serveur :  5.7.28
-- Version de PHP :  7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `Dojo_SQLAdvanced`
--

-- --------------------------------------------------------

--
-- Structure de la table `Departement`
--

CREATE TABLE `Departement` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `numerodepartement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Departement`
--

INSERT INTO `Departement` (`id`, `nom`, `ville`, `numerodepartement`) VALUES
(1, 'Commercial', 'Strasbourg', 67),
(2, 'Developpement', 'Lyon', 69),
(3, 'Direction', 'Paris', 75);

-- --------------------------------------------------------

--
-- Structure de la table `Employes`
--

CREATE TABLE `Employes` (
  `id` int(11) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `profession` varchar(100) NOT NULL,
  `dateemb` date NOT NULL,
  `salaire` int(11) NOT NULL,
  `commission` int(11) NOT NULL,
  `id_departement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Employes`
--

INSERT INTO `Employes` (`id`, `prenom`, `profession`, `dateemb`, `salaire`, `commission`, `id_departement`) VALUES
(1, 'Pierre', 'Ingénieur', '1993-10-01', 4000, 3000, 1),
(2, 'Paul', 'Technicien', '1988-05-10', 3000, 2000, 2),
(3, 'Jacques', 'Vendeur', '1980-10-29', 5000, 5000, 2),
(4, 'Yavuz', 'Président', '2019-10-29', 10000, 10000, 3),
(5, 'Aljio', 'Vendeur', '1980-10-29', 7000, 2000, 2),
(6, 'Bill', 'Stagiaire', '2018-10-29', 1000, 0, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Departement`
--
ALTER TABLE `Departement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Employes`
--
ALTER TABLE `Employes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_departement` (`id_departement`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Departement`
--
ALTER TABLE `Departement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Employes`
--
ALTER TABLE `Employes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Employes`
--
ALTER TABLE `Employes`
  ADD CONSTRAINT `employes_ibfk_1` FOREIGN KEY (`id_departement`) REFERENCES `Departement` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
