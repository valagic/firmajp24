drop database if exists firmajp24;
create database firmajp24;
use firmajp24;

create table projekt (
	id int not null primary key auto_increment,
	naziv varchar(20) not null,
	cijena decimal(18,2) not null
);

