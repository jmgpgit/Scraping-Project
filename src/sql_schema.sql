-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema artists_and_genres
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema artists_and_genres
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `artists_and_genres` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `artists_and_genres` ;

-- -----------------------------------------------------
-- Table `artists_and_genres`.`artist`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `artists_and_genres`.`artist` (
  `artist` VARCHAR(100) NOT NULL,
  `country` VARCHAR(45) NULL,
  `Release-year_of_first_charted_record` VARCHAR(45) NULL,
  `Total_certified_units` VARCHAR(45) NULL,
  `claimed_sales` VARCHAR(45) NULL,
  `active` VARCHAR(45) NULL,
  `start_year` VARCHAR(45) NULL,
  `end_year` VARCHAR(45) NULL,
  `band_rank` VARCHAR(45) NULL,
  `total_unique_word_count` VARCHAR(45) NULL,
  `avg_unique_word_count` VARCHAR(45) NULL,
  `az_lyrics_total_unique` VARCHAR(45) NULL,
  `az_lyrics_avg_unique` VARCHAR(45) NULL,
  PRIMARY KEY (`artist`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `artists_and_genres`.`genre`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `artists_and_genres`.`genre` (
  `genre_id` INT NOT NULL,
  `genre` VARCHAR(100) NULL,
  PRIMARY KEY (`genre_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `artists_and_genres`.`artist_has_genre`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `artists_and_genres`.`artist_has_genre` (
  `artist` VARCHAR(100) NOT NULL,
  `ids` INT NOT NULL,
  PRIMARY KEY (`artist`, `ids`),
  INDEX `fk_artist_has_genre_genre1_idx` (`ids` ASC) VISIBLE,
  INDEX `fk_artist_has_genre_artist_idx` (`artist` ASC) VISIBLE,
  CONSTRAINT `fk_artist_has_genre_artist`
    FOREIGN KEY (`artist`)
    REFERENCES `artists_and_genres`.`artist` (`artist`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_artist_has_genre_genre1`
    FOREIGN KEY (`ids`)
    REFERENCES `artists_and_genres`.`genre` (`genre_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
