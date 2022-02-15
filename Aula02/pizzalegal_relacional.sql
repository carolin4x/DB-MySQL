drop database db_pizzalegal;
create database db_pizzalegal;
use db_pizzalegal;

create table tb_categoria(
id bigint auto_increment,
tamanho varchar(255) not null,
tipo varchar(255) not null,
primary key (id) );

insert into tb_categoria (tamanho, tipo) value ("Pequena", "Doce");
insert into tb_categoria (tamanho, tipo) value ("Pequena", "Salgada");
insert into tb_categoria (tamanho, tipo) value ("Média", "Doce");
insert into tb_categoria (tamanho, tipo) value ("Média", "Salgada");
insert into tb_categoria (tamanho, tipo) value ("Grande", "Doce");
insert into tb_categoria (tamanho, tipo) value ("Grande", "Salgada");

create table tb_pizza(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal (8,2),
sabor varchar(255) not null,
brinde varchar(255) not null,
categoria_id bigint not null,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_pizza (nome, preco, sabor, categoria_id, brinde) value ("Mozzarela", 29.99, "Mussarela e azeitona", 2, "não");
insert into tb_pizza (nome, preco, sabor, categoria_id, brinde) value ("Calabreza", 39.99, "Calabreza, mussarela e azeitona", 2, "não");
insert into tb_pizza (nome, preco, sabor, categoria_id, brinde) value ("Brocoli", 35.99, "Brocoli, bacon e mussarela", 2, "sim");
insert into tb_pizza (nome, preco, sabor, categoria_id, brinde) value ("Moda da casa", 49.99, "Mussarela, milho e azeitona", 2, "sim");
insert into tb_pizza (nome, preco, sabor, categoria_id, brinde) value ("Sensação", 39.99, "Morango e chocolate", 1, "sim");
insert into tb_pizza (nome, preco, sabor, categoria_id, brinde) value ("Beijinho", 36.99, "Chocolate branco e coco ralado", 1, "não");

select * from tb_categoria;
select * from tb_pizza;

select * from tb_pizza where preco > 45.0;
select * from tb_pizza where preco between 29.0 and 60.0; 
select * from tb_pizza where nome like "%C%";

select * from 
tb_pizza inner join tb_categoria;

select * from 
tb_categoria inner join tb_pizza on tb_pizza.categoria_id = tb_categoria.id where tipo = "Doce";

select * from 
tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id where tipo = "Doce";

select * from 
tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id where brinde = "sim";

select * from 
tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id where categoria_id = "2";





