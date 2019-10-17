USE `3XCpN5NUQo`;

SELECT Count(*) INTO @column_exists FROM information_schema.COLUMNS  WHERE TABLE_NAME = 'ExamPaper' AND COLUMN_NAME = 'GradeID';
SELECT Count(*) INTO @table_exists FROM information_schema.TABLES WHERE TABLE_NAME = 'Grade';
SELECT Count(*) INTO @fk_exists FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME = 'FK_ExamPaper_Grade' AND TABLE_NAME = 'ExamPaper';

SET @query = If (@fk_exists > 0, 'ALTER TABLE `ExamPaper` DROP FOREIGN KEY `FK_ExamPaper_Grade`', "SELECT ''");
PREPARE stmt FROM @query;
EXECUTE stmt;

SET @query = If (@table_exists > 0, 'DROP TABLE `Grade`', "SELECT ''");
PREPARE stmt FROM @query;
EXECUTE stmt;

SET @query = If (@column_exists > 0, 'ALTER TABLE `ExamPaper` DROP COLUMN `GradeID`', "SELECT ''");
PREPARE stmt FROM @query;
EXECUTE stmt;