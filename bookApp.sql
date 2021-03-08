create table books(id int not null auto_increment primary key, isbn varchar(30) not null, title varchar(50) not null, author varchar(50) not null, pubDate date not null, price double not null, unique key(isbn));
show databases;
use hcl_batch5;
show tables;
drop table books;
desc books;
insert into books(isbn, title, author, pubDate, price) values('AZ123','java basics','amit','2011-11-12', 500);
insert into books(isbn, title, author, pubDate, price) values('AX33','rich data poor dad','foo','2011-11-12', 200);
select * from book_table;
delete from books where id=16;
desc customer_table;
desc book_table_more_anno;
select * from customer_table;
drop table customer_table;

desc users;



create table users(id int not null auto_increment primary key, username varchar(50) not null, password varchar(50) not null, profile varchar(50) not null);
insert into users (username,password,profile)values("teju","moksha47","developer");
select * from users;
desc books;
insert into users (username,password,profile)values("mohith","rowdy","user");




desc customer_table2;
desc cutomerdetail_table_3;
select * from cutomerdetail_table_3;
select * from customer_table2;

desc  e_table_one2one_uni;

desc  p_table_one2one_uni;

select * from  e_table_one2one_bi;
select * from  p_table_one2one_bi;
drop  table p_table_one2one_uni;
drop table p_table_one2one_bi;


desc school;
select * from school;

show tables;
show databases;
create database hibernate;

use hibernate;
show tables;

use hcl_batch5; 
desc e_table_one2one_bi;
desc p_table_one2one_bi;

select * from  e_table_one2one_bi;
select * from  p_table_one2one_bi;
drop table p_table_one2one_bi;
drop database hibernate;
create database hibernate;
use hibernate;
show tables;

select * from  e_table_one2many_uni;
select * from  d_table_one2many_uni;
drop table d_table_one2many_uni;