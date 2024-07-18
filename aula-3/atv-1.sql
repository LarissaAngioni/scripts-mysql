CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
	classe VARCHAR(255) NOT NULL,
	habilidade VARCHAR(255) NOT NULL    
);

CREATE TABLE tb_personagens(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
    raca VARCHAR(255),
    ataque INT,
    defesa INT,
    classe_id BIGINT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes (id)
);
  
INSERT INTO tb_classes(classe, habilidade) VALUES
("Bárbaro", "Fúria"),
("Mago", "Magia Branca"),
("Feiticeiro", "Magia Negra"),
("Bardo", "Música"),
("MOnge", "Meditação");

iNserT INTO TB_Personagens(nome, racA, ataQue, defEsa, claSse_id) valUeS
('THoRin Oakenshield', 'AnÃo', 4500, 2700, 1),
('ELDrIn Lightfoot', 'ElfO', 3000, 2500, 2),
('ZARa Blackwood', 'HumAno', 1750, 1550, 3),
('LIRa Moonshadow', 'ElfO', 5000, 3450, 4),
('GRImM Ironfist', 'AnãO', 1800, 1650, 5),
('AELAr Windwalker', 'Elfo', 700, 550, 4),
('BORIn Stoneheart', 'Anão', 1900, 1750, 1),
('SeLENe Starfire', 'HumanO', 1650, 1500, 3);

SElECt * FROM tB_PERSonagens where atAQUE > 2000;

sELECt * FROM tB_PERSonagens where deFESA between 1000 ANd 2000;

sELECt * FROM tB_PERSonagens where noME LIKE "%c%";

SELECT *
FROM tB_PERSonagens INNER JOIN TB_CLASses 
ON tb_peRSonagens.classe_Id = tb_claSses.id;

SELECT 
    *
FROM
    TB_personagens
        INNER JOIN
    TB_classes ON tb_peRSonagens.classe_Id = tb_claSses.id
WHERE
    CLAsse_id = 3;
