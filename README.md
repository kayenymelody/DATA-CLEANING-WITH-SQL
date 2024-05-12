# SHARK ATTACKS

![](https://github.com/kayenymelody/DATA-CLEANING-WITH-SQL/blob/main/Great%20White%20Shark%20Attack%20Clipart.jpeg)

### INTRODUCTION
This is a SQL project(Microsoft 	SQL server studio), a data cleaning project on a dataset on shark attacks reported over the past 100 years.

### DATA SOURCING
This dataset was obtained from maven analytics. It has a total of 25614 rows with  19 columns(case number,date, year,type,country,area, location,activity,name,sex,age,injury,fatal,time,species,investigate,pdf,href formula,original order)

### SKILLS DEMONSTRATED 	
* Removal of duplicates
* Standardizing the data
* Removal of null or blank values
* Removal of columns

### DATA CLEANING
* Using excel, the data types of the year column was changed to integer and the date column to date time.
* The data in the attacks table was copied into a new table called shark_attack
* A cte was created to identify duplicates that were then deleted and 19,529 rows were affected.
* The word ‘Reported’ found in some of the rows in the date column were removed.
* ‘Boating’ was replaced with ‘Boat’ in the Type column
* All rows with years having less than 4 digits were removed and 127 rows were affected.
* All rows where under the sex column that were neither ‘M’ nor ‘F’ were removed and 3 rows were affected.
* Removed 3272 rows whose values under the age column were not integers.
* 6088 NULL values were removed.
* Href and pdf columns were removed.



