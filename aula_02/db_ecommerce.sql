CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT auto_increment,
produto varchar(200),
cor varchar(20)
preco DECIMAL(7,2),
categoria varchar(50),
primary key (id)
);

INSERT INTO tb_produtos (produto,cor,preco,categoria) 
VALUES ("Celular Nokia", "Preto", 1000.00, "Celulares");
INSERT INTO tb_produtos (produto,cor,preco,categoria) 
VALUES("Lapiseira Top", "Rosa", 11.50, "Papelaria");
INSERT INTO tb_produtos (produto,cor,preco,categoria) 
VALUES ("Garrafa Térmica", "Inox", 50.00, "Utensilios");
INSERT INTO tb_produtos (produto,cor,preco,categoria) 
VALUES("Camisa Basica", "Branco", 22.45, "Vestuário");
INSERT INTO tb_produtos (produto,cor,preco,categoria) 
VALUES("BuzzLightear", "Mix",75.00,"Brinquedos");
INSERT INTO tb_produtos (produto,cor,preco,categoria) 
VALUES("Vassoura","Vermehlo",9.90,"Utensilios");
INSERT INTO tb_produtos (produto,cor,preco,categoria) 
VALUES("Mouse Gamer","Preto",34.00,"Informática");
INSERT INTO tb_produtos (produto,cor,preco,categoria) 
VALUES("Quadro Dali Daqui","Mix",510.99,"Decoração");

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;