use 4119db;
#Create the table CUSTOMER.
create table customer(Cust_id varchar(10),Fname varchar(15),Lname varchar(15),Area char(2),Phone int(10),Payment double(6,2));

#Display the structure of the table you have created.
select * from customer;

#Insert the values in table
insert into customer values
('A01','Ivan','Ross','SA',6125467,800.50),
('A02','Vandana','Ray','MU', 5560379,  1000.75),
('A03' ,'Pramada' ,'Jauguste' ,'DA' ,4560389  ,500.00),
('A04','Basu','Navindi','BA',6125401,860.00),
('A05' ,'Ravi' ,'Shridhar' ,'NA' ,null  ,500.50),
('A06','Rukmini','Aiyer','GH',5125274,1500.50);

#Display the data of the created table.
select * from customer;

alter table customer add DOB date after phone;
update customer set DOB="86-1-15" where Cust_id='A01';
update customer set DOB="87-12-20" where Cust_id='A02';
update customer set DOB="1967-7-25" where Cust_id='A03';
update customer set DOB="1956-2-28" where Cust_id='A04';
update customer set DOB="89-2-15" where Cust_id='A05';
update customer set DOB="87-7-23" where Cust_id='A06';

#Insert a row which will accept system date.
alter table customer add System_date date after DOB;
update customer set System_date=curdate()  where Cust_id='A01';
update customer set System_date=curdate() where Cust_id='A02';
update customer set System_date=curdate() where Cust_id='A03';
update customer set System_date=curdate() where Cust_id='A04';
update customer set System_date=curdate() where Cust_id='A05';
update customer set System_date=curdate() where Cust_id='A06';

# Update the phone numbers of customer A02 and A04.
update customer set phone=123456789 where Cust_id='A02';
update customer set phone=987654321 where Cust_id='A04';

#Update the date of birth of customer A03 and A05.
update customer set DOB="98-9-16" where cust_id='A03';
update customer set DOB="98-11-15" where cust_id='A05';

#Display the updated table.
select * from customer;

#Delete 2 rows from the table for customers A01 and A05
delete from customer where cust_id='A01';
delete from customer where cust_id='A05';

#Delete all the rows from the table.
drop table customer;

#create table
create table customer(Cust_id int(10) not null,name varchar(15),Area varchar(20),Phone
bigint(11),Payment double(6,2));
 
#Insert 5 records according to your own wish.
insert into customer values
(101,'Hemant','Faridabad',1234895,1300.50),
(102,'Ritu','Ghaziabad', 123456,1100.75),
(103,'Aryan','Luchnow',7654321,1250.30),
(104,'Pallabi','Kolkata',98765432,1860.38),
(105,'Megha','UP',1234567,1500.45);


#Update one record based on any criteria according to your own wish.
update customer set payment=1600.50 where cust_id=101;

#Delete any 1 record from the table based on particular criteria
delete from customer where name='Hemant';

