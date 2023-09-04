create database faculdade;
use faculdade;

#CRIAÇÃO DE DO BANCO E TABELAS
create table curso(
idCurso int primary key auto_increment not null,
nome varchar(45) not null,
duracao enum('3 meses','2 anos', '4 anos') not null,
valor real not null,
descricao varchar(255)  not null,
modalidade enum('ead','presencial') not null
);

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

create table disciplina(
idDisciplina int primary key auto_increment not null,
nome varchar(45) not null,
duracao enum('3 meses','2 anos', '4 anos') not null,
descricao varchar(255)  not null,
modalidade enum('ead','presencial') not null
);