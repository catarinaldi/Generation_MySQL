create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe (
	id_classe int auto_increment primary key,
	tipo varchar (40),
	console varchar (40),
	idade int
);

create table tb_personagem (
	id_personagem int auto_increment primary key,
	nome varchar (40),
	poder_ataque varchar (40),
	poder_defesa varchar (40),
	classe_personagem varchar (40),
    raca_personagem varchar (40),
	fk_classe int,
	FOREIGN KEY (fk_classe) references tb_classe (id_classe)
);

insert into tb_classe (tipo, console, idade)
values
	("Aventura", "PS4", 14),
    ("Ação", "PS2", 16),
    ("RPG", "PS4", 18),
    ("Luta", "Nintendo 64", 12),
    ("Esporte", "PS3", 10);
    
insert into tb_personagem (nome, poder_ataque, poder_defesa, classe_personagem, raca_personagem)
values
	("Claudemir", "10", "5", "Arqueiro", "Anão"),
    ("Claudette", "12", "7", "Guerreira", "Elfa"),
    ("Carol", "10", "4", "Maga", "Halfling"),
    ("Denis", "4", "5", "Ladino", "Humano"),
    ("Felix", "5", "8", "Clérigo", "Gnomo"),
    ("Alex", "6", "9", "Paladina", "Humana"),
    ("Serafine", "7", "3", "Druida", "Minotaura"),
    ("Allen", "8", "8", "Druida", "Tiefling");
    
select * from tb_personagem where poder_ataque > 2000;
select * from tb_personagem where poder_defesa between 1000 and 2000;
select * from tb_personagem where nome like "%C%";

select
	tb_classe.tipo as Tipo,
    tb_classe.console as Console,
	tb_personagem.nome as Nome,
	tb_personagem.poder_ataque as Ataque,
	tb_personagem.poder_defesa as Defesa,
	tb_personagem.classe_personagem as Classe,
	tb_personagem.raca_personagem as Raça
from tb_classe
inner join tb_personagem
on tb_classe.id_classe = tb_personagem.fk_classe
where classe_personagem = "Druida";