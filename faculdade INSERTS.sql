use faculdade;
desc aluno;

#tornando coluna DESCRICAO null para poupar tempo modificar depois
alter table curso

modify column descricao varchar(255) null; 

select * from curso;

#inserts curso

#inserts de Erick 
insert into curso(nome, duracao, valor, modalidade) values
('Admnistração','4 anos', 50.000,'presencial');

insert into curso(nome, duracao, valor, modalidade) values
('Tecnico informatica','2 anos', 10.000,'ead');

insert into curso(nome, duracao, valor, modalidade) values
('Publicidade','4 anos', 35.000,'presencial');

insert into curso(nome, duracao, valor, modalidade) values
('Aprendendo Python','3 meses', 50.000,'ead');

insert into curso(nome, duracao, valor, modalidade) values
('Tecnico publicidade','2 anos', 13.000,'presencial');

desc professor;

insert into professor(nome, salario) values 
('Joelson', 'R$3.000'),
('Katia', 'R$3.500'),
('Dejair', 'R$2.789'),
('Bianca', 'R$10.000'),
('Alexandre', 'R$5.798');


insert into aluno(nome, cpf, data_nasc, data_entrada) values
('Paulo',123456789, 1994-04-11, 2023-04-11),
('Joao',567891234,  1987-01-30, 2021-03-02),
('Fabiane',489139898,  1992-08-27, 1999-05-21),
('Rogerio',798416517,  1995-09-15, 2004-12-01),
('Suelen',354689162,  1989-05-09, 2008-07-14)
;
select * from contato;

desc contato;

insert into contato(ddd,numero,email,idAluno) values 
('51','99999999','paulopauloso@hotmail.com', 1),
('51','98888888','jfernandes@gmail.com', 2),
('51','97777777','fabimanicure@gmail.com', 3),
('52','98989898','rogerinhodelas@bol.com.br', 4),
('51','91234567','suelenfreitas@gmail.com', 5);



select * from contato;
select * from professor;
desc contato;

insert into contato(ddd,numero,email,idProf) values 
('51','7777789', 'dejairpinto@gmail.com', 3 );

insert into disciplina(nome, duracao,modalidade) values 
('Ingles', '3 meses','presencial'),
('Teoria da Comunicação', '6 meses','presencial'),
('Português', '6 meses','ead'),
('Algoritmos', '1 mes','ead'),
('Informática Básica', '1 mes','presencial');



#Inserts de Rodrigo
insert into material (nome,categoria)  values 
('Livro de Cálculo 1','Virtual'),
('Livro de Cálculo 1','Físico'),
('Livro de Cálculo 2','Virtual'),
('Livro de Cálculo 2','Físico'),
('Livro de Inglês ','Virtual'),
('Livro de Inglês ','Físico'),
('Livro de Português ','Virtual'),
('Livro de Português ','Físico'),
('Manual de Informática Básica', 'Físico');

insert into equipamentos (id,nome)  values 
(null,'Lousa'),
(null,'Mesa'),
(null,'Cadeira'),
(null,'Projetor'),
(null,'Computador'),
(null,'Teclado'),
(null,'Mouse');

select * from sala;

insert into sala (capacidade, andar, tipo) values
(15, 'Primeiro', 'Normal'),
(15, 'Primeiro', 'Laboratório'),
('20', 'Primeiro', 'Normal'),
('25', 'Primeiro', 'Normal'),
('15', 'Segundo', 'Laboratório'),
('20', 'Segundo', 'Laboratório'),
('20', 'Segundo', 'Normal'),
('25', 'Segundo', 'Normal'),
('25', 'Terceiro', 'Normal'),
('30', 'Terceiro', 'Laboratório'),
('35', 'Terceiro', 'Normal'),
('40', 'Terceiro', 'Normal');


