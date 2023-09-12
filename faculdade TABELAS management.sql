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
# modificando modalidade da tabela curso adcionando variavel 'hibrido'

alter table curso
modify modalidade enum('ead','presencial', 'hibrido') not null
;


#reinserindo codigo que foi apagado
	
create table aluno(
idAluno int primary key auto_increment not null,
nome varchar(45) not null,
cpf varchar(11) not null unique,
data_nasc date not null,
data_entrada date not null,
data_saida date null
);

create table contato(
idTelefone int primary key auto_increment not null,
ddd varchar(2) not null,
numero varchar(9) not null,
email varchar(50)  null
);

# adicionada foreign key referenciando tabela aluno

alter table contato
add column idAluno int  null,
add column idProf int  null,
add FOREIGN KEY (idAluno) REFERENCES aluno(idAluno);
;
create table disciplina(
idDisciplina int primary key auto_increment not null,
nome varchar(45) not null,
duracao enum('3 meses','2 anos', '4 anos') not null,
descricao varchar(255)  not null,
modalidade enum('ead','presencial') not null
);

/*
modificação da descrição da tabela disciplina para facilitar a inserção de dados
modificação duração da tabela disciplina para ficar mais coerente
*/

alter table disciplina
modify descricao varchar(255)  null,
modify duracao enum('1 mes','3 meses', '6 meses') not null
;


#Feito por Rodrigo abaixo


create table categoria(
	id int primary key auto_increment,
	nome varchar(40) not null,
	tipo ENUM('V', 'F') NOT NULL
);

/* Tabela antiga de material
create table material(
	id int primary key auto_increment,
	nome varchar(40) not null,
	idcategoria int not null
	#foreign key(idcategoria) references categoria(id)
);
*/
drop table material;

/*tabela antiga de equipamentos
create table equipamentos(
	id int primary key auto_increment,
	nome varchar(40) not null,
	idcategoria int not null
	#foreign key(idcategoria) references categoria(id)
);*/
drop table equipamentos;
create table equipamentos(
	id int primary key auto_increment,
	nome varchar(40) not null
);

create table material(
	id int primary key auto_increment,
	nome varchar(40) not null,
    categoria enum('Virtual','Físico') not null
);

#Feito por Gabriel abaixo

create table sala(
	id int primary key auto_increment,
	capacidade varchar(40) not null,
    andar varchar(40) not null,
	tipo ENUM('normal', 'laboratório') NOT NULL
);

alter table sala
modify capacidade int4 not null;

create table professor(
	id int primary key auto_increment,
	nome varchar(40) not null,
	cpf varchar(40) not null,
    telefone varchar(40) not null,
    email varchar(40) not null,
    salario varchar(40) not null,
    contato_IdTelefone int not null
);

# Remoção das colunas relacionadas redundantes com a tabela contato
alter table professor
drop column cpf,
drop column telefone,
drop column email;

# Drop da coluna contato_id da tabela professor
alter table professor
drop column contato_IdTelefone;


show tables;

#Remoção da tabela categoria para inseri-la como coluna
drop table categoria;









