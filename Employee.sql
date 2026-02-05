CREATE table Employee(EmployeeID int,EName varchar(50), EAge int, EGender varchar(6), ESalary int,EAddress varchar(50)); 

insert into Employee(EmployeeID ,EName, EAge , EGender , ESalary,EAddress )
values(01,"Surya",22,"M",25000,"Hyderabad"); 
insert into Employee(EmployeeID ,EName, EAge , EGender , ESalary,EAddress )
values(02,"Sree",22,"F",24000,"Guntur"); 
insert into Employee(EmployeeID ,EName, EAge , EGender , ESalary,EAddress )
values(03,"Saketh",22,"M",22000,"Eluru"); 
insert into Employee(EmployeeID ,EName, EAge , EGender , ESalary,EAddress )
values(04,"Ram",22,"M",21000,"Vijayawada"); 

select * from Employee;
select DISTINCT(EAddress) from Employee;
