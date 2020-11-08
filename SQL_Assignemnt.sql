create table Sailors (
	sid integer not null primary key,
	sname varchar(100) not null,
	rating integer not null,
	age integer not null
);
create table Boats(
	bid integer not null primary key,
	bname varchar(100) not null,
	color varchar(100) not null
);

create table reserves(
	sid integer not null,
	bid  integer not null,
	day date not null,
     Primary key(sid,bid),
    foreign key (sid) references Sailors (sid),
	foreign key (bid) references Boats (bid) 
);
insert into Sailors(sid,sname,rating,age)values(22,"Dustin",7,45.0);
insert into Sailors(sid,sname,rating,age)values(29,"Brutus",1,33.0);
insert into Sailors(sid,sname,rating,age)values(31,"Lubber",9,55);
insert into Sailors(sid,sname,rating,age)values(32,"Andy",8,25.0);
insert into Sailors(sid,sname,rating,age)values(58,"Rusty",10,35);
select * from sailors;

insert into boats(bid,bname,color)values(101,"Interlake","Blue");
insert into boats(bid,bname,color)values(102,"Interlake","Red");
insert into boats(bid,bname,color)values(103,"Clipper","Green");
insert into boats(bid,bname,color)values(104,"Marine","Red");
select * from boats;

insert into reserves(sid,bid,day)values(22,101,'2004-01-01');
insert into reserves(sid,bid,day)values(22,102,'2004-01-01');
insert into reserves(sid,bid,day)values(22,103,'2004-02-01');
insert into reserves(sid,bid,day)values(31,103,'2005-05-05');
insert into reserves(sid,bid,day)values(32,104,'2005-04-07');
select * from reserves;

/*  1.Find the names of sailors who have reserved a red boat   */
select sname from Sailors where sid in (
select sid from reserves where bid in(
select bid from boats where color='Red'
));

/*  2. Find the names of the Sailors who have reserved at least one boat */
select distinct sname from sailors s inner join reserves r on s.sid=r.sid;

/*  3.Compute increments for the ratings of persons who have sailed two different boats on the same day. */
update sailors set rating=rating*2 where sid in (
select distinct(r1.sid) from reserves r1,reserves r2 where r1.day=r2.day and r1.bid<>r2.bid);

/*  4 .Find the ages of sailors whose name begins and ends with B and has at least 3 characters.  */
select age from sailors where sname like 'B%' and '%B';

/*  5.Find the names of sailors who have reserved a red and a green boat.      */
select sname from sailors where sid in(
select sid from reserves where bid in(
select bid from boats where color in("Green","Red")));

/*  6.Find the sids of all sailors who have reserved red boats but not green boats. */
select sid from sailors where sid in(
select sid from reserves where bid in(
select bid from boats where color  not in("Green","Blue")));

/*  7.Find the sailors with the highest rating   */
select * from sailors order by rating desc limit 0,1;
select * from sailors where rating=(select max(rating) from sailors);

/*  8. Find the name of the oldest sailor. */
select sname from sailors where age=(select max(age) from sailors);

/*  9. Count the number of different sailor names.  */
select count(sname),sname from sailors group by sname;

/*  10. Find the no. of sailors who is eligible to vote for each rating level.   */
select sname from sailors where age>=18;

/*  12. Find the sid of the sailors who have sailed exactly one boat.  */
select sid from reserves group by sid having count(sid)=1;

/*  13. Find sailors who have not reserved any boats. */
select sid,sname from sailors where sid not in(
select sid from reserves group by sid having count(sid)>=1);


/*  14. Find the Sailors who have reserved all the boats.  */
select sname from sailors where sid in
(
select sid from reserves group by bid having count(bid)>(select count(bid) from boats)
);

/*  15. Find all the sailors older than Dustin.  */
select sname from sailors where age>(select age from sailors where sname = "Dustin");

/*  16. Find all sailors whose ratings is greater than any others rating without using aggregates like MAX.  */
select sname,rating from sailors order by rating desc limit 0,1;

/*  17. Find the sailors with 3rd highest ratings. */
select sname,rating from sailors order by rating desc limit 2,1;

/*  18. Find sids of the sailors who have reserved all the boats reserved by the sailor with sid =’31’. */
select sname,sid from sailors where sid in(
select sid from reserves where bid in(select bid from reserves where sid =31)
);

/*  19. List out all the sailors. For the sailors who have reserved some boats list out the boat’s bids also.  */
select s.sname,s.sid,r.bid from sailors s join reserves r on s.sid=r.sid;

/*  20. Assume that we have a table called customer.
  */

create table customers(CustId int not null primary key,Name varchar(20) not null,ReferredBy int);
desc customers;
insert into customers(CustId, Name)values (1,"Neeta Sayam");
insert into customers(CustId, Name,ReferredBy)values (2,"Dolly Dilly",1);
insert into customers(CustId, Name,ReferredBy)values (3,"Meena Kimi",2);


/*  21. Find the names of all customers who are referred by others.  */
select * from customers where ReferredBy<>0;

/*  23. Find the last three customer records inserted. (Refer the above Customer table)  */
select * from customers limit 0,3;

/*  24.	Given a table ‘customer’.    How will you get rows between the range x and y where x and y will be entered by the user?
*/
create table customers1(CustId int not null primary key,Name varchar(20) not null,Age int not null);
desc Customers1;


/*  25.	Alter the Sailor table such that age is between 18 and 40.  */
insert into customers1(CustId, Name,Age)values (1,"Neeta Sayam",32);
insert into customers1(CustId, Name,Age)values (2,"Dolly Dilly",23);
insert into customers1(CustId, Name,Age)values (3,"Meena Kimi",43);

select * from customers1 where CustId between 2 and 5;

/*  26. Alter the Boats table such that color is Red, Blue or Green.
  */
update sailors set age=30 where age not between 10 and 40;
select * from sailors;

/*  27  */
update boats set color="Green" where color not in("Green","Blue","Red");

/*  28.Assuming that all the tables are created as in 1, 2 and 3 alter the table (s) such that if a record from sailors table gets deleted, then the records corresponding to the same sailor also get deleted from reserves. 
  */

create table Sailors (
	sid integer not null primary key,
	sname varchar(100) not null,
	rating integer not null,
	age integer not null
);
create table Boats(
	bid integer not null primary key,
	bname varchar(100) not null,
	color varchar(100) not null
);

create table reserves(
	sid integer not null,
	bid  integer not null,
	day date not null,
     Primary key(sid,bid),
    foreign key (sid) references Sailors (sid),
	foreign key (bid) references Boats (bid) 
    on delete cascade
    on update cascade   
);

/* 29.Drop primary key constraint from the reserves table. s*/
alter table reserves drop primary key;

