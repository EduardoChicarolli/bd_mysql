CREATE DATABASE rh;

USE db_rh;

CREATE TABLE tb_colaboradores(

id BIGINT AUTO_INCREMENT,
nome varchar(255) NOT NULL,
idade int,
salario decimal(7,2),
cargo varchar(200),
admissao date,
PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, idade, salario, cargo, admissao)
VALUES ("Fabio Augusto",21,"Dev. Jr.",5450.00,05-16-2021);

INSERT INTO tb_colaboradores(nome, idade, salario, cargo, admissao)
VALUES ("Osvaldo José",34,"Supervisor",6000.00,11-19-2019);

INSERT INTO tb_colaboradores(nome, idade, salario, cargo, admissao)
VALUES ("Dirce Cristina",45,"Gestora",8700.75,07-01-2016);

INSERT INTO tb_colaboradores(nome, idade, salario, cargo, admissao)
VALUES ("Aline Alves",19,"Estágiario",1500.00,05-11-2022);

INSERT INTO tb_colaboradores(nome, idade, salario, cargo, admissao)
VALUES ("Carlos Oliveira",27,"Analista",4750.00,09-23-2020);

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;



