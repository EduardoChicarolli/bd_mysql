CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;



CREATE TABLE tb_categorias(

id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL, 
valor VARCHAR(255) NOT NULL,
PRIMARY KEY (id) 
);

INSERT  INTO tb_categorias (tipo,valor)
VALUES ("Vegana","Mediana");

INSERT  INTO tb_categorias (tipo,valor)
VALUES ("Carne","Mediana");

INSERT  INTO tb_categorias (tipo,valor)
VALUES ("Frango","Baixa");

INSERT  INTO tb_categorias (tipo,valor)
VALUES ("Doce","Alta");

INSERT  INTO tb_categorias (tipo,valor)
VALUES ("Especial","Alta");

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(

id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL, 
preco int(255),
tamanho VARCHAR(255) NOT NULL,
borda VARCHAR(255) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT  INTO tb_pizzas (nome,preco,tamanho,borda)
VALUES ("Camarão",75,"Grande","Não");

INSERT  INTO tb_pizzas (nome,preco,tamanho,borda)
VALUES ("Caipira",35,"Grande","Cheddar");

INSERT  INTO tb_pizzas (nome,preco,tamanho,borda)
VALUES ("Brocolis",65,"Grande","Catupiry");

INSERT  INTO tb_pizzas (nome,preco,tamanho,borda)
VALUES ("João e Maria",35,"Grande","Nutella");

SELECT *FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco < 45;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

select * from tb_pizzas inner join tb_categorias on tb_pizzas.categorias_id = tb_categorias.id;

select * from tb_pizzas inner join tb_categorias on tb_pizzas.categorias_id = tb_categorias.id WHERE categorias_id LIKE "%Especial%" ;



