drop database if exists firmajp24;
create database firmajp24;
use firmajp24;

create table projekt (
	sifra int not null primary key auto_increment,
	naziv varchar(20) not null,
	cijena decimal(18,2) not null
);

create table programer (
	sifra int not null primary key auto_increment,
	ime varchar(20) not null,
	prezime varchar(20) not null,
	datumRodjenja datetime,
	placa decimal(18,2)
);

create table sudjeluje (
	projekt int not null,
	programer int,
	datumPocetka datetime not null,
	datumKraja datetime not null
);


