use faculdade;
desc curso;

#tornando coluna DESCRICAO null para poupar tempo modificar depois
alter table curso
modify column descricao varchar(255) null; 

insert into curso(nome, duracao, valor, modalidade) values
('admnistração','4 anos', 50.000,'presencial')
