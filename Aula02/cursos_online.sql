create database db_cursos_top;
use db_cursos_top;

create table tb_categoria(
id bigint auto_increment,
area varchar(255) not null,
primary key (id));

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal (8,2),
seguimento varchar(255) not null,
cat_id bigint,
primary key (id),
foreign key (cat_id) references tb_categoria(id));

insert into tb_categoria (area) values ("Saude");-- cat_id 1
insert into tb_categoria (area) values ("Tech"); -- cat_id 2
insert into tb_categoria (area) values ("Educação");

insert into tb_produto (nome, preco, seguimento, cat_id) values ("JAVA - Básico à POO", 29.99, "EAD", 2);
insert into tb_produto (nome, preco, seguimento, cat_id) values ("Gestão Escolar", 35.99, "presencial", 3);
insert into tb_produto (nome, preco, seguimento, cat_id) values ("Primeiros Socorros", 31.99, "EAD", 1);
insert into tb_produto (nome, preco, seguimento, cat_id) values ("Processos Biológicos", 25.99, "Presencial", 1);
insert into tb_produto (nome, preco, seguimento, cat_id) values ("Linguagem de Programação - JAVA", 15.99, "Presencial", 2);

select * from tb_categoria;
select * from tb_produto;
select * from tb_produto where preco > 25.00;
select * from tb_produto where preco between 15.00 and 49.00;
select * from tb_produto where nome like "%J%";

select * from tb_categoria inner join tb_produto;
select * from tb_categoria inner join tb_produto on tb_produto.cat_id = tb_categoria.id where area = "Saude";





