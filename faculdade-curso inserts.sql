use faculdade;
desc aluno;

#tornando coluna DESCRICAO null para poupar tempo modificar depois
alter table curso

modify column descricao varchar(255) null; 

select * from curso;

#inserts curso

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

#inserts aluno

insert into aluno(nome, cpf, data_nasc, data_entrada) values
('Paulo',123456789, 1994-04-11, 2023-04-11),
('Joao',567891234,  1987-01-30, 2021-03-02),
('Fabiane',489139898,  1992-08-27, 1999-05-21),
('Rogerio',798416517,  1995-09-15, 2004-12-01),
('Suelen',354689162,  1989-05-09, 2008-07-14)
;
select * from contato;

desc curso;

insert into contato(nome,duracao,modalidade) values 
('51','99999999','paulopauloso@hotmail.com', 1),
('51','98888888','jfernandes@gmail.com', 2),
('51','97777777','fabimanicure@gmail.com', 3),
('52','98989898','rogerinhodelas@bol.com.br', 4),
('51','91234567','suelenfreitas@gmail.com', 5);

insert into disciplina(nome, duracao,modalidade) values 
('ingles', '3 meses','

