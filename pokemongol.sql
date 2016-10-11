-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.5.5-10.0.14-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura do banco de dados para trabalho lp2 pokédex
CREATE DATABASE IF NOT EXISTS `trabalho lp2 pokédex` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `trabalho lp2 pokédex`;


-- Copiando estrutura para tabela trabalho lp2 pokédex.pokémons
CREATE TABLE IF NOT EXISTS `pokémons` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL DEFAULT '0',
  `Tipo` varchar(50) NOT NULL DEFAULT '0',
  `Tipo2` varchar(50) DEFAULT '0',
  `Descrição` longtext,
  `Evolução` varchar(50) DEFAULT '0',
  `Habilidade` varchar(50) NOT NULL DEFAULT '0',
  `Habilidade2` varchar(50) DEFAULT '0',
  `HP` int(11) DEFAULT NULL,
  `ATK` int(11) DEFAULT NULL,
  `DEF` int(11) DEFAULT NULL,
  `SPD` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=latin1 COMMENT='Tabela Principal';

-- Copiando dados para a tabela trabalho lp2 pokédex.pokémons: ~14 rows (aproximadamente)
/*!40000 ALTER TABLE `pokémons` DISABLE KEYS */;
INSERT INTO `pokémons` (`ID`, `Nome`, `Tipo`, `Tipo2`, `Descrição`, `Evolução`, `Habilidade`, `Habilidade2`, `HP`, `ATK`, `DEF`, `SPD`) VALUES
	(1, 'Bulbasaur', 'Planta', 'Veneno', 'Ele Carrega uma semente em suas costas desde seu nascimento.  À medida em que ele envelhece, a semente se desenvolve', '2', 'Overgrow', 'Chlorophyll', 45, 49, 49, 45),
	(2, 'Ivysaur', 'Planta', 'Veneno', 'Exposição ao sol fortalece esse Pokemon. Também ajuda no crescimento da flor em suas costas.', '3', 'Overgrow', 'Chlorophyll', 60, 62, 63, 60),
	(3, 'Venusaur', 'Planta', 'Veneno', 'Ele consegue converter a luz do sol em energia, por isso fica mais forte durante o verão.', '', 'Overgrow', 'Chlorophyll', 80, 82, 83, 80),
	(43, 'Oddish', 'Planta', 'Veneno', 'Durante o dia, ele se mantém enterrado no chão. Na noite ele anda por aí espalhando suas sementes.', '44', 'Chlorophyll', 'Run Away', 45, 50, 55, 30),
	(44, 'Gloom', 'Planta', 'Veneno', 'O líquido saindo de sua boca não é baba, na verdade é um nectar usado para atrair presas.', '45', 'Chlorophyll', 'Stench', 60, 65, 70, 40),
	(45, 'Vileplume', 'Planta', 'Veneno', 'Ele tem as maiores pétalas do mundo, a cada passo que ele da, suas pétalas balançam e soltam um gás tóxico.', '', 'Chlorophyll', 'Effect Spore', 75, 80, 85, 50),
	(46, 'Paras', 'Inseto', 'Planta', NULL, '46', 'Dry Skin', 'Effect Spore', 35, 70, 55, 25),
	(47, 'Parasect', 'Inseto', 'Planta', NULL, '', 'Dry Skin', 'Effect Spore', 60, 95, 80, 30),
	(69, 'Bellsprout', 'Planta', 'Veneno', NULL, '70', 'Chlorophyll', 'Gluttony', 50, 75, 35, 40),
	(70, 'Weepinbell', 'Planta', 'Veneno', NULL, '71', 'Chlorophyll', 'Gluttony', 65, 90, 50, 55),
	(71, 'Victreebel', 'Planta', 'Veneno', NULL, '', 'Chlorophyll', 'Gluttony', 80, 105, 65, 70),
	(102, 'Exeggcute', 'Planta', 'Psíquico', NULL, '103', 'Chlorophyll', 'Harvest', 60, 40, 80, 40),
	(103, 'Exeggutor', 'Planta', 'Psíquico', NULL, '', 'Chlorophyll', 'Harvest', 95, 95, 85, 55),
	(114, 'Tangela', 'Planta', '', NULL, '', 'Chlorophyll', 'Leaf Guard', 65, 55, 115, 60);
/*!40000 ALTER TABLE `pokémons` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
