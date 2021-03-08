show databases;
use hcl_batch5;
desc emp;
desc dept;
alter table emp change column Emp_name name VarChar(30);
select *
 from emp;
select max(salary), desi,name from emp group by desi having count(salary)>1;
insert into dept(dname)values ('teju');
insert into dept(dname)values ('moksha');
insert into dept(dname)values ('Asha');
insert into dept(dname)values ('Amit');

delete dname from  dept;
create table sm2(id int not null primary key, name varchar(20) not null,salary int not null, dept varchar(30) not null);
insert into sm2(id,name,salary,dept)values(1,'Amit',20,'rajam');
insert into sm2(id,name,salary,dept)values(12,'Akash',30,'Chennai');

insert into sm2(id,name,salary,dept)values(134,'Srinu',40,'Sales');
insert into sm2(id,name,salary,dept)values(15,'Santhu',32,'SE');
insert into sm2(id,name,salary,dept)values(17,'Sandy',50,'SE');
select * from sm2;
insert into sm2(id,name,salary,dept)values(13,'Sandy',100,'Sales');
select sm1.name,sm2.name from sm sm1 ,sm sm2 where sm1.city=sm2.city and sm1.id<>sm2.id;


create table sm(id int not null primary key, name varchar(20) not null,city varchar(30) not null);
insert into sm(id,name,city)values(1,'Amit','rajam');
insert into sm(id,name,city)values(12,'Akash','Chennai');

insert into sm(id,name,city)values(134,'Srinu','ooty');
insert into sm(id,name,city)values(15,'Santhu','Delhi');
insert into sm(id,name,city)values(17,'Sandy','Delhi');
select * from sm2;
insert into sm(id,name,city)values(13,'Sandy','Delhi');
select max(salary) from sm2;
select max(salary) from sm2 where salary not in (select max(salary) from sm2);
desc sm2;
select id,name,salary from sm2;
select id,salary from sm2 s where 2=(select count(distinct salary) from sm2 s1 where s1.salry>s.salary);
select salary from sm2 order by salary desc limit 3,1;

select name,max(salary) from sm2 order by dept;
select salary from sm2 where salary=(select max(salary) from sm2);
select name,salary from sm2 where salary=(select max(salary) from sm2);
select count(*),dept from sm2 group by dept having count(*)>2;
select name,max(salary) from sm2;
select name,salary from sm2 where salary=(select max(salary) from sm2);
delimiter //
  create procedure count_emp(out p1 int)
  select count(*) into p1 from sm2;
  //
  delimiter ;
  call count_emp();
create table account(id int not null primary key, name varchar(20) not null,balance int not null);
insert into account values(1,'ekta',1000);
insert into account values(2,'teju',2000);
select * from account;
create table calculator(id int not null primary key, name varchar(20) not null,balance int not null);
show tables;
desc employee;
select * from Employee;
create table Books(id int not null primary key, name varchar(20) not null,balance int not null);

 create table books(id int not null primary key auto_increment, isbn varchar(50) not null, title varchar(100) not null, author varchar(50) not null, pubDate date not null, price double not null, unique key(isbn));
desc books;
insert into books(isbn,title,aythor,pubDate,price)values('122A','java','guptha',);


insert into books(isbn, title, author, pubDate, price) values ('232A','java basics','raj','2019-11-20',600.5);
 

insert into books(isbn, title, author, pubDate, price) values ('232A','java basics','raj','2019-11-20',600.5);
 select *from emp;
 insert into books(isbn, title, author, pubDate, price) values ('232B','Python basics','tony','2019-11-21',660.5);







