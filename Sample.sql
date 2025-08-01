create database Sample
use Sample
CREATE TABLE Stud(
reg_no INT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
department VARCHAR(40) NOT NULL,
year INT NOT NULL);
INSERT INTO Stud(reg_no,name,department,year) VALUES 
(111,'xxx','Computer Science',4),
(122,'yyy','AI&DS',3),
(124,'zzz','Information Technology',3),
(130,'abc','Cyber Security',1);
SELECT * FROM Stud;
UPDATE Stud SET name='sdf',
department='BCA', year=3 WHERE reg_no=122;
INSERT INTO Stud(reg_no,name,department,year) 
VALUES(145,'sdfg','MSE CS',2);
SELECT * FROM Stud;
ALTER TABLE Stud
ADD phone_num VARCHAR(13);
UPDATE Stud
 SET phone_num = '9876543210' WHERE reg_no=111;

UPDATE Stud
SET phone_num='1234567890' WHERE reg_no=122; 

UPDATE Stud

SET phone_num='5432167890' WHERE reg_no=124;

UPDATE Stud
SET phone_num='9876054321' WHERE reg_no=130;

UPDATE Stud
SET phone_num='5647382910' WHERE reg_no=145;

SELECT COUNT(*) AS tot_Student FROM Stud;
SELECT MAX(year) AS max_yr FROM Stud;
SELECT MIN(year) AS min_yr FROM Stud;
SELECT AVG(year) AS av_yr FROM Stud;
SELECT department,count(*) AS dep_count FROM Stud GROUP BY department;

SELECT department,MAX(year) AS max_yr FROM Stud
GROUP BY department;

SELECT * FROM Stud
ORDER BY year ASC;

SELECT * FROM stud
ORDER BY name;

SELECT * FROM Stud
ORDER BY department DESC;

SELECT UPPER(department) AS dep_upr FROM Stud;
SELECT UPPER(name) AS name_up FROM Stud;
SELECT LOWER(name) AS name_up FROM Stud;
SELECT LEFT(name,2) AS srt FROM Stud;
SELECT name,LENGTH(name) AS name_ln FROM Stud;
SELECT CONCAT(name,' - ',department) AS combine FROM Stud;

SELECT name,year,year + 1 AS nx_yr FROM Stud;
SELECT reg_no,MOD(reg_no,2) AS odr FROM Stud;

ALTER TABLE Stud
ADD Date_Detail DATE;

SELECT * FROM Stud;

UPDATE Stud SET Date_Detail='2021-08-18' WHERE reg_no=111;
UPDATE Stud SET Date_Detail='2022-07-18' WHERE reg_no=122;
UPDATE Stud SET Date_Detail='2011-06-18' WHERE reg_no=124;
UPDATE Stud SET Date_Detail='2011-05-18' WHERE reg_no=130;
UPDATE Stud SET Date_Detail='2011-04-18' WHERE reg_no=145;

ALTER TABLE Stud
DROP COLUMN Data_Detail;

SELECT CURDATE();
SELECT CURTIME();

SELECT reg_no,name,YEAR(Date_Detail) AS yr FROM Stud;
