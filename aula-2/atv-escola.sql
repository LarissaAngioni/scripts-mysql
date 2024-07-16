create database db_escola;

use db_escola;

create table tb_alunos(
id bigint auto_increment primary key,
nome varchar(255) not null,
matricula int not null,
turma varchar(255) not null,
serie varchar(255) not null,
nota decimal(3,1) not null
);

insert into tb_alunos(nome, matricula, turma, serie, nota) values 
("Larissa", 12345, "6B", "EM3", 8.5),
("Luana", 12567, "2A", "EF1", 6),
("Clara", 129235, "8B", "EM1", 5.5),
("Luiza", 54345, "5A", "EM2", 9.5),
("Claudia", 84755, "2A", "EF1", 7.6),
("Bruna", 456745, "4A", "EF9", 8.9),
("Julia", 837583, "7A", "EM3", 5.7),
("Amanda", 345675, "8B", "EM1", 3.9);

select * from tb_alunos where nota > 7;

select * from tb_alunos where nota < 7;

update tb_alunos set nota = 10 where id = 4;
