-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:8111
-- Généré le : lun. 24 avr. 2023 à 15:13
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `filiere`
--

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE `enseignant` (
  `id_enseignant` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `departement` varchar(50) DEFAULT NULL,
  `specialite` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `cin` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `code_fili` int(11) NOT NULL,
  `code_niveau` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`cin`, `nom`, `prenom`, `password`, `code_fili`, `code_niveau`) VALUES
(10002000, 'iheb', 'elghoul', 'iheb', 3, 7),
(13486910, 'Mehdi', 'Elgaied', 'orangetn10.', 1, 2),
(20232022, 'raed', 'rhayem', 'raed', 2, 4);

-- --------------------------------------------------------

--
-- Structure de la table `filiere`
--

CREATE TABLE `filiere` (
  `code_fil` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `filiere`
--

INSERT INTO `filiere` (`code_fil`, `nom`) VALUES
(1, 'informatique de gestion '),
(2, 'economie'),
(3, 'gestion');

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE `matiere` (
  `code_mat` int(11) NOT NULL,
  `nom_mat` varchar(50) DEFAULT NULL,
  `coef` float(11,2) NOT NULL,
  `nb_heur_cour` int(11) DEFAULT NULL,
  `nb_heur_td` int(11) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
  `filiere_id` int(11) DEFAULT NULL,
  `niv_etud` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `matiere`
--

INSERT INTO `matiere` (`code_mat`, `nom_mat`, `coef`, `nb_heur_cour`, `nb_heur_td`, `semestre`, `filiere_id`, `niv_etud`) VALUES
(169911439, 'Introduction aux bases de données	', 2.00, 21, 21, 1, 1, 2),
(169911440, 'Atelier de programmation	', 1.00, 21, 0, 1, 1, 2),
(169911442, 'IHM', 1.00, 21, 0, 2, 1, 2),
(560199111, 'principes de gestion', 3.00, 42, 21, 1, 2, 1),
(560199121, 'principes de gestion', 3.00, 42, 21, 1, 2, 1),
(560199131, 'comptabilité financiére 1', 3.00, 42, 21, 1, 2, 1),
(560199141, 'analyse', 3.00, 42, 21, 1, 2, 1),
(560199151, 'statistique descriptive et calculs des probabilité', 3.00, 42, 21, 1, 2, 1),
(560199161, 'langue étrangére 1', 1.00, 0, 21, 1, 2, 1),
(560199162, 'langue étrangére 2', 1.00, 0, 21, 1, 2, 1),
(560199163, 'compétences digitales', 1.00, 0, 21, 1, 2, 1),
(560199211, 'microéconomie 1', 3.00, 42, 21, 2, 2, 1),
(560199221, 'macroéconomie 1', 3.00, 42, 21, 2, 2, 1),
(560199231, 'comptabilité financiére 2', 3.00, 42, 21, 2, 2, 1),
(560199241, 'algébre', 3.00, 42, 21, 2, 2, 1),
(560199251, 'principes de droit', 2.00, 42, 0, 2, 2, 1),
(560199261, 'langue étrangére 1', 0.75, 0, 21, 2, 2, 1),
(560199262, 'langue étrangére 2', 1.00, 0, 21, 2, 2, 1),
(560199263, 'compétences digitales', 1.00, 0, 21, 2, 2, 1),
(560199310, 'Microéconomie 2	', 2.50, 42, 21, 3, 2, 1),
(560199311, 'Macroéconomie 2', 2.00, 42, 21, 3, 2, 1),
(560199312, 'Histoire des faits et de la pensées économique	', 2.00, 42, 21, 3, 2, 1),
(560199313, 'Conférences carriéres', 1.50, 21, 21, 3, 2, 1),
(560199315, 'Langue étrangère 1', 0.75, 0, 21, 3, 2, 1),
(560199316, 'Langue étrangère 2', 0.75, 0, 21, 3, 2, 1),
(560199317, 'Culture entrepreneuriale', 1.00, 21, 21, 3, 2, 1),
(560199318, 'Les métiers de l\'économiste', 1.00, 21, 0, 3, 2, 1),
(573002311, 'Programmation OO	', 1.50, 21, 21, 3, 1, 2),
(573002312, 'Programmation Web 1	', 1.00, 21, 0, 3, 1, 2),
(573002315, 'Statistiques inférentielles	', 1.00, 21, 0, 3, 1, 2),
(573002316, 'Fondements de l\'IA	', 1.00, 21, 11, 3, 1, 2),
(573002317, 'Marketing digital	', 1.00, 21, 10, 3, 1, 2),
(573002318, 'Economie numérique	', 1.00, 21, 0, 3, 1, 2),
(573092112, 'Business communication en anglais	', 1.00, 21, 0, 1, 1, 2),
(573092113, 'Techniques de communication en anglais	', 1.00, 21, 0, 1, 1, 2),
(573092114, 'Business communication 2 (en anglais)	', 2.00, 21, 21, 2, 1, 2),
(573092115, 'Tutorat en E-learning	', 1.00, 0, 21, 2, 1, 2),
(573099111, 'algorithmique et structures de données 1', 3.00, 42, 21, 1, 1, 2),
(573099121, 'systémes d\'exploitation', 1.00, 21, 10, 1, 1, 2),
(573099122, 'systémes logiques et architecture des ordinateurs', 1.00, 42, 11, 1, 1, 2),
(573099131, 'analyse', 1.00, 21, 10, 1, 1, 2),
(573099132, 'statistiques et probabilité', 1.00, 21, 11, 1, 1, 2),
(573099141, 'principes de gestion', 1.00, 21, 0, 1, 1, 2),
(573099142, 'gestion financiére	', 1.00, 21, 0, 1, 1, 2),
(573099211, 'algorithmique et structure de données 2	', 3.00, 21, 42, 2, 1, 2),
(573099221, 'fondements des réseaux	', 1.00, 21, 21, 2, 1, 2),
(573099222, 'introduction aux systémes d\'information	', 1.00, 21, 0, 2, 1, 2),
(573099232, 'algébre', 1.00, 21, 10, 2, 1, 2),
(573099241, 'le systéme d\'information comptable	', 1.00, 21, 0, 2, 1, 2),
(573099242, 'gestion financiére	', 1.00, 21, 11, 2, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `niveau_etude`
--

CREATE TABLE `niveau_etude` (
  `id` int(11) NOT NULL,
  `niveau` varchar(50) NOT NULL,
  `id_fili` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `niveau_etude`
--

INSERT INTO `niveau_etude` (`id`, `niveau`, `id_fili`) VALUES
(1, '1ére', 1),
(2, '2éme', 1),
(3, '3éme', 1),
(4, '1ére ', 2),
(5, '2éme', 2),
(6, '3éme', 2),
(7, '1ére', 3),
(8, '2éme', 3),
(9, '3éme', 3);

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE `note` (
  `matiere_id` int(11) NOT NULL,
  `note_DS` float NOT NULL,
  `note_ex` float NOT NULL,
  `note_orale` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`id_enseignant`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`cin`),
  ADD KEY `fk_code_fili` (`code_fili`),
  ADD KEY `fk_code_niveau` (`code_niveau`);

--
-- Index pour la table `filiere`
--
ALTER TABLE `filiere`
  ADD PRIMARY KEY (`code_fil`);

--
-- Index pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`code_mat`),
  ADD KEY `filiere_id` (`filiere_id`),
  ADD KEY `fk_niv_etud` (`niv_etud`);

--
-- Index pour la table `niveau_etude`
--
ALTER TABLE `niveau_etude`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_fili` (`id_fili`);

--
-- Index pour la table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`matiere_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `niveau_etude`
--
ALTER TABLE `niveau_etude`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `note`
--
ALTER TABLE `note`
  MODIFY `matiere_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `fk_code_fili` FOREIGN KEY (`code_fili`) REFERENCES `filiere` (`code_fil`),
  ADD CONSTRAINT `fk_code_niveau` FOREIGN KEY (`code_niveau`) REFERENCES `niveau_etude` (`id`);

--
-- Contraintes pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD CONSTRAINT `fk_niv_etud` FOREIGN KEY (`niv_etud`) REFERENCES `niveau_etude` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `matiere_ibfk_1` FOREIGN KEY (`filiere_id`) REFERENCES `filiere` (`code_fil`);

--
-- Contraintes pour la table `niveau_etude`
--
ALTER TABLE `niveau_etude`
  ADD CONSTRAINT `niveau_etude_ibfk_1` FOREIGN KEY (`id_fili`) REFERENCES `filiere` (`code_fil`);

--
-- Contraintes pour la table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `note_ibfk_1` FOREIGN KEY (`matiere_id`) REFERENCES `matiere` (`code_mat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
