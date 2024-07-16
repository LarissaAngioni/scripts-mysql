create database db_rh;

use db_rh;

create table tb_colaboradores(
id bigint auto_increment primary key,
nome varchar(255) not null,
setor varchar(255) not null,
funcao varchar(255),
salario decimal(8,2) not null
);

insert into tb_colaboradores(nome, setor, funcao, salario) values
("Larissa", "Tecnologia da informação", "Estagiário", 1500.00),
("Ana", "RH", "Gestor", 7000.00),
("Amanda", "Tecnologia da informação", "Dev Senior", 12000.00),
("Paulo", "Vendas", "Vendedor", 3500.00),
("Julia", "Financeiro", "Contador", 5000.00);

select * from tb_colaboradores where salario > 2000;

select * from tb_colaboradores where salario < 2000;

update tb_colaboradores set nome = "Larissa Angioni" where id = 1;
