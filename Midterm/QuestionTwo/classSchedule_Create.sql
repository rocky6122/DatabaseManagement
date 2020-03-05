-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema class_schedule
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema class_schedule
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `class_schedule` DEFAULT CHARACTER SET utf8 ;
USE `class_schedule` ;

-- -----------------------------------------------------
-- Table `class_schedule`.`Student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `class_schedule`.`Student` (
  `sid` INT NOT NULL,
  `sfn` VARCHAR(45) NOT NULL,
  `sln` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`sid`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `class_schedule`.`Professor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `class_schedule`.`Professor` (
  `pid` INT NOT NULL,
  `pfn` VARCHAR(45) NOT NULL,
  `pln` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`pid`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `class_schedule`.`Course`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `class_schedule`.`Course` (
  `course_id` VARCHAR(10) NOT NULL,
  `course_section` CHAR(2) NOT NULL,
  `course_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`course_id`, `course_section`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `class_schedule`.`Building`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `class_schedule`.`Building` (
  `bid` INT NOT NULL,
  `bname` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`bid`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `class_schedule`.`Room`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `class_schedule`.`Room` (
  `bid` INT NOT NULL,
  `room_num` VARCHAR(4) NOT NULL,
  `room_type` VARCHAR(45) NOT NULL,
  `seats` INT NOT NULL,
  PRIMARY KEY (`bid`, `room_num`),
  INDEX `fk_Room_Building_idx` (`bid` ASC),
  CONSTRAINT `fk_Room_Building`
    FOREIGN KEY (`bid`)
    REFERENCES `class_schedule`.`Building` (`bid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `class_schedule`.`CourseRoom`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `class_schedule`.`CourseRoom` (
  `bid` INT NOT NULL,
  `room_num` VARCHAR(4) NOT NULL,
  `course_id` VARCHAR(10) NOT NULL,
  `course_section` CHAR(2) NOT NULL,
  PRIMARY KEY (`bid`, `room_num`, `course_id`, `course_section`),
  INDEX `fk_Course_has_Room_Room1_idx` (`bid` ASC, `room_num` ASC),
  INDEX `fk_CourseRoom_Course1_idx` (`course_id` ASC, `course_section` ASC),
  CONSTRAINT `fk_Course_has_Room_Room1`
    FOREIGN KEY (`bid` , `room_num`)
    REFERENCES `class_schedule`.`Room` (`bid` , `room_num`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CourseRoom_Course1`
    FOREIGN KEY (`course_id` , `course_section`)
    REFERENCES `class_schedule`.`Course` (`course_id` , `course_section`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `class_schedule`.`StudentCourse`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `class_schedule`.`StudentCourse` (
  `sid` INT NOT NULL,
  `course_id` VARCHAR(10) NOT NULL,
  `course_section` CHAR(2) NOT NULL,
  PRIMARY KEY (`sid`, `course_id`, `course_section`),
  INDEX `fk_Student_has_Course_Course1_idx` (`course_id` ASC, `course_section` ASC),
  INDEX `fk_Student_has_Course_Student1_idx` (`sid` ASC),
  CONSTRAINT `fk_Student_has_Course_Student1`
    FOREIGN KEY (`sid`)
    REFERENCES `class_schedule`.`Student` (`sid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Student_has_Course_Course1`
    FOREIGN KEY (`course_id` , `course_section`)
    REFERENCES `class_schedule`.`Course` (`course_id` , `course_section`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `class_schedule`.`ProfessorCourse`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `class_schedule`.`ProfessorCourse` (
  `pid` INT NOT NULL,
  `course_id` VARCHAR(10) NOT NULL,
  `course_section` CHAR(2) NOT NULL,
  PRIMARY KEY (`pid`, `course_id`, `course_section`),
  INDEX `fk_Professor_has_Course_Course1_idx` (`course_id` ASC, `course_section` ASC),
  INDEX `fk_Professor_has_Course_Professor1_idx` (`pid` ASC),
  CONSTRAINT `fk_Professor_has_Course_Professor1`
    FOREIGN KEY (`pid`)
    REFERENCES `class_schedule`.`Professor` (`pid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Professor_has_Course_Course1`
    FOREIGN KEY (`course_id` , `course_section`)
    REFERENCES `class_schedule`.`Course` (`course_id` , `course_section`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
