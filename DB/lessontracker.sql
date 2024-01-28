-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema Lesson_Tracker
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `Lesson_Tracker` ;

-- -----------------------------------------------------
-- Schema Lesson_Tracker
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Lesson_Tracker` ;
USE `Lesson_Tracker` ;

-- -----------------------------------------------------
-- Table `lesson_tracker`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lesson_tracker` ;

CREATE TABLE IF NOT EXISTS `lesson_tracker` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `topic` VARCHAR(200) NOT NULL DEFAULT 'No topic supplied.',
  `week_number` VARCHAR(45) NOT NULL DEFAULT 'Week not supplied.',
  `review_status` TINYINT(1) NOT NULL DEFAULT 0,
  `project` VARCHAR(200) NULL DEFAULT 'No project this week.',
  `url` VARCHAR(200) NOT NULL DEFAULT 'No URL supplied.',
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS lesson@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'lesson'@'localhost' IDENTIFIED BY 'lesson';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'lesson'@'localhost';
GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'lesson'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `lesson_tracker`
-- -----------------------------------------------------
START TRANSACTION;
USE `Lesson_Tracker`;
INSERT INTO `lesson_tracker` (`id`, `topic`, `week_number`, `review_status`, `project`, `url`) VALUES (1, 'Java Fundamentals of Programming', 'Week 1', 1, 'Make Change', 'https://github.com/SkillDistillery/SD42/blob/main/jfop/README.md');
INSERT INTO `lesson_tracker` (`id`, `topic`, `week_number`, `review_status`, `project`, `url`) VALUES (2, 'Object-Oriented Programming in Java', 'Week 2', 1, 'Food Trucks', 'https://github.com/SkillDistillery/SD42/blob/main/java1/README.md');
INSERT INTO `lesson_tracker` (`id`, `topic`, `week_number`, `review_status`, `project`, `url`) VALUES (3, 'Java Libraries', 'Week 3', 1, 'Jets', 'https://github.com/SkillDistillery/SD42/blob/main/java2/README.md');
INSERT INTO `lesson_tracker` (`id`, `topic`, `week_number`, `review_status`, `project`, `url`) VALUES (4, 'Java Libraries', 'Week 4', 1, 'Blackjack', 'https://github.com/SkillDistillery/SD42/blob/main/java2/README.md');
INSERT INTO `lesson_tracker` (`id`, `topic`, `week_number`, `review_status`, `project`, `url`) VALUES (5, 'Java Libraries', 'Week 5', 1, 'No project this week.', 'https://github.com/SkillDistillery/SD42/blob/main/java2/README.md');
INSERT INTO `lesson_tracker` (`id`, `topic`, `week_number`, `review_status`, `project`, `url`) VALUES (6, 'OCP Exam Preparation', 'Week 6', 1, 'No project this week.', 'https://github.com/SkillDistillery/SD42/blob/main/ocpPrep/README.md');
INSERT INTO `lesson_tracker` (`id`, `topic`, `week_number`, `review_status`, `project`, `url`) VALUES (7, 'Web Basics', 'Week 7', 1, 'Film Query Application', 'https://github.com/SkillDistillery/SD42/blob/main/web101/README.md');
INSERT INTO `lesson_tracker` (`id`, `topic`, `week_number`, `review_status`, `project`, `url`) VALUES (8, 'Intro to SQL and JDBC', 'Week 7', 1, 'Film Query Application', 'https://github.com/SkillDistillery/SD42/blob/main/sql1/README.md');
INSERT INTO `lesson_tracker` (`id`, `topic`, `week_number`, `review_status`, `project`, `url`) VALUES (9, 'Dynamic Web Applications', 'Week 8', 1, 'Spring MVC Film C.R.U.D.', 'https://github.com/SkillDistillery/SD42/blob/main/javaWeb/README.md');
INSERT INTO `lesson_tracker` (`id`, `topic`, `week_number`, `review_status`, `project`, `url`) VALUES (10, 'Introduction to Spring MVC', 'Week 8', 1, 'Spring MVC Film C.R.U.D.', 'https://github.com/SkillDistillery/SD42/blob/main/SpringMVC/README.md');
INSERT INTO `lesson_tracker` (`id`, `topic`, `week_number`, `review_status`, `project`, `url`) VALUES (11, 'SQL and JDBC Application Development', 'Week 8', 1, 'Spring MVC Film C.R.U.D.', 'https://github.com/SkillDistillery/SD42/blob/main/sql2/README.md');
INSERT INTO `lesson_tracker` (`id`, `topic`, `week_number`, `review_status`, `project`, `url`) VALUES (12, 'Introduction to Spring MVC', 'Week 9', 0, 'JPA CRUD Homework', 'https://github.com/SkillDistillery/SD42/blob/main/SpringMVC/README.md');
INSERT INTO `lesson_tracker` (`id`, `topic`, `week_number`, `review_status`, `project`, `url`) VALUES (13, 'JPA', 'Week 9', 1, 'JPA CRUD Homework', 'https://github.com/SkillDistillery/SD42/blob/main/jpa/README.md');
INSERT INTO `lesson_tracker` (`id`, `topic`, `week_number`, `review_status`, `project`, `url`) VALUES (14, 'SQL and JDBC Application Development', 'Week 9', 0, 'JPA CRUD Homework', 'https://github.com/SkillDistillery/SD42/blob/main/sql2/README.md');
INSERT INTO `lesson_tracker` (`id`, `topic`, `week_number`, `review_status`, `project`, `url`) VALUES (15, 'JPA', 'Week 10', 0, 'Full Stack Group MVC Project', 'https://github.com/SkillDistillery/SD42/blob/main/jpa/README.md');

COMMIT;

