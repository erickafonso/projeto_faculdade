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
('Tecnico publicidade','2 anos', 13.000,'presencial')

#inserts aluno

insert into aluno(nome, cpf, data_nasc, data_entrada) values
('Paulo',123456789, 50.000,'presencial');
