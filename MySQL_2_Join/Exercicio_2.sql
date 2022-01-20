create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
	id int auto_increment primary key,
    formato varchar (30),
    tradicional_integral varchar (30),
    doce_salgada varchar (30)
    );
    
create table tb_pizza(
	id_pizza int auto_increment primary key,
	tamanho varchar (30),
	vegana varchar (30),
	borda varchar (30),
	sabores varchar (30),
	preco double,
	fk_categoria int,
	FOREIGN KEY (fk_categoria) references tb_categoria (id)
);

insert into tb_categoria (formato, tradicional_integral, doce_salgada)
values
	("Redonda", "Tradicional", "Salgada"),
	("Redonda", "Integral", "Doce"),
	("Redonda", "Tradicional", "Salgada"),
	("Quadrada", "Integral", "Doce"),
	("Quadrada", "Tradicional", "Salgada");

insert into tb_pizza (tamanho, vegana, borda, sabores, preco, fk_categoria)
values
	("Broto", "Vegana", "Borda catupiry", "Marguerita", 40.00, 1),
	("Broto", "Vegetariana", "Borda cheddar", "Cheddar", 50.00, 1),
	("Tradicional", "Não-vegana", "Borda mussarela", "Aliche", 60.00, 1),
	("Broto", "Vegana", "Borda catupiry", "Carne de soja com barbecue", 70.00, 3),
	("Broto", "Vegetariana", "Borda chocolate", "Quatro queijos", 18.00, 3),
	("Broto", "Vegana", "Sem borda", "Vegetais", 20.00, 5),
	("Broto", "Não-vegana", "Sem borda catupiry", "Chocolate com morango", 22.00, 2),
	("Broto", "Não-vegana", "Borda cheddar", "Portuguesa", 66.00, 5);

select * from tb_pizza where preco > 45;
select * from tb_pizza where preco between 29 and 60;
select * from tb_pizza where sabores like "%C%";

select
	tb_categoria.doce_salgada as Tipo,
	tb_pizza.tamanho as Tamanho,
	tb_pizza.vegana as Vegana,
	tb_pizza.borda as Borda,
	tb_pizza.sabores as Sabor,
	tb_pizza.preco as `Preço (R$)`
from tb_categoria
inner join tb_pizza
on tb_categoria.id = tb_pizza.fk_categoria
where doce_salgada = "doce";