SELECT *
FROM shark_attacks;
##creating a new table
CREATE TABLE shark_attack
LIKE shark_attacks;

SELECT *
FROM shark_attack;

INSERT shark_attack
SELECT *
FROM shark_attacks;

##count of non-null values
SELECT COUNT(*)
FROM shark_attack;

##removing duplicates
WITH duplicates AS (SELECT *, ROW_NUMBER() OVER(
PARTITION BY Country,Area,Location,Activity,Sex,Injury,Species) AS row_num
FROM shark_attack)
DELETE
FROM duplicates
WHERE row_num>1;

## standardising the data
# removed the word 'Reported'from the date column
SELECT TRIM(BOTH 'Reported' FROM Date)
FROM shark_attack;
UPDATE shark_attack
SET Date=TRIM(BOTH 'Reported' FROM Date);


SELECT *
FROM shark_attack
WHERE Type LIKE "Boat%";

UPDATE shark_attack
SET Type='Boat'
WHERE Type LIKE 'Boat%';

#eliminate all years having less than 4 digits
DELETE
FROM shark_attack
WHERE Year NOT LIKE 'YYYY';
#delete all rows in the sex column that were not m/f
 DELETE
 FROM shark_attack
 WHERE Sex NOT IN ('M','F');
# delete all rows with ages that did not make sense
 DELETE
 FROM shark_attack
 WHERE Age IN('F','M','MAKE LINE GREEN','NA','X');
 
 
 ##removing null values
 SELECT *
 FROM shark_attack
 WHERE Country IS NOT NULL AND Location IS NOT NULL;
 
 ## droping  columns
 ALTER TABLE shark_attack
 DROP COLUMN pdf,DROP COLUMN href;
 

