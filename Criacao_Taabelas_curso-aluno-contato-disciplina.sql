create database faculdade;
use faculdade;

#CRIAÇÃO DE DO BANCO E TABELAS
create database faculdade;
use faculdade;
create table curso(
idCurso int primary key auto_increment not null,
nome varchar(45) not null,
duracao enum('3 meses','2 anos', '4 anos') not null,
valor real not null,
descricao varchar(255)  not null,
modalidade enum('ead','presencial') not null

);

create table curso(
idCurso int primary key auto_increment not null,
nome varchar(45) not null,
duracao enum('3 meses','2 anos', '4 anos') not null,
valor real not null,
descricao varchar(255)  not null,
modalidade enum('ead','presencial') not null

);

#Feito por Rodrigo abaixo


create table categoria(
	id int primary key auto_increment,
	nome varchar(40) not null,
	tipo ENUM('V', 'F') NOT NULL
);


create table material(
	id int primary key auto_increment,
	nome varchar(40) not null,
	idcategoria int not null
	#foreign key(idcategoria) references categoria(id)
);

create table equipamentos(
	id int primary key auto_increment,
	nome varchar(40) not null,
	idcategoria int not null
	#foreign key(idcategoria) references categoria(id)
);



