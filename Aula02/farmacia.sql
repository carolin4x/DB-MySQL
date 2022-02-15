create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
servicos varchar(255) not null,
regiao varchar(255) not null,
primary key (id));

insert into tb_categoria (servicos, regiao) value ("Medicamentos", "Sul");
insert into tb_categoria (servicos, regiao) value ("Medicamentos", "Centro");
insert into tb_categoria (servicos, regiao) value ("Medicamentos", "Leste");
insert into tb_categoria (servicos, regiao) value ("Medicamentos", "Norte");
insert into tb_categoria (servicos, regiao) value ("Medicamentos", "Oeste");

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal (8,2),
marca varchar(255) not null,
cat_id bigint not null,
setor varchar(255) not null,
primary key (id),
foreign key (cat_id) references tb_categoria(id));

insert into tb_produto (nome, preco, marca, cat_id, setor) value ("Batom", 15.99, "Vult", 1, "Beauty");
insert into tb_produto (nome, preco, marca, cat_id, setor) value ("Loratadina", 25.99, "CIMED", 2, "Fármacos");
insert into tb_produto (nome, preco, marca, cat_id, setor) value ("Bactrim", 69.99, "Roche", 2, "Farmaco");
insert into tb_produto (nome, preco, marca, cat_id, setor) value ("Água", 3.99, "Bonafont", 3, "Variados");
insert into tb_produto (nome, preco, marca, cat_id, setor) value ("Coletor Menstrual", 55.99, "Inciclo", 4, "Íntimos");
insert into tb_produto (nome, preco, marca, cat_id, setor) value ("Absorvente com abas", 4.99, "Sempre Livre", 4, "Íntimos");
insert into tb_produto (nome, preco, marca, cat_id, setor) value ("Chiclete", 2.99, "Trident", 3, "Variados");
insert into tb_produto (nome, preco, marca, cat_id, setor) value ("Rímel", 35.99, "Dailus", 1, "Beauty");

select * from tb_produto;
select * from tb_categoria;
select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3.00 and 60.00;
select * from tb_produto where preco between 3.00 and 60.00 order by tb_produto.preco;

select * from tb_produto where nome like "B%";

select * from tb_categoria inner join tb_produto;
select * from tb_produto inner join tb_categoria;

select * from tb_produto inner join tb_categoria on tb_produto.cat_id = tb_categoria.id;

select * from tb_produto inner join tb_categoria on tb_produto.cat_id = tb_categoria.id where servicos = "Medicamentos";

select * from tb_produto inner join tb_categoria on tb_produto.cat_id = tb_categoria.id where regiao = "Centro";

select * from tb_produto inner join tb_categoria on tb_produto.cat_id = tb_categoria.id where cat_id = "4";
