show global variables;
create database online_shopping;
show databases;
use online_shopping;
create table users(user_id int,
					first_name varchar(230),
                    last_name varchar(300),
					email_id varchar(255),
					city varchar(300),
					phone varchar(255));
show tables;                    
describe users;
insert into users values(10,'teju','sasapu','tejusasapu@gmail.com','US','1234566889');
select * from users;
insert into users(user_id,first_name,last_name,email_id, city) values(10,'teju','sasapu','tejusasapu@gmail.com','US');
select * from users;
truncate table users;
describe users;
drop table users;
describe users;
show tables;
show DATABASES;
use online_shopping;
show tables;
create table users(user_id int NOT NULL unique,
					first_name varchar(230) not null,
                    last_name varchar(300),
					email_id varchar(255),
					city varchar(300),
					phone varchar(255) not null);
describe users;
insert into users(user_id,first_name,last_name,email_id, city,phone) values(1,'teju','sasapu','tejusasapu@gmail.com','US',25227528491);
insert into users(user_id,first_name,last_name,email_id, city,phone) values(2,'moksha','chtti','mokshachtti@gmail.com','US',3423256342311);
insert into users(user_id,first_name,last_name,email_id, city,phone) values(3,'ram','gopal','ramgopal@gmail.com','US',1234567923);
select * from users;
insert into users(user_id,first_name,last_name,email_id, city,phone) values(4,'syam','varma','ramgopal@gmail.com','US',12345623);
insert into users values(5,'syam','varma','ramgopal@gmail.com','US',null);
describe users;
insert into users(user_id,first_name,last_name,email_id, city,phone) values(6,'raghu','varma','raghu varma@gmail.com','US',12345623);
select * from users;
drop table users;
show tables;


create table users(user_id int,
					first_name varchar(230) not null,
                    last_name varchar(300),
					email_id varchar(255),
					city varchar(300),
					phone varchar(255) not null,
                    primary key(user_id));
show databases;
use online_shopping;
create table users(user_id int,
					first_name varchar(230) not null,
                    last_name varchar(300),
					email_id varchar(255),
					city varchar(300),
					phone varchar(255) not null,
                    primary key(user_id));

describe users;
select first_name,last_name from users;
use online_shopping;
show tables;
desc users;
alter table users modify column email_id varcharacter(255) unique;
desc users;
select * from users where city ='us';
insert into users(user_id,first_name,last_name,email_id, city,phone) values(1,'teju','sasapu','tejusasapu@gmail.com','US',25227528491);
insert into users(user_id,first_name,last_name,email_id, city,phone) values(2,'moksha','chtti','mokshachtti@gmail.com','US',3423256342311);
insert into users(user_id,first_name,last_name,email_id, city,phone) values(3,'ram','gopal','ramgopal@gmail.com','US',1234567923);
insert into users(user_id,first_name,last_name,email_id, city,phone) values(5,'rahul','panday','rahulpanday@gmail.com','Swish',342325634341);
drop index email_id on users;
desc users;
update users set phone='9381174053' where user_id=1;
select * from users;

create table user_summary 
As select first_name,last_name,city 
from users;

show tables;
desc user_summary;
select * from user_summary;
alter table user_summary add primary key(first_name);
desc user_summary;
drop table user_summary;
alter table users drop column phone;
desc users;
select * from users;
select * from users where city like '%us%';

show databases;
use online_shopping;
create table users(user_id int,
					first_name varchar(230) not null,
                    last_name varchar(300),
					email_id varchar(255),
					city varchar(300),
					phone varchar(255) not null,
                    primary key(user_id));
show tables;
select * from users;
select first_name from users where city not in ('us','uk');
alter table users add phone varchar(255);
insert into users(user_id,first_name,last_name,email_id, city,phone) values(15,'rowdy','rathod','rowdyrathod@gmail.com','canada',1234545433);
desc users;
update users set city='UK' where user_id=2;
update users set phone='9381174053' where user_id=1;


create table gold_users(uid int primary key,end_date date not null,points float);
desc gold_users;
insert into gold_users values(2,'1999-01-16',231);
insert into gold_users values(10,'1990-01-01',254.68);
insert into gold_users values(5,'2000-06-16',189.43);
insert into gold_users values(3,'1999-05-26',100.54);
select * from users;
select * from gold_users;
truncate gold_users;
use online_shopping;
show tables;
select user_id, first_name,last_name 
from users 
where user_id in (select uid from gold_users);
insert into gold_users values(1,'1993-10-01',258.68);
insert into gold_users values(4,'2020-10-12',1439.43);
select * from gold_users 
where uid not in (select user_id from users); 
alter table gold_users add constraint fk_uid foreign key(uid) references users(user_id);

select * from gold_users where end_date between '2000-01-01' and '2020-12-31';
select curdate();
select * from gold_users where end_date<=curdate()
order by end_date,points;
select * from gold_users
order by points desc
limit 1;
select first_name from users
where first_name between 'r%' and 'u%';
select * from users;
use online_shopping;
select * from gold_users;
select u.first_name,u.last_name,u.city,g.points,g.end_date
 from users u join gold_users g 
 on u.user_id=g.uid;

use online_shopping;
create table products(
prod_id int not null unique,
prod_name varchar(255),
brand varchar(255),
price float,
prod_category varchar(255),
primary key(prod_id));
desc products;
show tables;
insert into products values(101,'Sonical M120','Sonical',200,'mobiles');
insert into products values(151,'Sonical L34','Sonical',799,'laptops');
insert into products values(105,'Sonical P03','Sonical',199,'printers');
insert into products values(107,'Fambic M43','Fambic',500,'mobiles');
insert into products values(121,'Fambic M23','Fambic',400,'mobiles');
insert into products values(122,'Fambic T342','Fambic',310,'televisions');
insert into products values(123,'Diallonic M901 ','Diallonic',810,'laptops');
insert into products values(125,'Diallonic T03 ','Diallonic',290,'televisions');
insert into products values(126,'Diallonic T04 ','Diallonic',450,'televisions');
select * from products;
select distinct prod_category 
from products; 
select prod_category,max(price)
from products
group by prod_category
having max(price)!=300;

select brand,round(avg(price),2) as average
from products
group by brand;


select brand,sum(price) as sum,round(avg(price),2) as average
from products
group by brand
having sum(price)>1500 and avg(price)>500;


use hibernate;

show tables;
desc book_table_spring_hib;
use hibernate;
show tables;
desc book_table_spring_hib;
select * from book_table_spring_hib;




create database hospital;
use hospital;
create table patients(name varchar(20),email varchar(20),phone varchar(20),disease varchar(20),username varchar(20),password varchar(20),
cpassword varchar(20));

desc patients;
insert into patients values("teju","teju@mail.com","12345678","headache","teju","moksha","moksha");
select * from patients;






create database bankApp;
show tables;
use bankApp;
show tables;
desc account_table;
desc transactionlog_table;
desc roles;
desc user_table;
select * from account_table;

insert into user_table (address,email,password,phone,username)values("Delhi","t@gmail.com","moksha","8759322","teju");
select * from user_table;

insert into roles(role)values("admin");