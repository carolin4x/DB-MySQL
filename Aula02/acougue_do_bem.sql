create database db_cidade_das_carnes;
use db_cidade_das_carnes;
/*Crie um banco de dados para um serviço de um açougue ou uma quitanda, o nome do
banco deverá ter o seguinte nome db_cidade_das_carnes ou db_cidade_das_frutas, onde o
sistema trabalhará com as informações dos produtos desta empresa.
O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.*/

create table tb_categoria(
id bigint auto_increment,
origem varchar(255) not null,
primary key (id));

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal (8,2),
quantidade bigint not null,
lote int,
cat_id bigint,
primary key (id),
foreign key (cat_id) references tb_categoria(id));

insert into tb_categoria (origem) values ("Bovino");-- cat_id 1
insert into tb_categoria (origem) values ("Suína"); -- cat_id 2
insert into tb_categoria (origem) values ("Aves");
insert into tb_categoria (origem) values ("Embutidos");

insert into tb_produto (nome, preco, quantidade, lote, cat_id) values ("Acém", 29.99, 30, 10, 1);
insert into tb_produto (nome, preco, quantidade, lote, cat_id) values ("Linguiça Suína", 15.99, 25, 20, 2);
insert into tb_produto (nome, preco, quantidade, lote, cat_id) values ("Coxa e sobrecoxa", 30.99, 15, 25, 3);
insert into tb_produto (nome, preco, quantidade, lote, cat_id) values ("Tulipa", 40.99, 23, 13, 3);
insert into tb_produto (nome, preco, quantidade, lote, cat_id) values ("Nuggets", 12.99, 12, 40, 4);

select * from tb_produto;
select * from tb_categoria;
select * from tb_produto where preco > 30.0;
select * from tb_produto where preco between 15.0 and 30.0 order by tb_produto.preco;
select * from tb_produto where nome like "%u%" order by tb_produto.preco;

select * from tb_produto inner join tb_categoria;

select * from tb_produto inner join tb_categoria on tb_produto.cat_id = tb_categoria.id;

select tb_produto.id, nome, preco, lote, tb_categoria.id, origem from tb_produto inner join tb_categoria on tb_produto.cat_id = tb_categoria.id;

select * from tb_produto inner join tb_categoria on tb_produto.cat_id = tb_categoria.id where origem = "Aves";

select * from tb_produto inner join tb_categoria on tb_produto.cat_id = tb_categoria.id where tb_categoria.id = 2;












