create database db_loja_construcao;
use db_loja_construcao;
/*Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome
do banco deverá ter o seguinte nome db_construindo_a_nossa_vida, onde o sistema
trabalhará com as informações dos produtos desta empresa. O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.*/
create table tb_categoria(
id bigint auto_increment,
setor varchar(255) not null,
primary key (id));

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
marca varchar(255) not null,
preco decimal(6,2),
lote varchar(255) not null,
cat_id bigint,
primary key (id),
foreign key (cat_id) references tb_categoria(id));

insert into tb_categoria (setor) values ("Cozinha"); -- 1
insert into tb_categoria (setor) values ("Banheiro"); -- 2
insert into tb_categoria (setor) values ("Jardinagem"); -- 3
insert into tb_categoria (setor) values ("Sala"); -- 4


insert into tb_produto (nome, marca, preco, lote, cat_id) values ("Torneira regulável", "Deca", 69.99, "AF2", 1);
insert into tb_produto (nome, marca, preco, lote, cat_id) values ("Chuveiro", "Lerenzetti", 59.99, "KF3", 2);
insert into tb_produto (nome, marca, preco, lote, cat_id) values ("Mangueira", "Zulu", 79.99, "A59", 3);
insert into tb_produto (nome, marca, preco, lote, cat_id) values ("Luminária", "Lux", 45.99, "AF2", 4);
insert into tb_produto (nome, marca, preco, lote, cat_id) values ("Piso frio", "Deca", 35.99, "AF2", 1);

select * from tb_produto;
select * from tb_produto where preco > 50.0;
select * from tb_produto where preco between 12.0 and 55.0;
select * from tb_produto where nome like "%s%";
select * from tb_categoria;

select * from tb_produto inner join tb_categoria;

select * from tb_produto inner join tb_categoria on tb_produto.cat_id = tb_categoria.id where cat_id = 1;



