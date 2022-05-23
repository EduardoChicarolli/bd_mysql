CREATE DATABASE db_escola; 

USE db_escola; 

CREATE TABLE tb_estudantes(
id bigint auto_increment,
nome varchar(200),
Inscricao int,
data_nascimento date,
turma int,
nota decimal(4,2),
    primary key (id)
);

INSERT INTO tb_estudantes (nome, inscricao, data_nascimento, turma, nota) VALUES ("Bruno Henrique", 47852, "2001-02-21", 12, 8.00);
INSERT INTO tb_estudantes (nome, inscricao, data_nascimento, turma, nota) VALUES ("Uriles Bento", 78541,"2001-09-18", 12, 7.00);
INSERT INTO tb_estudantes (nome, inscricao, data_nascimento, turma, nota) VALUES ("Carol Madureira",12458, "2001-06-30", 12, 4.50);
INSERT INTO tb_estudantes (nome, inscricao, data_nascimento, turma, nota) VALUES ("Eduardo Augusto",785412, "2001-05-16", 12, 10.00);
INSERT INTO tb_estudantes (nome, inscricao, data_nascimento, turma, nota) VALUES ("Tadeu Schimit",123456, "2001-07-04", 12, 7.00);
INSERT INTO tb_estudantes (nome, inscricao, data_nascimento, turma, nota) VALUES ("Osvaldo Silva",654123, "2000-12-05", 13, 3.00);
INSERT INTO tb_estudantes (nome, inscricao, data_nascimento, turma, nota) VALUES ("Ester Cristina",654321, "2000-08-06", 13, 9.00);
INSERT INTO tb_estudantes (nome, inscricao, data_nascimento, turma, nota) VALUES ("Sebastião Lima",123654, "2000-12-25", 13, 8.00);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7.00;

SELECT * FROM tb_estudantes WHERE nota < 7.00;
