show databases;
use hcl_batch5;
show tables;
select * from account;








create table book_db(id int not null auto_increment primary key, isbn varchar(30) not null, title varchar(50) not null, author varchar(50) not null,price double not null);
desc book_db;
insert into book_db(isbn, title, author,price) values('AZ123','java basics','amit',200);
insert into book_db(isbn, title, author,price) values('AX33','rich data poor dad','foo',200);
select * from book_db;
insert into book_db(isbn, title, author,price) values('BX43','Spring','Moksha',4000);
