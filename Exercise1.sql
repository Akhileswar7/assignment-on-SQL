create database consultation;
create table Doctor(
doctor_id int primary key,
doctor_name varchar(30),
spacification varchar(30));

create table Appointments(
doctor_id int,
patient_id int,
appointment_date date,
foreign key (doctor_id)  references Doctor(doctor_id),
foreign key (patient_id) references Patient(patient_id));

create table Patient(
patient_id int primary key,
patient_name varchar(30),
patient_age int,
gender char(20));

create table reviews(
doctor_id int,
patient_id int,
rating int,
review varchar(30), 
foreign key (doctor_id)  references Doctor(doctor_id),
foreign key (patient_id) references Patient(patient_id));






