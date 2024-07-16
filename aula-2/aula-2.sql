-- Create database

create database db_quitanda;

use db_quitanda;

create table tb_produtos(
id bigint auto_increment primary key,
nome varchar(255) not null,
quantidade int,
datavalidade date,
preco decimal not null
);

describe tb_produtos;

insert into tb_produtos(nome, quantidade, datavalidade, preco) values
("Coca", 30, "2024-12-15", 8.00);

insert into tb_produtos(nome, quantidade, datavalidade, preco) 
values ("tomate",100, "2023-12-15", 8.00);

insert into tb_produtos(nome, quantidade, datavalidade, preco) 
values ("maçã",20, "2023-12-15", 5.00);

INsert iNto tb_produtos(nome, quantidade, datavalidade, preco) 
VAlues ("laranja",50, "2023-12-15", 10.00);

INsert iNto tb_produtos(nome, quantidade, datavalidade, preco) 
VAlues ("banana",200, "2023-12-15", 12.00);

INsert iNto tb_produtos(nome, quantidade, datavalidade, preco) 
VAlues ("uva",1200, "2023-12-15", 30.00);

INsert iNto tb_produtos(nome, quantidade, datavalidade, preco) 
VAlues ("pêra",500, "2023-12-15", 2.99);

select * from tb_produtos;

INSert inTo tb_produtos(nome, quantidade, datavalidade, preco) 
vALues ("Tomate", 100, "2023-12-15", 8.00),
("Maçã", 20, "2023-12-15", 5.00),
("laranja", 50, "2023-12-15", 10.00),
("banana", 200, "2023-12-15", 12.00),
("uva", 1200, "2023-12-15", 30.00),
("pêra", 500, "2023-12-15", 2.99);

select nome, preco from tb_produtos;

select * from tb_produtos where id = 1;

select * from tb_produtos where preco > 5 and quantidade < 100;

alter table tb_produtos add descricao varchar(255);

alter table tb_produtos drop descricao;

alter table tb_produtos change nome nomeproduto varchar(255);

update tb_produtos set preco = 2.99 where id = 1;

SET SQL_SAFE_UPDATES = 0; -- desabilita o modo seguro
SET SQL_SAFE_UPDATES = 1; -- habilita o modo seguro

delete from tb_produtos where id = 1;

delete from tb_produtos where id in (2,5,6);

ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2);

