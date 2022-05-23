/*CRIAR BANCO DE DADOS*/

CREATE DATABASE db_quitanda;

USE db_quitanda;

-- criar tabela produtos
CREATE TABLE tb_produtos(

id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL, -- Nomeia(quant.) propriedade,ela força a digitar algo
quantidade INT,
data_validade DATE, -- Padrão americano
preco DECIMAL NOT NULL, -- para valores financ.
PRIMARY KEY (id) -- indica quem é a chave primaria
);

INSERT INTO tb_produtos(nome,quantidade,data_validade,preco)
VALUES ("Mexirica", 20, "2022-05-30", 8.99); 

INSERT INTO tb_produtos(nome,quantidade,data_validade,preco)
VALUES ("Maçã", 2000, "2022-05-28", 6.00); 

INSERT INTO tb_produtos(nome,quantidade,data_validade,preco)
VALUES ("laranja", 200, "2022-05-29", 12.55);

INSERT INTO tb_produtos(nome,quantidade,data_validade,preco)
VALUES ("Tomate", 210, "2022-05-30", 18.99); 

INSERT INTO tb_produtos(nome,quantidade,data_validade,preco)
VALUES ("Limão", 300, "2022-05-31", 2.99);  

UPDATE tb_produtos SET preco = 8.99 WHERE id = 1;

DELETE FROM tb_produtos WHERE id = 3;	

SET SQL_SAFE_UPDATES = 1;

SELECT * FROM tb_produtos; -- mostra tudo que tem na tabela

SELECT * FROM tb_produtos ORDER BY nome;

SELECT * FROM tb_produtos ORDER BY nome DESC;

SELECT nome, descricao FROM tb_produtos;

SELECT nome, descricao, preco FROM tb_produtos WHERE preco > 10;

SELECT nome, descricao, preco FROM tb_produtos WHERE preco = 6 OR  nome= "Mexirica";

SELECT nome_produto, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS preco FROM tb_produtos;

ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2); -- alterar a tabela, modificando o preco (6 numeros,2 casas depois da virgula)

ALTER TABLE tb_produtos ADD descricao varchar(500);

ALTER TABLE tb_produtos DROP descricao;

ALTER TABLE tb_produtos CHANGE nome nome_produto VARCHAR(255);