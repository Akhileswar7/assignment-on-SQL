create database assignment;
create table contact(id int,
Email varchar(30),
fname char(30),
lname char(30),
company char(30),
Active_flag int,
opt_out int);
select * from contact;
insert into contact values(123,"a@a.com","Kian","Seth","ABC",1,1),
(133,"b@a.com","Neha","Seth","ABC",1,0),
(234,"c@c.com","Puru","Malik","CDF",0,0),
(342,"d@d.com","Sid","Maan","TEG",1,0);
-- --------------------------------------------
-- 1
select * from contact where Active_flag=1;
-- 2
update contact set Active_flag=0 where opt_out=1;
-- 3
delete from contact where company="ABC";
-- 4
insert into contact(id,fname,email,company,Active_flag,opt_out) values(658,"mili","mili@gmail.com","DGH",1,1);
-- 5
select distinct(company) from contact;
-- 6
update contact set fname="niti" where fname="mili";
-- -----------------------------------------------