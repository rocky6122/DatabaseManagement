-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Twitter
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS twitter;

-- -----------------------------------------------------
-- Schema Twitter
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS twitter DEFAULT CHARACTER SET utf8 ;
USE twitter ;

-- -----------------------------------------------------
-- Table Users
-- -----------------------------------------------------
DROP TABLE IF EXISTS Users;

CREATE TABLE IF NOT EXISTS Users (
  user_id INT NOT NULL AUTO_INCREMENT,
  user_name VARCHAR(45) NOT NULL,
  PRIMARY KEY (user_id))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Tweet
-- -----------------------------------------------------
DROP TABLE IF EXISTS Tweet;

CREATE TABLE IF NOT EXISTS Tweet (
  tweet_id INT NOT NULL AUTO_INCREMENT,
  tweet_text VARCHAR(255) NOT NULL,
  tweet_datetime DATETIME NOT NULL,
  user_id INT NOT NULL,
  PRIMARY KEY (tweet_id, user_id),
  INDEX fk_Tweet_Users_idx (user_id ASC),
  CONSTRAINT fk_Tweet_Users
    FOREIGN KEY (user_id)
    REFERENCES Users (user_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Retweet
-- -----------------------------------------------------
DROP TABLE IF EXISTS Retweet;

CREATE TABLE IF NOT EXISTS Retweet (
  user_id INT NOT NULL,
  tweet_id INT NOT NULL,
  retweet_datetime DATETIME NOT NULL,
  PRIMARY KEY (user_id, tweet_id),
  INDEX fk_Retweet_Tweet1_idx (tweet_id ASC),
  CONSTRAINT fk_Retweet_User2
    FOREIGN KEY (user_id)
    REFERENCES Users (user_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_Retweet_Tweet1
    FOREIGN KEY (tweet_id)
    REFERENCES Tweet (tweet_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Following
-- -----------------------------------------------------
DROP TABLE IF EXISTS Following;

CREATE TABLE IF NOT EXISTS Following (
  user_id INT NOT NULL,
  following_user_id INT NOT NULL,
  PRIMARY KEY (following_user_id, user_id),
  INDEX fk_Following_User1_idx (user_id ASC),
  CONSTRAINT fk_Following_User1
    FOREIGN KEY (user_id)
    REFERENCES Users (user_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table FavoriteTweet
-- -----------------------------------------------------
DROP TABLE IF EXISTS FavoriteTweet;

CREATE TABLE IF NOT EXISTS FavoriteTweet (
  FavoriteTweet_id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  tweet_id INT NOT NULL,
  PRIMARY KEY (FavoriteTweet_id),
  INDEX fk_FavoriteTweet_Tweet1_idx (tweet_id ASC),
  CONSTRAINT fk_FavoriteTweet_User1
    FOREIGN KEY (user_id)
    REFERENCES Users (user_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_FavoriteTweet_Tweet1
    FOREIGN KEY (tweet_id)
    REFERENCES Tweet (tweet_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


#-----------------------------------------------------------
# Inserts
#-----------------------------------------------------------
USE twitter;

#Insert Users
INSERT INTO Users (user_name) VALUES('John');
INSERT INTO Users (user_name) VALUES('Zoe');
INSERT INTO Users (user_name) VALUES('Billy');
INSERT INTO Users (user_name) VALUES('Tyler');
INSERT INTO Users (user_name) VALUES('Jack');

#Insert Tweets
INSERT INTO Tweet (tweet_text, tweet_datetime, user_id) VALUES("This is John's Tweet.", '2020-04-01 12:00:00', 1);
INSERT INTO Tweet (tweet_text, tweet_datetime, user_id) VALUES("This is Zoe's Tweet.", '2020-04-02 13:00:00', 2);
INSERT INTO Tweet (tweet_text, tweet_datetime, user_id) VALUES("This is Billy's Tweet.", '2020-04-03 14:00:00', 3);
INSERT INTO Tweet (tweet_text, tweet_datetime, user_id) VALUES("This is Tyler's Tweet.", '2020-04-04 15:00:00', 4);
INSERT INTO Tweet (tweet_text, tweet_datetime, user_id) VALUES("This is Jack's Tweet.", '2020-04-05 16:00:00', 5);

#Insert into Retweets
INSERT INTO Retweet VALUES(1, 2, '2020-04-02 13:30:00');
INSERT INTO Retweet VALUES(2, 3, '2020-04-03 14:30:00');
INSERT INTO Retweet VALUES(3, 4, '2020-04-04 15:30:00');
INSERT INTO Retweet VALUES(4, 5, '2020-04-05 16:30:00');
INSERT INTO Retweet VALUES(5, 1, '2020-04-01 12:30:00');

#Insert into FavoriteTweets
INSERT INTO FavoriteTweet (user_id, tweet_id) VALUES(1,3);
INSERT INTO FavoriteTweet (user_id, tweet_id) VALUES(1,4);
INSERT INTO FavoriteTweet (user_id, tweet_id) VALUES(1,5);
INSERT INTO FavoriteTweet (user_id, tweet_id) VALUES(2,1);
INSERT INTO FavoriteTweet (user_id, tweet_id) VALUES(2,4);

#Insert into Following
INSERT INTO Following VALUES(1, 2);
INSERT INTO Following VALUES(1, 3);
INSERT INTO Following VALUES(2, 3);
INSERT INTO Following VALUES(2, 4);
INSERT INTO Following VALUES(2, 5);

SELECT * FROM Users;
SELECT * FROM Tweet;
SELECT * FROM Retweet;
SELECT * FROM FavoriteTweet;
SELECT * FROM Following;

