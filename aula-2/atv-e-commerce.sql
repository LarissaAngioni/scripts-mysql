create database db_e_commerce;

use db_e_commerce;

create table tb_produtos(
id bigint auto_increment primary key,
nome_produto varchar(255) not null,
descricao varchar(255),
categoria varchar(255)not null,
estoque int not null,
valor decimal(6,2) not null
);

insert into tb_produtos(nome_produto, descricao, categoria, valor) values
("Capinha Moto G", "Capa para proteger smartphone", "Celulares", 20.00),
("Fone de Ouvido", "Fone P2.", "Acessórios", 15.00),
("Caixinha Bluetooth", "Caixa de som JBL, com bluetooth", "Aparelhos de som", 300.00),
("WebCam", "Webcam logitech 1080p", "Perifericos", 200.00),
("Mouse", "Mouse generico ubs", "Perifericos", 70.00),
("Cabo type-c", "Cabo tipo c", "Cabos", 20.00),
("Teclado sem fio Razer", "Teclado sem fio, com receptor", "Perifericos", 700.00),
("Lúminaria de mesa", "Lúminaria de LED recarregável", "Outros", 60.00);

select * from tb_produtos where valor > 500;

select * from tb_produtos where valor < 500;

update tb_produtos set valor = 550.00 where id = 3;
