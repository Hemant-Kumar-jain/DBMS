SELECT * FROM 4119db.student;
create table Java(id int,name varchar(20),fees int);
#insert values in the table
insert into Java values(1,'Hemant',1500);
insert into Java values(2,'Ritu',1000);
#Drop command is used to delete/remove the database/table
drop table JavaStudent;
drop table Java;
#ALTER command is used to change/modify the existing structure of the database/table
ALTER table student add email varchar(20);
ALTER table student drop Stu_age;
ALTER table student modify Stu_name varchar(30);
#create a new table
create table JavaStudent(id int primary key auto_increment,name varchar(20) not null,
phone varchar(11) not null unique,email varchar(30) not null unique, ad varchar(50),qualification varchar(10) not null);
#insert values
insert into JavaStudent values(1,'Hemant','9717024357','abc@gmail.com','Haryana','MCA');
insert into JavaStudent values(2,'Ritu','4568457854','abcd@gmail.com','UP','BCA');
#add new column
alter table javaStudent add age int after name;
#modify datatype size
alter table javaStudent modify qualification varchar(20) not null;
#drop column from javastudent table
alter table javaStudent drop column phone;
#change column name
alter table javaStudent rename to student_details;
#insert single row
insert into student_details values(3,'Aman',25,'aman@gmail.com','Haryana','MCA');
#delete all the rows from the table
truncate table student_details;
#delete both (structure & record)
drop table student_details;

#DDL (CREATE,ALTER,DROP,TRUNCATE)
use 4119db;
#create table table_name;
create table JavaStudent(id int primary key,name varchar(20) not null,
phone bigint(11)not null unique,
email varchar(30) not null unique,
address varchar(50), qualification varchar(10) not null,
dept varchar(20));
#insert multiple rows
insert into JavaStudent values
#insert the value
(1,'RANOJOY',831122288,'ran@gmail.com','chennai','MCA','IT'),
(2,'DEBKANTA',822822288,'dev@gmail.com','kolkata','BE','IT'),
(3,'ARNAB',834332288,'ganesh@gmail.com','delhi','B Tech','CIVIL'),
(4,'PUJA',834772288,'puja@gmail.com','pune','MCA','IT'),
(5,'AVIJIT',834888288,'avi@gmail.com','mumbai','BE','ELECTRICAL'),
(6,'AKASH',834992288,'akash@gmail.com','goa','B Tech','MECHANICAL');
# add new column
alter table JavaStudent add sage int after name;
#modify datatype size
alter table JavaStudent modify qualification varchar(20) not null;
#modify constraint
alter table javaStudent modify phone int not null;
#drop column
alter table javaStudent drop column dept;
#change column name
alter table javaStudent change column sage age int;
#rename table name
alter table javaStudent rename to student_details;
#insert single row
insert into student_details values(7,'Hemant',24,256428,'abcd@gmail.com','Haryana','MCA');

#DML --- INSERT, UPDATE, DELETE
update student_details set age=20 where id=1;
update student_details set age=23 where id=2;
update student_details set age=24 where id=3;
update student_details set age=27 where id=4;
update student_details set age=22 where id=5;
update student_details set age=25 where id=6;
update student_details set age=25 where id=7;
alter table student_details add fees double after qualification;
update student_details set fees=1000.50 where id=1;
update student_details set fees=1000.50 where id=2;
update student_details set fees=1000.50 where id=3;
update student_details set fees=1000.50 where id=4;
update student_details set fees=1000.50 where id=5;
update student_details set fees=1000.50 where id=6;
update student_details set fees=1000.50 where id=7;
update student_details set qualification='BCA' where name='ARNAB';
update student_details set fees=2000.50;
update student_details set address='mumbai' where name='puja';
#delete any specific row
delete from student_details where name='Hemant';
#delete any specific column
alter table student_details drop column fees;

# Select
select * from student_details where name='ARNAB';
#AND ( both the condition should true)
select * from student_details where address = 'Kolkata' and qualification = 'BE';
#or(any one condition should true)
select * from student_details where address = 'Mumbai' or qualification='BE';
#not
select * from student_details where qualification !='BE';
#in
select * from student_details where address in('mumbai','goa');
#starts with
select * from student_details where name like 'A%';
#ends with 
select * from student_details where name like '%T';
#in between
select * from student_details where name like '%I%';
#start & ends with
select * from student_details where name like 'A%T';
#missing letter
select * from student_details where address like'g_a';
select * from student_details where name like 'A_n_b';
#query with Select
select id,name,phone,address from student_details;
select * from student_details where id=5;
select * from student_details where name = 'BIDISHA';
#distinct
select distinct name from student_details;

#alter
alter table student_details add comm_pct int after fees;
update student_details set comm_pct=20 where id=1;
update student_details set comm_pct=15 where id=2;
update student_details set comm_pct=10 where id=3;
update student_details set comm_pct=15 where id=4;
update student_details set comm_pct=25 where id=5;
update student_details set comm_pct=35 where id=6;
update student_details set comm_pct=45 where id=7;

#as
select name,address,fees,fees+300 as 'increased_fees' from student_details;
select name,fees,fees+comm_pct+100 as 'annual_compensation_fees' from student_details;
select comm_pct from student_details;
update student_details set fees=3000.50 where id=2;
update student_details set fees=3300.50 where id=3;
update student_details set fees=5200.50 where id=5;
update student_details set fees=2500.50 where id=7;
update student_details set fees=4500.50 where id=1;

#greater than
select id,fees from student_details where fees>4000;

#between
select name,fees from student_details where fees between 2000 and 3000;
select * from student_details where fees=4500.50 or fees=2000.50 or fees=3300.5;
select * from student_details where id=1 or id=5 or id=3;

#not equal
select * from student_details where fees!=2000.5;
select * from student_details where name='Arnab';
update student_details set id=11 where fees>4500.5;
select name,id from student_details where fees>3300.5 and address='chennai';

#delete all rows
truncate student_details;

#delete whole table
drop table student_details;

