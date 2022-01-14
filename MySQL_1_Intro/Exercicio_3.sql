create database escola;
use escola;

create table estudantes(
nome varchar (50) not null,
data_nasc date not null,
nota int not null,
ra varchar (7) not null,
pcd boolean not null);

insert into estudantes values ('Juliana Nolan', '1992-10-01', 10, '3456782', '1');
insert into estudantes values ('Gustavo Borges', '1991-06-11', 09, '4456781', '0');
insert into estudantes values ('Paula Nomuamura', '1995-01-14', 08, '7436381', '0');
insert into estudantes values ('Isabela Watanabe', '1998-06-18', 06, '9456785', '0');
insert into estudantes values ('Karolyne Dias', '1999-10-08', 09, '5656782', '1');
insert into estudantes values ('Guilherme Barros', '1993-09-22', 05, '2256784', '0');
insert into estudantes values ('Kathelyn Felix', '2000-02-28', 09, '6756783', '0');
insert into estudantes values ('Allen Cornelius Rufino', '2002-07-30', 10, '9856781', '1');

select * from estudantes where nota > 7;
select * from estudantes where nota < 7;

update estudantes set nota = '09' where nota = '05'
