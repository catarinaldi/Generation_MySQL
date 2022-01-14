create database rh;
use rh;

create table funcionarios (
nome varchar (40) not null,
cpf varchar (11) not null,
idade int (2) not null,
funcao varchar (30) not null,
salario double (20,00) not null);

insert into funcionarios values ('Ana Carolina Teixeira', '43213278723', 23, 'faxineira', 5000.00);
insert into funcionarios values ('Gustavo Motta da Silva', '32413278732', 24, 'cozinheiro', 6000.00);
insert into funcionarios values ('Isabela Carolina Santos', '45218978753', 26, 'cantora', 8000.00);
insert into funcionarios values ('Rafaela Dias Ferreira', '33415289234', 28, 'camareira', 5000.00);
insert into funcionarios values ('Alex Montenegro', '34314548747', 22, 'cantorie', 8000.00);

select * from funcionarios where salario > 2000.00;
select * from funcionarios where salario < 2000.00;

update funcionarios set idade = '21' where idade = '23';

