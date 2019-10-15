USE `-- DATABASE NAME --`;

SET @table__name = '-- TABLE NAME --';
SET @current_column_name = '-- CURRENT COLUMN NAME --';
SET @new_column_name = '-- NEW COLUMN NAME --';
SET @new_data_type = '-- DATA TYPE --';

SELECT Count(*)
INTO @exists
FROM information_schema.COLUMNS 
WHERE table_name = @table__name AND column_name = @current_column_name;

SET @alter_statment = concat('ALTER TABLE `',@table__name,'` CHANGE `',@current_column_name,'` `',@new_column_name,'` ',@new_data_type,'');
SET @query = If (@exists>0, @alter_statment, "SELECT ''");

PREPARE stmt FROM @query;

EXECUTE stmt;