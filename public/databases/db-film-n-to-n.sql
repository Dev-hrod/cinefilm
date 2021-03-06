-- MySQL Script generated by MySQL Workbench
-- Thu Dec 19 11:32:46 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema dbFilms
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dbFilms
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dbFilms` DEFAULT CHARACTER SET utf8 ;
USE `dbFilms` ;

-- -----------------------------------------------------
-- Table `dbFilms`.`films`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbFilms`.`films` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titre` VARCHAR(50) NOT NULL,
  `description` LONGTEXT NOT NULL,
  `annee-sortie` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbFilms`.`genre`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbFilms`.`genre` (
  `idgenre` INT NOT NULL AUTO_INCREMENT,
  `nomGenre` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idgenre`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbFilms`.`realisateur`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbFilms`.`realisateur` (
  `idrealisateur` INT NOT NULL AUTO_INCREMENT,
  `realisateur` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`idrealisateur`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbFilms`.`films_has_genre`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbFilms`.`films_has_genre` (
  `films_id` INT NOT NULL,
  `genre_idgenre` INT NOT NULL,
  PRIMARY KEY (`films_id`, `genre_idgenre`),
  INDEX `fk_films_has_genre_genre1_idx` (`genre_idgenre` ASC) VISIBLE,
  INDEX `fk_films_has_genre_films1_idx` (`films_id` ASC) VISIBLE,
  CONSTRAINT `fk_films_has_genre_films1`
    FOREIGN KEY (`films_id`)
    REFERENCES `dbFilms`.`films` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_films_has_genre_genre1`
    FOREIGN KEY (`genre_idgenre`)
    REFERENCES `dbFilms`.`genre` (`idgenre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbFilms`.`films_has_realisateur`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbFilms`.`films_has_realisateur` (
  `films_id` INT NOT NULL,
  `realisateur_idrealisateur` INT NOT NULL,
  PRIMARY KEY (`films_id`, `realisateur_idrealisateur`),
  INDEX `fk_films_has_realisateur_realisateur1_idx` (`realisateur_idrealisateur` ASC) VISIBLE,
  INDEX `fk_films_has_realisateur_films1_idx` (`films_id` ASC) VISIBLE,
  CONSTRAINT `fk_films_has_realisateur_films1`
    FOREIGN KEY (`films_id`)
    REFERENCES `dbFilms`.`films` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_films_has_realisateur_realisateur1`
    FOREIGN KEY (`realisateur_idrealisateur`)
    REFERENCES `dbFilms`.`realisateur` (`idrealisateur`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
