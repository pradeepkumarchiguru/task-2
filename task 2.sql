create database company
use company 
drop table  employe
create table if not exists employe(
employe_id int primary key auto_increment,
`name` varchar(40),
mobile_no varchar(30) ,
address varchar(50),
`role` varchar(30),
salary int ,
department varchar(50)
)

select * from employe

--- inserting single record 
insert into employe values (104,'Arjun Mehta', 9001234567, 'Pune', 'Molecular Biologist', 60000, 'Biotech')

INSERT INTO employe (name, mobile_no, address, role, salary, department) VALUES
('Divya Nair', 9812345678, 'Kochi, KL', 'SQL Developer', 65000, 'IT'),
('Farhan Shaikh', 9922334455, 'Lucknow, UP', 'System Administrator', 70000, 'Infrastructure'),
('Nikita Joshi', 9876765432, 'Indore, MP', 'Project Coordinator', 58000, 'Operations'),
('Rahul Das', 9000987654, 'Kolkata, WB', 'Data Analyst', 72000, 'Data Science'),
('Sana Khan', 9123456700, 'Ahmedabad, GJ', 'QA Engineer', 55000, 'Testing'),
('Vikram Reddy', 9090909090, 'Visakhapatnam, AP', 'Research Intern', 30000, 'Biotech'),
('Priya Shekhar', 9080706050, 'Nagpur, MH', 'Tech Lead', 80000, 'Development');


select * from employe



-- inserting data from  csv fie 

create table if not exists employe1(
`name` varchar(40),
mobile_no varchar(30) ,
address varchar(50),
`role` varchar(30),
salary int ,
department varchar(50)
)

select * from employe1

load  data infile
'C:\\employe.csv'
into table employe1
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows
 
 select * from employe1
 
 -- null values 

 create table if not exists employe2(
employe_id int primary key auto_increment,
`name` varchar(40) not null,
mobile_no varchar(30) unique ,
address varchar(50) not null,
`role` varchar(30) not null,
salary int ,
department varchar(50) not null
)

insert into employe2(`name`,mobile_no,address, `role`,salary,department) values 
('Arjun Mehta', 737373337, 'Pune, MH', 'Molecular Biologist', null, 'Biotech');


insert into employe2(`name`,mobile_no,address, `role`,salary,department) values 
('Divya Nair', null, 'Kochi, KL', 'SQL Developer', 6, 'IT');

 
 
  create table if not exists employe3(
employe_id int primary key auto_increment,
`name` varchar(40) not null,
mobile_no varchar(30) unique ,
address varchar(50) not null,
`role` varchar(30) not null,
salary int ,
department varchar(50) not null
)

INSERT INTO employe3(name, mobile_no, address, role, salary, department) VALUES
('Divya Nair', 9812345678, 'Kochi, KL', 'SQL Developer', 65000, 'IT'),
('Farhan Shaikh', 9922334455, 'Lucknow, UP', 'System Administrator', 70000, 'Infrastructure'),
('Nikita Joshi', 9876765432, 'Indore, MP', 'Project Coordinator', 58000, 'Operations'),
('Rahul Das', 9000987654, 'Kolkata, WB', 'Data Analyst', 72000, 'Data Science'),
('Sana Khan', 9123456700, 'Ahmedabad, GJ', 'QA Engineer', 55000, 'Testing'),
('Vikram Reddy', 9090909090, 'Visakhapatnam, AP', 'Research Intern', 30000, 'Biotech'),
('Priya Shekhar', 9080706050, 'Nagpur, MH', 'Tech Lead', 80000, 'Development');



select * from employe3
--- update 

update employe3
set salary =10 
where employe_id=1

update employe3
set  mobile_no =null ,`name`='priya'  where employe_id=7

update employe3
set mobile_no not null

UPDATE employe3
SET employe_id = 7
WHERE mobile_no IS NULL; -- Use IS NULL, not = NULL

-- delete 

delete  from   employe3
where employe_id =7

select * from employe3




