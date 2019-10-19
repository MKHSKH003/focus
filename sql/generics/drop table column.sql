USE `-- DATABASE NAME --`;

SET @table__name = '-- TABLE NAME --';
SET @column_name = '-- COLUMN NAME --';

SELECT Count(*)
INTO @exists
FROM information_schema.COLUMNS 
WHERE table_name = @table__name AND column_name = @column_name;

SET @alter_statment = concat('ALTER TABLE ',@table__name,'` DROP COLUMN `',@column_name,'`');
SET @query = If (@exists>0, @alter_statment, "SELECT ''");

PREPARE stmt FROM @query;

EXECUTE stmt;