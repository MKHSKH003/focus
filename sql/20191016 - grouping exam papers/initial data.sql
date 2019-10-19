USE `3XCpN5NUQo`;

INSERT INTO `Grade` (`Description`)
SELECT * FROM (SELECT 'Grade 12') as temp
WHERE NOT EXISTS(
    SELECT 1
    FROM `Grade` 
    WHERE `Description` = 'Grade 12'
);

INSERT INTO `Grade` (`Description`)
SELECT * FROM (SELECT 'Grade 11') as temp
WHERE NOT EXISTS(
    SELECT 1
    FROM `Grade` 
    WHERE `Description` = 'Grade 11'
);

INSERT INTO `Grade` (`Description`)
SELECT * FROM (SELECT 'Grade 10') as temp
WHERE NOT EXISTS(
    SELECT 1
    FROM `Grade` 
    WHERE `Description` = 'Grade 10'
);