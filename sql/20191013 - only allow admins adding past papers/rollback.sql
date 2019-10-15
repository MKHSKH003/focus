USE `3XCpN5NUQo`;

SELECT Count(*)
INTO @exists
FROM information_schema.COLUMNS 
WHERE table_name = 'User' AND column_name = 'IsAdmin';

SET @query = If (@exists > 0, 'ALTER TABLE `User` DROP COLUMN `IsAdmin`', "SELECT ''");

PREPARE stmt FROM @query;

EXECUTE stmt;