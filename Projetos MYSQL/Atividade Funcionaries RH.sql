CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionaries (
id_funcionaries INT AUTO_INCREMENT ,
nome VARCHAR(35),
salario FLOAT ,
endereco VARCHAR(50),
email VARCHAR(45),
idade INT ,
PRIMARY KEY (id_funcionaries)
);

INSERT INTO tb_funcionaries (nome , salario , endereco , email , idade)
VALUES 
( "Igor" , "1750" , "Rua Justino Anzelotti 188" , "igor.miramisawa@outlook.com" , "23" ) ,
( "Funcionarie 1" , "1850" , "enderecoFuncionarie1" , "funcionarie1@email.com" , "25" ) ,
( "Funcionarie 2" , "1950" , "enderecoFuncionarie2" , "funcionarie2@email.com" , "20" ) ,
( "Funcionarie 3" , "2050" , "enderecoFuncionarie3" , "funcionarie3@email.com" , "28" ) ,
( "Funcionarie 4" , "2150" , "enderecoFuncionarie4" , "funcionarie4@email.com" , "30" ) ;

SELECT * FROM tb_funcionaries
WHERE salario > 2000 ;

SELECT * FROM tb_funcionaries
WHERE SALARIO < 2000 ;

UPDATE tb_funcionaries 
SET salario = "2580" 
WHERE id_funcionaries = 1;



