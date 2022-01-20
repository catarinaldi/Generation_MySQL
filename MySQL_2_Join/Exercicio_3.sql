create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
	id_categoria int auto_increment primary key,
    nome varchar (40),
    categoria varchar (40),
    preco int
    );
    
create table tb_produto(
	id_produto int auto_increment primary key,
	comprimido_liquido varchar (40),
	quantidade int,
	mg_g_udd varchar (40),
	testado_animais varchar (40),
	tarja varchar (40),
	fk_categoria int,
	FOREIGN KEY (fk_categoria) references tb_categoria (id_categoria)
);

insert into tb_categoria (nome, categoria, preco)
values
	("Amitriptilina", "Antidepressivo", 38.00),
	("Clomipramina", "Antidepressivo", 12.00),
	("Diazepam", "Ansiolítico", 16.00),
	("Lorazepam", "Ansiolítico", 10.00),
	("Pó Compacto", "Cosmético", 80.00);

insert into tb_produto (comprimido_liquido, quantidade,	mg_g_udd, testado_animais, tarja, fk_categoria)
values
	("Comprimido", 20, "Comprimidos", "Não", "Preta", 1),
	("Líquido", 30, "Microgramas", "Sim", "Vermelha", 2),
	("Comprimido", 20, "Comprimidos", "Sim", "Branca", 1),
	("Comprimido", 24, "Comprimidos", "Não", "Preta", 2),
	("Líquido", 30, "Miligramas", "Não", "Branca", 3),
	("Comprimido", 30, "Comprimidos", "Não", "Preta", 4),
	("Comprimido", 10, "Comprimidos", "Não", "Vermelha", 2),
	("Não se aplica", 30, "Gramas", "Não", "Não se aplica", 5);

select * from tb_categoria where preco > 50;
select * from tb_categoria where preco between 3 and 60;
select * from tb_categoria where nome like "%B%";

select
	tb_categoria.nome as Nome,
	tb_categoria.categoria as Categoria,
    tb_produto.quantidade as Quantidade,
	tb_produto.mg_g_udd as Unidade,
	tb_produto.tarja as Tarja
from tb_categoria
inner join tb_produto
on tb_categoria.id_categoria = tb_produto.fk_categoria
where  tarja = "Preta";