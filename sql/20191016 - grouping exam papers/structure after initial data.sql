USE `3XCpN5NUQo`;

SET SQL_SAFE_UPDATES = 0;

SELECT Count(*) INTO @exists FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'ExamPaper' AND COLUMN_NAME = 'GradeID';

SET @query = If (@exists = 0, 'ALTER TABLE `ExamPaper` ADD `GradeID` INT(11) NULL', "SELECT ''");
PREPARE stmt FROM @query;
EXECUTE stmt;

SET @query = If (@exists = 0, 'UPDATE `ExamPaper` SET `GradeID` = 1 WHERE `GradeID` IS NULL', "SELECT ''");
PREPARE stmt FROM @query;
EXECUTE stmt;

SET @query = If (@exists = 0, 'ALTER TABLE `ExamPaper` MODIFY `GradeID` INT(11) NOT NULL', "SELECT ''");
PREPARE stmt FROM @query;
EXECUTE stmt;

SELECT Count(*) INTO @exists FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS WHERE CONSTRAINT_NAME = 'FK_ExamPaper_Grade';

SET @query = If (@exists = 0, 
	'ALTER TABLE `ExamPaper` ADD  CONSTRAINT FK_ExamPaper_Grade FOREIGN KEY(GradeID) REFERENCES Grade (ID)', "SELECT ''");
PREPARE stmt FROM @query;
EXECUTE stmt;

SET SQL_SAFE_UPDATES = 1;
        