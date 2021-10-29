CREATE SCHEMA IF NOT EXISTS `petcom59_petcomp_db` DEFAULT CHARACTER SET utf8 ;
USE `petcom59_petcomp_db` ;

-- -----------------------------------------------------
-- Table `petcom59_petcomp_db`.`trabalhos_publicados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `petcom59_petcomp_db`.`trabalhos_publicados` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(500) NOT NULL,
  `autor` VARCHAR(500) NOT NULL,
  `data` VARCHAR(10) NULL,
  `palavras_chaves` VARCHAR(150) NULL,
  `resumo` TEXT NULL,
  `link` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `petcom59_petcomp_db`.`noticias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `petcom59_petcomp_db`.`noticias` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(500) NOT NULL,
  `texto` TEXT NOT NULL,
  `data` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `petcom59_petcomp_db`.`petianos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `petcom59_petcomp_db`.`petianos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome_completo` VARCHAR(60) NULL,
  `primeiro_nome` VARCHAR(15) NOT NULL,
  `ultimo_nome` VARCHAR(15) NOT NULL,
  `ano` VARCHAR(4) NOT NULL,
  `periodo` VARCHAR(1) NOT NULL,
  `ativo` TINYINT NOT NULL,
  `orientador` TINYINT NOT NULL,
  `voluntario` TINYINT NOT NULL,
  `imagem` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `petcom59_petcomp_db`.`sites`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `petcom59_petcomp_db`.`sites` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(60) NOT NULL,
  `link` VARCHAR(500) NOT NULL,
  `descricao` TEXT NOT NULL,
  `evento` TINYINT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

