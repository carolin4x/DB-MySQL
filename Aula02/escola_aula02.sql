create database db_escola1;
-- Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola.
-- Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
-- Popule esta tabela com até 8 dados.Faça um select que retorne o/as estudantes com a nota maior do que 7.
-- Faça um select que retorne o/as estudantes com a nota menor do que 7.
-- Ao término atualize um dado desta tabela através de uma query de atualização salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
-- coloque no seu GitHuB pessoal e compartilhe esta atividade.

use db_escola1;
create table tb_estudantes1(
id bigint auto_increment,
nome varchar(255) not null,
idade int,
sexo char,
materia varchar(255) not null,
nota decimal,
primary key(id)
);

alter table tb_estudantes1 modify nota decimal(8,2);

insert into tb_estudantes1 (nome, idade, sexo, materia, nota)
value ("Juliana", 12, "F", "Português", 7.50);
insert into tb_estudantes1 (nome, idade, sexo, materia, nota)
value ("Ana", 12, "F", "Português", 10.0);
insert into tb_estudantes1 (nome, idade, sexo, materia, nota)
value ("Pedro", 13, "M", "Biologia", 8.0);
insert into tb_estudantes1 (nome, idade, sexo, materia, nota)
value ("Maria", 12, "F", "Biologia", 6.50);
insert into tb_estudantes1 (nome, idade, sexo, materia, nota)
value ("Carol", 12, "F", "Inglês", 9.75);
insert into tb_estudantes1 (nome, idade, sexo, materia, nota)
value ("Paula", 11, "F", "Inglês", 5.50);
insert into tb_estudantes1 (nome, idade, sexo, materia, nota)
value ("Tom", 12, "M", "Geografia", 10.0);
insert into tb_estudantes1 (nome, idade, sexo, materia, nota)
value ("Amanda", 13, "F", "Geografia", 8.50);

select * from tb_estudantes1;
select * from tb_estudantes1 where nota > 7.00;
select * from tb_estudantes1 where nota < 7.00;
select nome, idade, nota, materia from tb_estudantes1;



