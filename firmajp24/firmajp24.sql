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
	datumRodjenja datetime not null,
	placa decimal(18,2)
);

create table sudjeluje (
	projekt int not null,
	programer int not null,
	datumPocetka datetime not null,
	datumKraja datetime not null
);

alter table sudjeluje add foreign key(projekt) references projekt(sifra);
alter table sudjeluje add foreign key(programer) references programer(sifra);

insert into projekt(naziv,cijena) values
('Novi projekt',2500.00);

insert into programer(ime,prezime,datumRodjenja,placa) values
('Vedran','Alagić','1988-09-09',6500.00);

insert into sudjeluje(projekt,programer,datumPocetka,datumKraja) values
(1,1,'2021-05-05','2021-07-07');

select * from projekt;
select * from programer;
select * from sudjeluje;
