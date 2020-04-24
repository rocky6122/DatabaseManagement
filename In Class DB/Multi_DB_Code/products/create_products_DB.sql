-- MySQL Workbench Forward Engineering


-- -----------------------------------------------------
-- Schema product
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS products ;

-- -----------------------------------------------------
-- Schema product
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS products DEFAULT CHARACTER SET utf8 ;
USE products ;

-- -----------------------------------------------------
-- Table Product
-- -----------------------------------------------------
DROP TABLE IF EXISTS Product ;

CREATE TABLE IF NOT EXISTS Product (
  pid INT NOT NULL,
  prod_name VARCHAR(45) NOT NULL,
  prod_desc VARCHAR(255) NOT NULL,
  price DECIMAL(6,2) NOT NULL,
  PRIMARY KEY (pid)
);


-- -----------------------------------------------------
-- Table ProductInventory
-- -----------------------------------------------------
DROP TABLE IF EXISTS ProductInventory ;

CREATE TABLE IF NOT EXISTS ProductInventory (
  pid INT NOT NULL,
  qty_on_hand INT NOT NULL,
  as_of_date DATETIME NOT NULL,
  trigger_order INT NOT NULL,
  PRIMARY KEY (pid),
  CONSTRAINT fk_ProductInventory_Product
    FOREIGN KEY (pid)
    REFERENCES Product (pid)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
;

-- -----------------------------------------------------
-- Table ProductPriceHistory
-- -----------------------------------------------------
DROP TABLE IF EXISTS ProductPriceHistory;

CREATE TABLE IF NOT EXISTS ProductPriceHistory (
  pid INT NOT NULL,
  price_date DATETIME NOT NULL,
  last_price DECIMAL(6,2) NOT NULL,
  PRIMARY KEY (pid,price_date),
  CONSTRAINT fk_ProductPriceHistory_Product1
    FOREIGN KEY (pid)
    REFERENCES Product (pid)
    ON DELETE CASCADE
    ON UPDATE CASCADE)

