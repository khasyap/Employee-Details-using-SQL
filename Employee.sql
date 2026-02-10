CREATE table Employee(EmployeeID int,EName varchar(50), EAge int, EGender varchar(6), ESalary int,EAddress varchar(50)); 

insert into Employee values(01,"Surya",22,"M",25000,"Hyderabad"); 
insert into Employee values(02,"Sree",22,"F",24000,"Guntur"); 
insert into Employee values(03,"Saketh",22,"M",22000,"Eluru"); 
insert into Employee values(04,"Ram",22,"M",21000,"Vijayawada"); 
INSERT INTO Employee VALUES (05, 'Anil', 23, 'M', 26000, 'Hyderabad');
INSERT INTO Employee VALUES (06, 'Priya', 21, 'F', 23000, 'Guntur');
INSERT INTO Employee VALUES (07, 'Kiran', 24, 'M', 28000, 'Vizag');
INSERT INTO Employee VALUES (08, 'Meena', 22, 'F', 22500, 'Eluru');
INSERT INTO Employee VALUES (09, 'Rohit', 25, 'M', 30000, 'Hyderabad');
INSERT INTO Employee VALUES (10, 'Divya', 23, 'F', 27000, 'Vijayawada');
SELECT * FROM Employee WHERE ESalary>=24000;
SELECT * FROM Employee ORDERBY EName;
SELECT * FROM Employee ORDERBY ESalary;
SELECT * FROM Employee WHERE EAddress='Hyderabad' AND  EName LIKE 's%';
SELECT * FROM Employee WHERE EAddress='Hyderabad' AND (EName LIKE 's%' or EName LIKE'k%');
SELECT * FROM Employee WHERE EAddress='Vijayawada' OR EAddress='Guntur';
SELECT * FROM Employee WHERE NOT EAddress='Eluru';
SELECT * FROM Employee WHERE EName IS NOT NULL;
SELECT * FROM Employee WHERE EAge IS NULL;
UPDATE  Employee SET EAddress='Chintalapudi' WHERE EmployeeID=01;
DELETE FROM Employee WHERE EmployeeID=10;
SELECT ESalary FROM Employee LIMIT 4;
SELECT ESalary FROM Employee WHERE EAddress='Hyderabad' LIMIT 5;
SELECT MIN(ESalary) FROM Employee;
SELECT MAX(ESalary) FROM Employee;
SELECT COUNT(*) FROM Employee;
SELECT COUNT(ESalary) FROM Employee WHERE EAge>22;
SELECT SUM(ESalary) FROM Employee;
SELECT AVG(ESalary) FROM Employee;
SELECT * FROM Employee WHERE EName LIKE 'S%';
SELECT * FROM Employee WHERE EAddress LIKE '_der__';
SELECT * FROM Employee WHERE EName LIKE '%Sa%';
SELECT * FROM Employee WHERE EName LIKE '%C';
SELECT * FROM Employee WHERE EName LIKE 'S%C';
SELECT * FROM Employee WHERE EAddress IN('Eluru','Vijayawada','Guntur');
SELECT * FROM Employee WHERE EAddress NOT IN('Eluru','Vijayawada','Guntur');
SELECT * FROM Employee WHERE EAddress IN(SELECT EmployeeID from Department);
SELECT * FROM Employee WHERE EAge BETWEEN 21 AND 24;
SELECT * FROM Employee WHERE EAge NOT BETWEEN 21 AND 24;
SELECT EMployeeID AS EID FROM Employee;
SELECT EmployeeID FROM Employee GROUP BY EAddress;
SELECT COUNT(ESalary) FROM Employee HAVING COUNT(EAge>22);
SELECT EName FROM Employee WHERE EXISTS(SELECT EDepartment FROM Department WHERE Department.EmployeeID=Employee.EmployeeID);

-----------------------------------------------


select * from Employee;
SELECT * INTO Employees FROM Employee -- it will crearte a copy of the table
select DISTINCT(EAddress) from Employee;
DELETE FROM Employee;
DROP TABLE Employee;




CREATE table Department(EmployeeID int,, EDepartment varchar(20), ERole varchar(50), EExperience int,EAddress varchar(50));






SELECT Employeee.EmployeeID,Departmet.ERole,Department.EJoining from Employee INNER JOIN Department ON Employee.EmployeeID=Department.EmployeeID;
SELECT Employeee.EmployeeID,Departmet.ERole,Department.EJoining from Employee LEFT JOIN Department ON Employee.EmployeeID=Department.EmployeeID;
SELECT Employeee.EmployeeID,Departmet.ERole,Department.EJoining from Employee RIGHT JOIN Department ON Employee.EmployeeID=Department.EmployeeID;
SELECT Employeee.EmployeeID,Departmet.ERole,Department.EJoining from Employee FULL JOIN Department ON Employee.EmployeeID=Department.EmployeeID;
SELECT EAddress FROM Employee UNION SELECT EAddress FROM  Department;
SELECT EAddress FROM Employee UNION all SELECT EAddress FROM  Department;
