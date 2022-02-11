-- Criando Banco de dados db_quitanda
create database db_quitanda;

use db_quitanda; -- eu direciono qual db a tabela deve se relacionar

create table tb_produtos(
id bigint auto_increment, -- chave primária
nome varchar(255) not null, -- aqui eu coloco um valor padrão de caracateres para nomear
quantidade int,
preco decimal,
primary key (id)
);

insert into tb_produtos (nome, quantidade, preco) 
values ("Maçã", 10, 1.99); -- 
insert into tb_produtos (nome, quantidade, preco) 
values ("Banana", 13, 4.99);
insert into tb_produtos (nome, quantidade, preco) 
values ("Manga", 20, 5.49);
insert into tb_produtos (nome, quantidade, preco) 
values ("Cebola", 100, 1.50);

select * from tb_produtos; -- comando que me mostra a grade da tabela preenchida com dados
select nome, preco from tb_produtos; -- aqui seleciono somente o que quero, no aso: nome, preço
select * from tb_produtos where preco >= 1.99; -- aqui posso usar uma condição do que filtrar na tabela
select * from tb_produtos where preco > 1.99 or nome = "Banana";
update tb_produtos set preco = 1.99 where id = 1; -- altera um item da tabela
update tb_produtos set nome = "Maçã Rubi" where id = 1;

delete from tb_produtos where id = 5; -- deleta o item na posição indicada

update tb_produtos set descricao = "Banana Ouro";

alter table tb_produtos modify preco decimal(8,2); -- dos 8 numeros nos ultimos 2 ele coloca a virgula
alter table tb_produtos add descricao varchar(255);
alter table tb_produtos drop descricao;

delete from tb_produtos; -- ATENçÃO ESSE COMANDO DELETA PERMANENTEMENTE OS DADOS!!!