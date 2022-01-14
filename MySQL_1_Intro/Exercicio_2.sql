create database ecommerce;
use ecommerce;

create table produtos (
nome_do_produto varchar (30) not null,
tipo varchar (20) not null,
preco double (5,00) not null,
marca varchar (30) not null, 
cor varchar (10) not null);

insert into produtos values ('Sanduicheira Grill', 'Eletrodoméstico', 89.90, 'Cadence', 'Vermelha');
insert into produtos values ('Sanduicheira Grill', 'Eletrodoméstico', 99.90, 'Cadence', 'Preta');
insert into produtos values ('Sanduicheira Grill', 'Eletrodoméstico', 189.90, 'Philco', 'Preta');
insert into produtos values ('Sanduicheira Minigrill', 'Eletrodoméstico', 79.90, 'Cadence', 'Azul');
insert into produtos values ('Sanduicheira', 'Eletrodoméstico', 79.90, 'Britânia', 'Branca');
insert into produtos values ('Multigrill 3 em 1', 'Eletrodoméstico', 459.99, 'Holstein', 'Vermelha');
insert into produtos values ('Sanduicheira Grill', 'Eletrodoméstico', 119.90, 'Philco', 'Rosa');
insert into produtos values ('Sanduicheira de Fogão', 'Eletrodoméstico', 12.99, 'PH Metais', 'Cinza');

select * from produtos where preco > 500.00;
select * from produtos where preco < 500.00;

update produtos set preco = '100' where preco = '90';
