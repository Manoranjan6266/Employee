create database Employe
use Employe
CREATE TABLE Employe(
emp_id INT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
department VARCHAR(40) NOT NULL,
experience INT NOT NULL);
INSERT INTO Employe(emp_id,name,department,experience) VALUES 
(111,'xxx','Computer Science',4),
(122,'yyy','AI&DS',3),
(123,'zzz','Information Technology',2),
(136,'abc','Cyber Security',1);
SELECT * FROM Employe;

UPDATE Employe
SET name='sdf',
department='BCA',
experience=3 WHERE emp_id=130;
INSERT INTO Employe(emp_id,name,department,experience)
VALUES(145,'sdfg','MSE CS',2);
SELECT * FROM Employe;

ALTER TABLE Employe
ADD salary VARCHAR(13);
UPDATE Employe
 SET Salary = '10000' WHERE emp_id=111;
 SELECT * FROM Employe;
 UPDATE Employe
 SET Salary = '20000' WHERE emp_id=122;
 SELECT * FROM Employe;
 UPDATE Employe
 SET Salary = '30000' WHERE emp_id=123;
 SELECT * FROM Employe;
 UPDATE Employe
 SET Salary = '30000' WHERE emp_id=136;
 SELECT * FROM Employe;
 UPDATE Employe
 SET Salary = '40000' WHERE emp_id=145;
 SELECT * FROM Employe;