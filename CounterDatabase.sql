show databases;
use hcl_batch5;
show tables;
create table counter(counter int);
desc counterdb;
select * from counterdb;
create table customer_Servlets(id int not null primary key auto_increment, name varchar(50) not null, address varchar(100) not null, email varchar(50) not null, phone varchar(12) not null, dob date not null, purchage_capacity double not null);
insert into customer_Servlets(name,address,email,phone,dob,purchage_capacity)values("teju","ooty","teju@gmail.com",12346342,'2000-1-1',210000);
select * from customer_Servlets;
insert into customer_Servlets(name,address,email,phone,dob,purchage_capacity)values("moksha","kerala","moksha@gmail.com",99234342,'2000-10-1',2300000);

insert into customer_Servlets(name,address,email,phone,dob,purchage_capacity)values("megha","Simla","megha@gmail.com",12346342,'2009-7-10',420000000);

