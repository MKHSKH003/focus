USE `3XCpN5NUQo`;

SET SQL_SAFE_UPDATES = 0;

SELECT Count(*)
INTO @exists
FROM information_schema.COLUMNS 
WHERE table_name = 'User' AND column_name = 'IsAdmin';

-- Create column IsAdmin

SET @query = If (@exists = 0, 'ALTER TABLE `User` ADD `IsAdmin` BIT(1) NOT NULL', "SELECT ''");
PREPARE stmt FROM @query;
EXECUTE stmt;

-- Set admin as false for everyone

SET @query = If (@exists = 0, 'UPDATE `User` SET `IsAdmin` = 0 WHERE `IsAdmin` IS NULL', "SELECT ''");
PREPARE stmt FROM @query;
EXECUTE stmt;

-- Set default IsAdmin as false

SET @query = If (@exists = 0, 'ALTER TABLE `User` ALTER `IsAdmin` set default 0', "SELECT ''");
PREPARE stmt FROM @query;
EXECUTE stmt;

SET SQL_SAFE_UPDATES = 1;
        