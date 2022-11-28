create database employee;
use employee;

 create table employee_detail
 (
 Eid int primary key,
 Ename varchar(255) not null,
 DOJ DATE not null,
 YOE int not null,
 Designation varchar(255) not null
 );