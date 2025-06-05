--Sql_Project

--Create tables--
--1 Region Table--
create table regions(region_id int primary key,region_name varchar(20)not null); 

--insert values--
INSERT INTO regions (region_id, region_name) VALUES (1, 'North America');
INSERT INTO regions (region_id, region_name) VALUES (2, 'South America');
INSERT INTO regions (region_id, region_name) VALUES (3, 'Europe');
INSERT INTO regions (region_id, region_name) VALUES (4, 'Asia');
INSERT INTO regions (region_id, region_name) VALUES (5, 'Africa');
INSERT INTO regions (region_id, region_name) VALUES (6, 'Oceania');
INSERT INTO regions (region_id, region_name) VALUES (7, 'Antarctica');
INSERT INTO regions (region_id, region_name) VALUES (8, 'Central America');
INSERT INTO regions (region_id, region_name) VALUES (9, 'Caribbean');
INSERT INTO regions (region_id, region_name) VALUES (10, 'Middle East');
INSERT INTO regions (region_id, region_name) VALUES (11, 'Southeast Asia');
INSERT INTO regions (region_id, region_name) VALUES (12, 'Central Asia');
INSERT INTO regions (region_id, region_name) VALUES (13, 'Western Europe');
INSERT INTO regions (region_id, region_name) VALUES (14, 'Eastern Europe');
INSERT INTO regions (region_id, region_name) VALUES (15, 'Sub-Saharan Africa');
INSERT INTO regions (region_id, region_name) VALUES (16, 'North Africa');
INSERT INTO regions (region_id, region_name) VALUES (17, 'Southern Africa');
INSERT INTO regions (region_id, region_name) VALUES (18, 'East Asia');
INSERT INTO regions (region_id, region_name) VALUES (19, 'South Asia');
INSERT INTO regions (region_id, region_name) VALUES (20, 'Southeast Europe');

--select table--
select * from regions;
-----------------------------------------------------------------------------------------------------------------------------------------------
--2 countries table--
create table countries(country_id int primary key,country_name varchar(20) not null,region_id int,foreign key(region_id)
references regions(region_id));

--insert values in table--

insert into countries values (1, 'USA', 1);
insert into countries values(2, 'Canada', 1);
 insert into countries values (3, 'Mexico', 1);
insert into countries values(4, 'Brazil', 2);
insert into countries values (5, 'Argentina', 2);
insert into countries values (6, 'Colombia', 2);
insert into countries values (7, 'Germany', 3);
insert into countries values(8, 'France', 3);
insert into countries values (9, 'Italy', 3);
insert into countries values (10, 'China', 4);
insert into countries values(11, 'India', 4);
insert into countries values(12, 'Japan', 4);
insert into countries values (13, 'South Africa', 5);
insert into countries values (14, 'Nigeria', 5);
insert into countries values (15, 'Egypt', 5);
insert into countries values (16, 'Australia', 6);
insert into countries values(17, 'New Zealand', 6);
insert into countries values(18, 'Fiji', 6);
insert into countries values(19, 'South Korea', 4);
insert into countries values(20, 'Singapore', 4);

--select table--
select * from countries;

-----------------------------------------------------------------------------------------------------------------------------------------------

--3 location table--
create table locations(location_id int primary key,street_address varchar(20)not null,postal_code int,check(postal_code>0),
cicty varchar(20),state_province varchar(20) not null,country_id int,foreign key(country_id) references
countries(country_id));

--insert values--

insert into locations values (1, '123 Main St', 12345, 'Pune', 'MH', 1);
insert into locations values (2, '456 Elm St', 67890, 'Mumbai', 'MH', 1);
insert into locations values(3, '789 Oak St', 11223, 'Delhi', 'DL', 1);
insert into locations values (4, '101 Pine St', 44556, 'Bangalore', 'KA', 1);
insert into locations values (5, '202 Maple St', 78901, 'Chennai', 'TN', 1);
insert into locations values (6, '303 Birch St', 23456, 'Hyderabad', 'TS', 1);
insert into locations values (7, '404 Cedar St', 34567, 'Kolkata', 'WB', 1);
insert into locations values  (8, '505 Redwood St', 45678, 'Ahmedabad', 'GJ', 1);
insert into locations values(9, '606 Willow St', 56789, 'Surat', 'GJ', 1);
insert into locations values (10, '707 Aspen St', 67890, 'Vadodara', 'GJ', 1);
insert into locations values (11, '808 Fir St', 78901, 'Rajkot', 'GJ', 1);
insert into locations values (12, '909 Pine St', 89012, 'Gandhinagar', 'GJ', 1);
insert into locations values (13, '1010 Cedar St', 90123, 'Nashik', 'MH', 1);
insert into locations values (14, '1111 Redwood St', 12345, 'Aurangabad', 'MH', 1);
insert into locations values(15, '1212 Willow St', 23456, 'Jalgaon', 'MH', 1);
insert into locations values (16, '1313 Aspen St', 34567, 'Dhule', 'MH', 1);
insert into locations values (17, '1414 Fir St', 45678, 'Nanded', 'MH', 1);
insert into locations values (18, '1515 Pine St', 56789, 'Parbhani', 'MH', 1);
insert into locations values(19, '1616 Cedar St', 67890, 'Akola', 'MH', 1);
insert into locations values(20, '1717 Redwood St', 78901, 'Washim', 'MH', 1);

--select table--
select * from locations;

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--4 departments table--
create table departments(department_id int primary key,department_name varchar(20) not null,maneger_id int,location_id int,
foreign key(location_id) references locations(location_id));

--insert values--
insert into departments values(1, 'HR', 101, 1);
insert into departments values(2, 'Finance', 102, 1);
insert into departments values(3, 'Marketing', 103, 2);
insert into departments values(4, 'Sales', 104, 2);
insert into departments values(5, 'IT', 105, 3);
insert into departments values(6, 'R&D', 106, 3);
insert into departments values(7, 'Legal', 107, 4);
insert into departments values(8, 'Operations', 108, 4);
insert into departments values(9, 'Customer Support', 109, 5);
insert into departments values(10, 'Logistics', 110, 5);
insert into departments values(11, 'Procurement', 111, 6);
insert into departments values(12, 'Quality Assurance', 112, 6);
insert into departments values(13, 'Product Development', 113, 7);
insert into departments values(14, 'Business Development', 114, 7);
insert into departments values(15, 'Public Relations', 115, 8);
insert into departments values(16, 'Compliance', 116, 8);
insert into departments values(17, 'Training & Development', 117, 9);
insert into departments values(18, 'Security', 118, 9);
insert into departments values(19, 'Administration', 119, 10);
insert into departments values(20, 'Strategy', 120, 10);

--select table--
select * from departments;

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--5 employee table--
create table employee_ds(employee_id int primary key,first_name varchar(20) not null,last_name varchar(20) not null,email varchar(20)not null,
phone_number int,unique(phone_number),hire_date date,job_id int,salary float,commisson_pct float,manager_id int,department_id int,foreign key(job_id)
references jobs(job_id),foreign key(department_id)references departments(department_id));

--insert values--
insert into employee_ds values(1, 'John', 'Doe', 'john@example.com', 1234567890, '15-jan-2025', 1, 60000, 0.05, 6,5);
insert into employee_ds values(2, 'Jane', 'Smith', 'smith@example.com', 2345678901, '20-feb-2025', 2, 65000, 0.10, 1,3);
insert into employee_ds values(3, 'Alice', 'Johnson', 'johnson@example.com', 3456789012, '20-march-2015', 3, 70000, 0.15, 2,12);
insert into employee_ds values(4, 'Bob', 'Brown', 'brown@example.com', 4567890123, '4-april-2010', 4, 55000, 0.08, 3,4);
insert into employee_ds values(5, 'Charlie', 'Davis', 'davis@example.com', 5678901234, '7-july-2013', 5, 48000, 0.12, 4,5);
insert into employee_ds values(6, 'David', 'Martinez', 'martinez@example.com', 6789012345, '20-may-2000', 6, 72000, 0.20, 5,6);
insert into employee_ds values(7, 'Eva', 'Garcia', 'garcia@example.com', 7890123456, '30-jan-2015', 7, 50000, 0.10, 6,7);
insert into employee_ds values(8, 'Frank', 'Wilson', 'wilson@example.com', 8901234567, '31-dec-2013', 8, 65000, 0.15, 7,7);
insert into employee_ds values(9, 'Grace', 'Moore', 'moore@example.com', 9012345678, '15-aug-2017', 9, 70000, 0.18, 8,5);
insert into employee_ds values(10, 'Hank', 'Taylor', 'taylor@example.com', 0123456789, '20-april-2001', 10, 60000, 0.05, 9,4);
insert into employee_ds values(11, 'Ivy', 'Anderson', 'anderson@example.com', 1234509876, '20-july-1996', 1, 65000, 0.10, 10,6);
insert into employee_ds values(12, 'Jack', 'Thomas', 'thomas@example.com', 2345610987, '30-sep-1999', 2, 70000, 0.12, 11,5);
insert into employee_ds values(13, 'Kathy', 'Jackson', 'jackson@example.com', 3456721098, '31-dec-2005', 3, 75000, 0.15, 12,6);
insert into employee_ds values(14, 'Leo', 'White', 'white@example.com', 4567832109, '6-feb-2005', 4, 55000, 0.08, 13,12);
insert into employee_ds values(15, 'Mona', 'Harris', 'harris@example.com', 5678943210, '2-jan-2004', 5, 48000, 0.10, 14,13);
insert into employee_ds values(16, 'Nina', 'Clark', 'clark@example.com', 6789054321, '3-march-2017', 6, 72000, 0.18, 15,15);
insert into employee_ds values(17, 'Oscar', 'Lewis', 'lewis@example.com', 7890165432, '4-nov-2021', 7, 50000, 0.12, 16,13);
insert into employee_ds values(18, 'Paul', 'Walker', 'walker@example.com', 8901276543, '2-aug-1972', 8, 65000, 0.15, 17,4);
insert into employee_ds values(19, 'Quincy', 'Allen', 'allen@example.com', 9012387654, '04-jan-2025', 9, 70000, 0.20, 18,17);
insert into employee_ds values(20, 'Rachel', 'Young', 'young@example.com', 0123498765, '30-march-1965', 10, 60000, 0.10, 19,10);

--select table--
select * from employee_ds;

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--6 job table-- 
create table jobs(job_id int primary key,job_tittle varchar(20) not null,min_salary float,max_salary float);

--insert values--

insert into jobs values(1, 'Software Engineer', 50000, 120000);
insert into jobs values(2, 'Data Scientist', 60000, 130000);
insert into jobs values(3, 'Product Manager', 70000, 150000);
insert into jobs values(4, 'Graphic Designer', 40000, 80000);
insert into jobs values(5, 'Marketing Specialist', 45000, 90000);
insert into jobs values(6, 'HR Manager', 55000, 110000);
insert into jobs values(7, 'Sales Executive', 35000, 70000);
insert into jobs values(8, 'Financial Analyst', 60000, 120000);
insert into jobs values(9, 'Operations Manager', 65000, 130000);
insert into jobs values(10, 'Content Writer', 30000, 60000);
insert into jobs values(11, 'SEO Specialist', 40000, 80000);
insert into jobs values(12, 'UX/UI Designer', 50000, 100000);
insert into jobs values(13, 'Business Analyst', 55000, 110000);
insert into jobs values(14, 'Project Coordinator', 45000, 90000);
insert into jobs values(15, 'Quality Assurance', 35000, 70000);
insert into jobs values(16, 'System Administrator', 60000, 120000);
insert into jobs values(17, 'Network Engineer', 55000, 110000);
insert into jobs values(18, 'Database Admins', 65000, 13000);
insert into jobs values(19, 'Security Analyst', 70000, 140000);
insert into jobs values(20, 'Cloud Architect', 80000, 160000);

--select table--
select * from jobs;

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--7 job_history--
create table job_history(employee_id int,start_date date,end_date date,job_id int,department_id int,primary key(employee_id,start_date),foreign key(employee_id)references
employee_ds(employee_id),foreign key(job_id) references jobs(job_id),foreign key(department_id) references departments(department_id));

--insert values--
insert into job_history values(11,'20-jan-2001','31-dec-2025',1,10);
insert into job_history values(12,'20-feb-2002','31-dec-2024',2,4);
insert into job_history values(13,'20-march-2003','31-dec-2023',11,5);
insert into job_history values(14,'20-april-2003','31-dec-2022',11,7);
insert into job_history values(15,'20-june-2004','31-dec-2021',12,12);
insert into job_history values(16,'20-july-2005','31-dec-2020',13,10);
insert into job_history values(17,'20-aug-2006','31-dec-2021',14,17);
insert into job_history values(18,'20-sep-2007','31-dec-2022',15,16);
insert into job_history values(19,'20-oct-2008','31-dec-2023',16,1);
insert into job_history values(11,'20-nov-2009','31-dec-2024',10,1);
insert into job_history values(10,'20-dec-2010','31-dec-2024',2,16);
insert into job_history values(17,'20-jan-2011','31-dec-2023',3,10);
insert into job_history values(16,'20-feb-2012','31-dec-2022',4,10);
insert into job_history values(15,'20-march-2013','31-dec-2019',3,16);
insert into job_history values(14,'20-april-2014','31-dec-2022',3,15);
insert into job_history values(13,'20-may-2015','31-dec-2025',10,14);
insert into job_history values(12,'20-june-2016','31-dec-2023',13,13);
insert into job_history values(11,'20-july-2017','31-dec-2024',14,12);
insert into job_history values(10,'20-aug-2018','31-dec-2022',15,11);
insert into job_history values(19,'20-sep-2019','31-dec-2021',19,10);

--select table--
select * from job_history;

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--select all tables--
select * from regions;
select * from countries;
select * from locations;
select * from departments;
select * from jobs;
select * from employee_ds;
select * from job_history;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Busniss Questions--
--What is each employee's department?
select e1.first_name||' '||last_name as Full_name,d1.department_name from employee_ds e1 join departments d1 on e1.department_id=d1.department_id;

--• Get all the managers and employees who manage it.
select distinct m.employee_id as maneger_id,m.first_name as manager_first_name,e.employee_id as employee_id,e.first_name as employee_name
from employee_ds e join employee_ds m on e.manager_id=m.employee_id;

--• How many employees does each manager manage?
select m.employee_id as maneger_id,m.first_name ,count(e.employee_id) as Total_count from employee_ds m join employee_ds e on 
e.manager_id=m.employee_id group by m.employee_id,m.first_name;

--• How many employees are there in each job title?
select j.job_tittle,count(e.employee_id) as Total_count from jobs j join employee_ds e on j.job_id=e.job_id group by j.job_tittle;

--• Compare employee salaries with the salaries set by the company.
select e.employee_id,e.first_name,e.last_name,salary,j.min_salary,j.max_salary from employee_ds e join jobs j on 
e.job_id=j.job_id;

--• Who are the employees who were promoted?
select  jh.employee_id,e.first_name from job_history jh join employee_ds e on jh.employee_id=e.employee_id
group by jh.employee_id,e.first_name having count( jh.job_id)>1;

--• Get information about the number of employees and salary in each department.
select d.department_name,count(e.employee_id) as total_count ,avg(e.salary) as Avg_Sal,sum(e.salary) as Total_sal
from departments d left join employee_ds e on d.department_id=e.department_id group by d.department_name;

--• How many employees are there in each city and what is their average salary?
select l.cicty,count(e.employee_id) as total_count,avg(e.salary) as avg_sal from locations l join departments d on l.location_id=d.location_id
join employee_ds e on d.department_id=e.department_id group by l.cicty;

--• What is the turnover rate per manager?
