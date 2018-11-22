-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Books'
-- Main table of books
-- ---

DROP TABLE IF EXISTS `Books`;
		
CREATE TABLE `Books` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `BookName` VARCHAR(100) NULL DEFAULT NULL,
  `YearOfPublishing` DATE NULL DEFAULT NULL,
  `ISBN` VARCHAR(17) NULL DEFAULT NULL,
  `FormatId` INTEGER NULL DEFAULT NULL,
  `NumberOfPages` INTEGER NULL DEFAULT NULL,
  `NumberOfPrintedSheets` INTEGER NULL DEFAULT NULL,
  `Bind` INTEGER NULL DEFAULT NULL,
  `PublisherId` INTEGER NULL DEFAULT NULL,
  `BookSeries` VARCHAR(100) NULL DEFAULT NULL,
  `NumberInSeries` INTEGER NULL DEFAULT NULL,
  `Description` VARCHAR(200) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'Main table of books';

-- ---
-- Table 'Authors'
-- Table of authors
-- ---

DROP TABLE IF EXISTS `Authors`;
		
CREATE TABLE `Authors` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `FullName` VARCHAR(100) NULL DEFAULT NULL,
  `Description` VARCHAR(200) NULL DEFAULT NULL,
  `FirstName` VARCHAR(30) NULL DEFAULT NULL,
  `SurName` VARCHAR(30) NULL DEFAULT NULL,
  `LastName` VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'Table of authors';

-- ---
-- Table 'Formats'
-- 
-- ---

DROP TABLE IF EXISTS `Formats`;
		
CREATE TABLE `Formats` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Format` VARCHAR(7) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Publishers'
-- 
-- ---

DROP TABLE IF EXISTS `Publishers`;
		
CREATE TABLE `Publishers` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Name` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Binds'
-- 
-- ---

DROP TABLE IF EXISTS `Binds`;
		
CREATE TABLE `Binds` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `BindFormat` VARCHAR(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'BooksAuthors'
-- Intermediate table
-- ---

DROP TABLE IF EXISTS `BooksAuthors`;
		
CREATE TABLE `BooksAuthors` (
  `BookId` INTEGER NULL DEFAULT NULL,
  `AuthorId` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`BookId`)
) COMMENT 'Intermediate table';

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `Books` ADD FOREIGN KEY (FormatId) REFERENCES `Formats` (`id`);
ALTER TABLE `Books` ADD FOREIGN KEY (Bind) REFERENCES `Binds` (`id`);
ALTER TABLE `Books` ADD FOREIGN KEY (PublisherId) REFERENCES `Publishers` (`id`);
ALTER TABLE `BooksAuthors` ADD FOREIGN KEY (BookId) REFERENCES `Books` (`id`);
ALTER TABLE `BooksAuthors` ADD FOREIGN KEY (AuthorId) REFERENCES `Authors` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `Books` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Authors` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Formats` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Publishers` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Binds` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `BooksAuthors` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `Books` (`id`,`BookName`,`YearOfPublishing`,`ISBN`,`FormatId`,`NumberOfPages`,`NumberOfPrintedSheets`,`Bind`,`PublisherId`,`BookSeries`,`NumberInSeries`,`Description`) VALUES
-- ('','','','','','','','','','','','');
-- INSERT INTO `Authors` (`id`,`FullName`,`Description`,`FirstName`,`SurName`,`LastName`) VALUES
-- ('','','','','','');
-- INSERT INTO `Formats` (`id`,`Format`) VALUES
-- ('','');
-- INSERT INTO `Publishers` (`id`,`Name`) VALUES
-- ('','');
-- INSERT INTO `Binds` (`id`,`BindFormat`) VALUES
-- ('','');
-- INSERT INTO `BooksAuthors` (`BookId`,`AuthorId`) VALUES
-- ('','');