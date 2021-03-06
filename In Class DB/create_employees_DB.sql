-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=1;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema employees
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS employees ;

-- -----------------------------------------------------
-- Schema employees
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS employees DEFAULT CHARACTER SET utf8 ;
USE employees ;

-- -----------------------------------------------------
-- Table Address
-- -----------------------------------------------------
DROP TABLE IF EXISTS Address ;

CREATE TABLE IF NOT EXISTS Address (
  eaid INT NOT NULL,
  estreet VARCHAR(45) NOT NULL,
  ecity VARCHAR(45) NOT NULL,
  est CHAR(2) NOT NULL,
  ezip CHAR(5) NOT NULL,
  PRIMARY KEY (eaid))
ENGINE = INNODB
;


-- -----------------------------------------------------
-- Table Employee
-- -----------------------------------------------------
DROP TABLE IF EXISTS Employee ;

CREATE TABLE IF NOT EXISTS Employee (
  eid INT NOT NULL,
  efn VARCHAR(45) NOT NULL,
  eln VARCHAR(45) NOT NULL,
  eaid INT NOT NULL,
  PRIMARY KEY (eid),
  INDEX fk_Employee_Address_idx (eaid ASC),
  CONSTRAINT fk_Employee_Address
    FOREIGN KEY (eaid)
    REFERENCES Address (eaid)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = INNODB
;


-- -----------------------------------------------------
-- Table Contact
-- -----------------------------------------------------
DROP TABLE IF EXISTS Contact ;

CREATE TABLE IF NOT EXISTS Contact (
  cid INT NOT NULL,
  contact_type VARCHAR(45) NOT NULL,
  PRIMARY KEY (cid))
ENGINE = INNODB
;


-- -----------------------------------------------------
-- Table Department
-- -----------------------------------------------------
DROP TABLE IF EXISTS Department ;

CREATE TABLE IF NOT EXISTS Department (
  dept_id INT NOT NULL,
  dept_name VARCHAR(45) NOT NULL,
  PRIMARY KEY (dept_id))
ENGINE = INNODB
;


-- -----------------------------------------------------
-- Table Job
-- -----------------------------------------------------
DROP TABLE IF EXISTS Job ;

CREATE TABLE IF NOT EXISTS Job (
  pos_id INT NOT NULL,
  pos_name VARCHAR(45) NOT NULL,
  dept_id INT NOT NULL,
  PRIMARY KEY (pos_id),
  INDEX fk_Job_Department1_idx (dept_id ASC),
  CONSTRAINT fk_Job_Department1
    FOREIGN KEY (dept_id)
    REFERENCES Department (dept_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = INNODB
;


-- -----------------------------------------------------
-- Table HistoryStatus
-- -----------------------------------------------------
DROP TABLE IF EXISTS HistoryStatus ;

CREATE TABLE IF NOT EXISTS HistoryStatus (
  status_id INT NOT NULL,
  status_desc VARCHAR(45) NOT NULL,
  PRIMARY KEY (status_id))
ENGINE = INNODB
;


-- -----------------------------------------------------
-- Table EmpHistory
-- -----------------------------------------------------
DROP TABLE IF EXISTS EmpHistory ;

CREATE TABLE IF NOT EXISTS EmpHistory (
  eid INT NOT NULL,
  pos_id INT NOT NULL,
  start_date DATE NOT NULL,
  salary INT(7) NOT NULL,
  comments VARCHAR(45) NOT NULL,
  status_id INT NOT NULL,
  PRIMARY KEY (eid, pos_id, start_date),
  INDEX fk_EmpHistory_Job1_idx (pos_id ASC),
  INDEX fk_EmpHistory_HistoryStatus1_idx (status_id ASC),
  CONSTRAINT fk_EmpHistory_Employee1
    FOREIGN KEY (eid)
    REFERENCES Employee (eid)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_EmpHistory_Job1
    FOREIGN KEY (pos_id)
    REFERENCES Job (pos_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_EmpHistory_HistoryStatus1
    FOREIGN KEY (status_id)
    REFERENCES HistoryStatus (status_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = INNODB
;


-- -----------------------------------------------------
-- Table EmployeeContact
-- -----------------------------------------------------
DROP TABLE IF EXISTS EmployeeContact ;

CREATE TABLE IF NOT EXISTS EmployeeContact (
  eid INT NOT NULL,
  cid INT NOT NULL,
  contact VARCHAR(255) NOT NULL,
  PRIMARY KEY (eid, cid),
  INDEX fk_EmployeeContact_Contact1_idx (cid ASC),
  INDEX fk_EmployeeContact_Employee1_idx (eid ASC),
  CONSTRAINT fk_EmployeeContact_Employee1
    FOREIGN KEY (eid)
    REFERENCES Employee (eid)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_EmployeeContact_Contact1
    FOREIGN KEY (cid)
    REFERENCES Contact (cid)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = INNODB
;


-- -----------------------------------------------------
-- Table SalaryType
-- -----------------------------------------------------
DROP TABLE IF EXISTS SalaryType ;

CREATE TABLE IF NOT EXISTS SalaryType (
  sal_id INT NOT NULL,
  sal_desc VARCHAR(45) NOT NULL,
  PRIMARY KEY (sal_id))
ENGINE = INNODB
;


-- -----------------------------------------------------
-- Table JobSalary
-- -----------------------------------------------------
DROP TABLE IF EXISTS JobSalary ;

CREATE TABLE IF NOT EXISTS JobSalary (
  pos_id INT NOT NULL,
  sal_id INT NOT NULL,
  sal_range INT(8) NOT NULL,
  PRIMARY KEY (pos_id, sal_id),
  INDEX fk_JobSalaryType_SalaryType1_idx (sal_id ASC),
  INDEX fk_JobSalaryType_Job1_idx (pos_id ASC),
  CONSTRAINT fk_JobSalaryType_Job1
    FOREIGN KEY (pos_id)
    REFERENCES Job (pos_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_JobSalaryType_SalaryType1
    FOREIGN KEY (sal_id)
    REFERENCES SalaryType (sal_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = INNODB
;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
