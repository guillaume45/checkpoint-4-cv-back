SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
SET GLOBAL time_zone = '+1:00';
SET FOREIGN_KEY_CHECKS = 0;
SET GROUP_CONCAT_MAX_LEN=32768;
SET @tables = NULL;
SELECT GROUP_CONCAT('`', table_name, '`') INTO @tables
  FROM information_schema.tables
  WHERE table_schema = (SELECT DATABASE());
SELECT IFNULL(@tables,'dummy') INTO @tables;
SET @tables = CONCAT('DROP TABLE IF EXISTS ', @tables);
PREPARE stmt FROM @tables;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
SET FOREIGN_KEY_CHECKS = 1;




CREATE TABLE `myinfo` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
);

CREATE TABLE `contact` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `firstname_contact` varchar(255) NOT NULL,
  `lastname_contact` varchar(255) NOT NULL,
  `mail_contact` varchar(255) NOT NULL,
  `objet_contact` text NOT NULL,
  `message_contact` text NOT NULL,
  `isNew` boolean NOT NULL,
  `mobile_contact` INT NOT NULL
);

CREATE TABLE `experience` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `title_experience` varchar(255) NOT NULL,
  `poste_experience` varchar(255) NOT NULL,
  `date_experience` text NOT NULL,
  `resume_experience` text NOT NULL
);






