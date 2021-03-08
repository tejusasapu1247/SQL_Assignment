create table Customer(custId int not null,name varchar(30) not null, phone numeric not null,email varchar(30) not null
,birthDate date not null,address varchar(30) not null,purchaseCapacity numeric not null);
 desc Customer;
 use hcl_batch5;
 insert into Customer(custId,name,phone,email,birthDate,address,purchaseCapacity)values(1, "teju", 1234567892, "teju@gmail.com","2020-11-16", "ooty", 245);
 
 update Customer set birthDate=2020-11-16;
 select * from Customer;
 delete from Customer where name="teju";