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



