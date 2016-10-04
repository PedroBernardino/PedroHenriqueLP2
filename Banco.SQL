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
  `Descrição` mediumtext,
  `Evolução` varchar(50) NOT NULL DEFAULT '0',
  `Habilidade` varchar(50) NOT NULL DEFAULT '0',
  `Habilidade2` varchar(50) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Tabela Principal';

-- Copiando dados para a tabela trabalho lp2 pokédex.pokémons: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `pokémons` DISABLE KEYS */;
INSERT INTO `pokémons` (`ID`, `Nome`, `Tipo`, `Tipo2`, `Descrição`, `Evolução`, `Habilidade`, `Habilidade2`) VALUES
	(1, 'Bulbasaur', 'Planta', 'Veneno', 'Ele Carrega uma semente em suas costas desde seu nascimento.  À medida em que ele envelhece, a semente se desenvolve', 'Ivysaur', 'Overgrow', 'Chlorophyll');
/*!40000 ALTER TABLE `pokémons` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
