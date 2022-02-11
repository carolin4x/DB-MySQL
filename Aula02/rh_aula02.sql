create database db_RH;

use db_RH;
-- Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
-- atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
-- Popule esta tabela com até 5 dados; 
-- Faça um select que retorne os funcionaries com o salário maior do que 2000. Faça um select que retorne os funcionaries com o salário menor do que 2000.
 -- Ao término atualize um dado desta tabela através de uma query de atualização.

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
idade int,
sexo char,
funcao varchar(255) not null,
salario decimal,
primary key(id)
);

insert into tb_funcionarios (nome, idade, sexo, funcao, salario)
value ("Fabio", 20, "M", "Assistente Junior", 1900.0);
insert into tb_funcionarios (nome, idade, sexo, funcao, salario)
value ("João", 27, "M", "Analista Pleno", 2500.0);
insert into tb_funcionarios (nome, idade, sexo, funcao, salario)
value ("Anita", 19, "F", "Jovem Aprendiz", 1000.0);
insert into tb_funcionarios (nome, idade, sexo, funcao, salario)
value ("Marina", 32, "F", "Supervisora", 3500.0);

select * from tb_funcionarios;
delete from tb_funcionarios where id = 1;

select * from tb_funcionarios where salario > 2000.0;
select * from tb_funcionarios where salario < 2000.0;

update tb_funcionarios set salario = 2100.0 where id = 2;
update tb_funcionarios set salario = 1500.0 where id = 4;



