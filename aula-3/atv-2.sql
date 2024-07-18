CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	tipo VARCHAR(255) NOT NULL    
);

INSERT INTO tb_categorias (nome, tipo) VALUES
('Clássica', 'salgada'),
('Gourmet', 'salgada'),
('Doce', 'doce');

CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    preco decimal(5,2) not null,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_pizzas (nome, descricao, preco, categoria_id) VALUES
('Margherita', 'Molho de tomate, mussarela, manjericão', 25.00, 1),
('Pepperoni', 'Molho de tomate, mussarela, pepperoni', 30.00, 1),
('Quatro Queijos', 'Molho de tomate, mussarela, gorgonzola, parmesão, provolone', 35.00, 1),
('Frango com Catupiry', 'Molho de tomate, mussarela, frango desfiado, catupiry', 32.00, 1),
('Calabresa', 'Molho de tomate, mussarela, calabresa, cebola', 28.00, 1),
('Pizza de Salmão', 'Molho de tomate, mussarela, salmão defumado, alcaparras', 50.00, 2),
('Pizza Vegetariana', 'Molho de tomate, mussarela, pimentão, cebola, azeitona, champignon', 29.00, 2),
('Brigadeiro', 'Chocolate, granulado', 20.00, 3);

select * from tb_pizzas where preco > 45;

select * from tb_pizzas where preco between 50 and 100;

select * from tb_pizzas where nome like "%m%";

select * from tb_pizzas inner join tb_categorias
on tb_pizzas.categoria_id = tb_categorias.id;

select * from tb_pizzas inner join tb_categorias
on tb_pizzas.categoria_id = tb_categorias.id
where tb_categorias.id = 2;
