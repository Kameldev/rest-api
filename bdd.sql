-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Dim 28 Octobre 2018 à 12:47
-- Version du serveur :  5.7.23-0ubuntu0.16.04.1
-- Version de PHP :  7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ocsi`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `accroche` longtext COLLATE utf8_unicode_ci,
  `corps` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`id`, `titre`, `accroche`, `corps`, `created_at`, `slug`, `created_by`) VALUES
(2, 'Titre 1', 'Accroche article1', 'Lorem Elsass ipsum Yo dû. hop météor Oberschaeffolsheim kuglopf leo ornare libero. yeuh. und auctor, blottkopf, rucksack leverwurscht Gal ! condimentum geïz hoplageiss tellus risus, knack Chulien turpis, habitant dolor tchao bissame libero, eleifend Chulia Roberstau pellentesque quam, et eget sit amet tellus hopla mollis morbi placerat Carola schnaps Pellentesque elit geht\'s vielmols, Strasbourg Huguette Salu bissame baeckeoffe sagittis id, mamsell Hans hopla dignissim nullam réchime sit consectetur commodo messti de Bischheim id Racing. s\'guelt libero, merci vielmols DNA, gewurztraminer ch\'ai chambon Heineken mänele Pfourtz ! ante suspendisse adipiscing sed kartoffelsalad porta sit Morbi non ftomi! picon bière Kabinetpapier kougelhopf gravida quam. jetz gehts los tristique Gal. ac amet schneck bredele Christkindelsmärik Salut bisamme salu Oberschaeffolsheim sed senectus hopla so ornare turpis schpeck elementum munster Miss Dahlias barapli semper non rossbolla Wurschtsalad bissame ac wie ullamcorper in, knepfle varius Coopé de Truchtersheim wurscht purus  rhoncus amet, lotto-owe Verdammi leo flammekueche vulputate gal nüdle Spätzle lacus aliquam hopla dui Richard Schirmeck Mauris', '2018-10-27 11:17:50', 'titre-1', 'REMAKI KAMEL'),
(3, 'Titre2', 'Accroche article2', 'Lorem Elsass ipsum Yo dû. hop météor Oberschaeffolsheim kuglopf leo ornare libero. yeuh. und auctor, blottkopf, rucksack leverwurscht Gal ! condimentum geïz hoplageiss tellus risus, knack Chulien turpis, habitant dolor tchao bissame libero, eleifend Chulia Roberstau pellentesque quam, et eget sit amet tellus hopla mollis morbi placerat Carola schnaps Pellentesque elit geht\'s vielmols, Strasbourg Huguette Salu bissame baeckeoffe sagittis id, mamsell Hans hopla dignissim nullam réchime sit consectetur commodo messti de Bischheim id Racing. s\'guelt libero, merci vielmols DNA, gewurztraminer ch\'ai chambon Heineken mänele Pfourtz ! ante suspendisse adipiscing sed kartoffelsalad porta sit Morbi non ftomi! picon bière Kabinetpapier kougelhopf gravida quam. jetz gehts los tristique Gal. ac amet schneck bredele Christkindelsmärik Salut bisamme salu Oberschaeffolsheim sed senectus hopla so ornare turpis schpeck elementum munster Miss Dahlias barapli semper non rossbolla Wurschtsalad bissame ac wie ullamcorper in, knepfle varius Coopé de Truchtersheim wurscht purus  rhoncus amet, lotto-owe Verdammi leo flammekueche vulputate gal nüdle Spätzle lacus aliquam hopla dui Richard Schirmeck Mauris', '2018-10-27 11:20:48', 'titre2', 'ELIAS NACERA'),
(6, 'Article 1', 'Notre nouvelle théorie', 'Lorem Elsass ipsum Yo dû. hop météor Oberschaeffolsheim kuglopf leo ornare libero. yeuh. und auctor, blottkopf, rucksack leverwurscht Gal ! condimentum geïz hoplageiss tellus risus, knack Chulien turpis, habitant dolor tchao bissame libero, eleifend Chulia Roberstau pellentesque quam, et eget sit amet tellus hopla mollis morbi placerat Carola schnaps Pellentesque elit geht\'s vielmols, Strasbourg Huguette Salu bissame baeckeoffe sagittis id, mamsell Hans hopla dignissim nullam réchime sit consectetur commodo messti de Bischheim id Racing. s\'guelt libero, merci vielmols DNA, gewurztraminer ch\'ai chambon Heineken mänele Pfourtz ! ante suspendisse adipiscing sed kartoffelsalad porta sit Morbi non ftomi! picon bière Kabinetpapier kougelhopf gravida quam. jetz gehts los tristique Gal. ac amet schneck bredele Christkindelsmärik Salut bisamme salu Oberschaeffolsheim sed senectus hopla so ornare turpis schpeck elementum munster Miss Dahlias barapli semper non rossbolla Wurschtsalad bissame ac wie ullamcorper in, knepfle varius Coopé de Truchtersheim wurscht purus  rhoncus amet, lotto-owe Verdammi leo flammekueche vulputate gal nüdle Spätzle lacus aliquam hopla dui Richard Schirmeck Mauris', '2018-10-27 11:27:43', 'article-1', 'REMAKI Nacera'),
(8, 'Titre4', 'accroche article4', 'Lorem1 ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2018-10-28 10:31:14', 'Titre-4', 'Joseph Bernanos'),
(10, 'Titre 5', 'Accroche article5', 'Lorem Elsass ipsum Yo dû. hop météor Oberschaeffolsheim kuglopf leo ornare libero. yeuh. und auctor, blottkopf, rucksack leverwurscht Gal ! condimentum geïz hoplageiss tellus risus, knack Chulien turpis, habitant dolor tchao bissame libero, eleifend Chulia Roberstau pellentesque quam, et eget sit amet tellus hopla mollis morbi placerat Carola schnaps Pellentesque elit geht\'s vielmols, Strasbourg Huguette Salu bissame baeckeoffe sagittis id, mamsell Hans hopla dignissim nullam réchime sit consectetur commodo messti de Bischheim id Racing. s\'guelt libero, merci vielmols DNA, gewurztraminer ch\'ai chambon Heineken mänele Pfourtz ! ante suspendisse adipiscing sed kartoffelsalad porta sit Morbi non ftomi! picon bière Kabinetpapier kougelhopf gravida quam. jetz gehts los tristique Gal. ac amet schneck bredele Christkindelsmärik Salut bisamme salu Oberschaeffolsheim sed senectus hopla so ornare turpis schpeck elementum munster Miss Dahlias barapli semper non rossbolla Wurschtsalad bissame ac wie ullamcorper in, knepfle varius Coopé de Truchtersheim wurscht purus  rhoncus amet, lotto-owe Verdammi leo flammekueche vulputate gal nüdle Spätzle lacus aliquam hopla dui Richard Schirmeck Mauris', '2018-10-28 12:44:54', 'titre-5', 'MARGURITE YOURCENAR');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_23A0E66989D9B62` (`slug`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
