CREATE table Employee(EmployeeID int,EName varchar(50), EAge int, EGender varchar(6), ESalary int,EAddress varchar(50)); 

insert into Employee values(01,"Surya",22,"M",25000,"Hyderabad"); 
insert into Employee values(02,"Sree",22,"F",24000,"Guntur"); 
insert into Employee values(03,"Saketh",22,"M",22000,"Eluru"); 
insert into Employee values(04,"Ram",22,"M",21000,"Vijayawada"); 
INSERT INTO Employee VALUES (5, 'Anil', 23, 'M', 26000, 'Hyderabad');
INSERT INTO Employee VALUES (6, 'Priya', 21, 'F', 23000, 'Guntur');
INSERT INTO Employee VALUES (7, 'Kiran', 24, 'M', 28000, 'Vizag');
INSERT INTO Employee VALUES (8, 'Meena', 22, 'F', 22500, 'Eluru');
INSERT INTO Employee VALUES (9, 'Rohit', 25, 'M', 30000, 'Hyderabad');
INSERT INTO Employee VALUES (10, 'Divya', 23, 'F', 27000, 'Vijayawada');
SELECT * FROM Employee WHERE ESalary>=24000;
SELECT * FROM Employee ORDERBY EName;

-----------------------------------------------


select * from Employee;
select DISTINCT(EAddress) from Employee;




CREATE table Department(EmployeeID int,, EDepartment varchar(20), ERole varchar(50), EExperience int);
