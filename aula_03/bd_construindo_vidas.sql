CREATE DATABASE db_construindo_vidas;

DROP DATABASE db_contruindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
categoria VARCHAR(255) NOT NULL,
equipe VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(categoria,equipe) VALUE ("Decoração", "Arquitetos");
INSERT INTO tb_categorias(categoria,equipe) VALUE ("Pias E Tanques", "Manutenção Hidráulica");
INSERT INTO tb_categorias(categoria,equipe) VALUE ("Construção", "Civil");
INSERT INTO tb_categorias(categoria,equipe) VALUE ("Elétrica", "Manutenção elétrica");

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
servico VARCHAR(255),
preco DECIMAL (6,2),
desconto BOOLEAN,
solic_online BOOLEAN,
catagorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (servico,preco,desconto,solic_online,categorias_id) VALUE ("Entupimento", 50, true, false, 2);
INSERT INTO tb_produtos (servico,preco,desconto,solic_online,categorias_id) VALUE ("Construção", 500, false, false, 3);
INSERT INTO tb_produtos (servico,preco,desconto,solic_online,categorias_id) VALUE ("Instalação Chuveiro", 120, false, true, 4);
INSERT INTO tb_produtos (servico,preco,desconto,solic_online,categorias_id) VALUE ("Móvel Planejado", 300, true, false, 1);
INSERT INTO tb_produtos (servico,preco,desconto,solic_online,categorias_id) VALUE ("Instalação Lustre", 200, true, false, 4);
INSERT INTO tb_produtos (servico,preco,desconto,solic_online,categorias_id) VALUE ("Decoração Festas", 68, False, true, 1);
INSERT INTO tb_produtos (servico,preco,desconto,solic_online,categorias_id) VALUE ("Equipamentos construção", 145, false, false, 3);
INSERT INTO tb_produtos (servico,preco,desconto,solic_online,categorias_id) VALUE ("Instalação Tanquinho", 140, true, false, 2);
INSERT INTO tb_produtos (servico,preco,desconto,solic_online,categorias_id) VALUE ("Desentupimento Privada", 70, true, false, 2);

select * from tb_produtos;

select nome, preco, categorias_id from tb_produtos where preco > 100;

select * from tb_produtos where preco between 70 and 150;

select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categorias on tb_produtos.categorias_id = tb_categorias.id;

select * from tb_produtos inner join tb_categorias on tb_produtos.categorias_id = tb_categorias.id where categorias_id = 2;




