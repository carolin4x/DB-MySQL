create database db_ecomm;
-- Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste ecommerce.
-- Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
-- Popule esta tabela com até 8 dados; Faça um select que retorne os produtos com o valor maior do que 500.
-- Faça um select que retorne os produtos com o valor menor do que 500.
-- Ao término atualize um dado desta tabela através de uma query de atualização.

use db_ecomm;

create table tb_itens(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
categoria varchar(255) not null,
preco decimal,
origem varchar(255) not null,
primary key(id)
);

insert into tb_itens (nome, quantidade, categoria, preco, origem)
value ("Gloss", 20, "rosto", 159.9, "nacional");
insert into tb_itens (nome, quantidade, categoria, preco, origem)
value ("Leav-in", 15, "cabelo", 230.0, "importado");
insert into tb_itens (nome, quantidade, categoria, preco, origem)
value ("Secador de cabelo", 12, "cabelo", 850.0, "importado");
insert into tb_itens (nome, quantidade, categoria, preco, origem)
value ("Bruma", 30, "rosto", 550.0, "importado");
insert into tb_itens (nome, quantidade, categoria, preco, origem)
value ("Delineador", 10, "rosto", 100.0, "nacional");

select * from tb_itens;
delete from tb_itens where id = 2;
alter table tb_itens modify preco decimal(8,2);

select * from tb_itens where preco > 500.0; -- aqui posso usar uma condição do que filtrar na tabela
select * from tb_itens where preco < 500.0;
update tb_itens set preco = 520 where id = 3;





