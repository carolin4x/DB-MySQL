create database db_game;
use db_game;
-- 
create table tb_classe(
id bigint auto_increment,
elemento varchar(255) not null,
categoria varchar(255) not null,
primary key (id) );

insert into tb_classe (elemento, categoria) value ("Ar", "Humano");
insert into tb_classe (elemento, categoria) value ("Fogo", "Humano");
insert into tb_classe (elemento, categoria) value ("Terra", "Humano");
insert into tb_classe (elemento, categoria) value ("Água", "Humano");

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
ataque int,
defesa int,
elemento varchar(255) not null,
primary key(id),
foreign key (tb_classe) references tb_classe (id));

insert into tb_personagem (nome, ataque, defesa, elemento) value ("Maddy", 3500, 2300, "Fogo");
insert into tb_personagem (nome, ataque, defesa, elemento) value ("Rue", 4000, 2000, "Ar");
insert into tb_personagem (nome, ataque, defesa, elemento) value ("Fez", 2000, 3200, "Fogo");
insert into tb_personagem (nome, ataque, defesa, elemento) value ("Cassie", 1000, 1500, "Água");
insert into tb_personagem (nome, ataque, defesa, elemento) value ("Jules", 3800, 2200, "Terra");
insert into tb_personagem (nome, ataque, defesa, elemento) value ("Lexi", 1500, 3000, "Ar");
insert into tb_personagem (nome, ataque, defesa, elemento) value ("Nate", 3000, 2400, "Água");
insert into tb_personagem (nome, ataque, defesa, elemento) value ("Elliot", 1900, 2100, "Água");

select * from tb_personagem;

select nome, ataque, elemento from tb_personagem where ataque > 2000;
select nome, defesa, elemento from tb_personagem where defesa >= 1000 and defesa <= 2000; 
select * from tb_personagem where nome like "C%";
select * from tb_personagem where elemento like "%Ar%";

select * from 
tb_personagem inner join tb_classe;

select * from 
tb_personagem inner join tb_classe on tb_personagem.elemento = tb_classe.elemento;

select tb_personagem.id, tb_classe.elemento, nome, ataque, defesa, categoria from 
tb_personagem inner join tb_classe on tb_personagem.elemento = tb_classe.elemento;

select nome, ataque, defesa, categoria from 
tb_personagem right join tb_classe on tb_personagem.elemento = tb_classe.elemento;

select * from 
tb_personagem left join tb_classe on tb_personagem.elemento = tb_classe.elemento;

select * from 
tb_personagem inner join tb_classe on tb_personagem.elemento = tb_classe.elemento order by tb_classe.id desc;









