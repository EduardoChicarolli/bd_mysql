CREATE DATABASE db_farmacia_bem_estar;

DROP DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
descricao VARCHAR(255),
modelo VARCHAR(255),
PRIMARY KEY(id)
);

INSERT  INTO tb_categorias(descricao,modelo) VALUES ("Dores em Geral", "Comprimido");
INSERT  INTO tb_categorias(descricao,modelo) VALUES ("Bem Estar", "Creme");
INSERT  INTO tb_categorias(descricao,modelo) VALUES ("Saude Bocal", "Variados");
INSERT  INTO tb_categorias(descricao,modelo) VALUES ("Manipulados", "Genêrico");

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
produto VARCHAR (255),
data_validade DATE,
preco DECIMAL (6,2) NOT NULL,
desconto BOOLEAN,
categorias_id bigint,
primary key(id),
foreign key (categorias_id) references tb_categorias(id)
);

INSERT INTO tb_produtos (produto,data_validade,preco,desconto,categorias_id)
VALUE ("Escova de dente do Batman","2025-12-12",18,true,3);
INSERT INTO tb_produtos (produto,data_validade,preco,desconto,categorias_id)
VALUE ("Protetor Solar","2023-07-10",65,false,2);
INSERT INTO tb_produtos (produto,data_validade,preco,desconto,categorias_id)
VALUE ("Dipirona","2022-12-10",4.50,true,1);
INSERT INTO tb_produtos (produto,data_validade,preco,desconto,categorias_id)
VALUE ("Vitamina AB+","2022-07-09",75,false,4);
INSERT INTO tb_produtos (produto,data_validade,preco,desconto,categorias_id)
VALUE ("Pasta de Dente sabor TuttiFrut","2023-03-01",12,true,3);
INSERT INTO tb_produtos (produto,data_validade,preco,desconto,categorias_id)
VALUE ("Perfume Jequiti","2022-09-12",118,false,2);
INSERT INTO tb_produtos (produto,data_validade,preco,desconto,categorias_id)
VALUE ("Doril","2022-10-11",3,true,1);
INSERT INTO tb_produtos (produto,data_validade,preco,desconto,categorias_id)
VALUE ("Shampoo da Monica","2023-07-03",35,true,2);
INSERT INTO tb_produtos (produto,data_validade,preco,desconto,categorias_id)
VALUE ("Remédio Controlado 142","2023-08-12",124,true,4);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;

SELECT * FROM tb_produtos WHERE produto LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
 ON tb_produtos.categorias_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
 ON tb_produtos.categorias_id = tb_categorias.id WHERE categorias_id=3;