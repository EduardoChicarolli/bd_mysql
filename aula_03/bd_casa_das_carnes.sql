create database db_cidade_das_carnes;

drop database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categorias(
id bigint auto_increment,
tipo varchar(255),
tamanho varchar(255),
primary key(id)
);

insert into tb_categorias(tipo, tamanho) value ("Carne Vermelha", "grande");
insert into tb_categorias(tipo, tamanho) value ("Carne Branca", "media");
insert into tb_categorias(tipo, tamanho) value ("Peixes", "grande");
insert into tb_categorias(tipo, tamanho) value ("Especiais", "pequena");
insert into tb_categorias(tipo, tamanho) value ("Tempero", "media");

select * from tb_categorias;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
produto VARCHAR(255),
marca VARCHAR(255),
preco DECIMAL(6,2),
data_validade DATE,
categorias_id BIGINT,
primary key(id),
foreign key(categorias_id) references tb_categorias(id)
);

INSERT INTO tb_produtos (produto, marca, preco, data_validade, categorias_id) 
VALUES ("Bacon","Sadia",75,"2022-12-15",4);
INSERT INTO tb_produtos (produto, marca, preco, data_validade, categorias_id)
VALUES ("Filé de frango","Friboi",25,"2023-01-12",2);
INSERT INTO tb_produtos (produto, marca, preco, data_validade, categorias_id)
VALUES ("Costelinha XX","Cozinha do Joaquin",124,"2022-07-05",4);
INSERT INTO tb_produtos (produto, marca, preco, data_validade, categorias_id)
VALUES ("Linguiça","Aurora",40,"2023-03-21",1);
INSERT INTO tb_produtos (produto, marca, preco, data_validade, categorias_id)
VALUES ("Coxão Mole","Sadia",32,"2023-02-27",1);
INSERT INTO tb_produtos (produto, marca, preco, data_validade, categorias_id)
VALUES ("Tempero Apimentado","Da casa",22,"2022-06-25",5);
INSERT INTO tb_produtos (produto, marca, preco, data_validade, categorias_id)
VALUES ("Tempero com Batata","da casa",24,"2022-06-25",5);
INSERT INTO tb_produtos (produto, marca, preco, data_validade, categorias_id)
VALUES ("Pato","International",52,"2022-07-14",2);

SELECT * FROM tb_produtos;

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 50 and 150;

select nome, preco, categorias_id from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categorias on tb_produtos.categorias_id = tb_categorias.id;

select * from tb_produtos inner join tb_categorias 
on tb_produtos.categorias_id = tb_categorias.id where categorias_id = 4;

