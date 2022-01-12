CREATE DATABASE db_ecommerce; 

USE db_ecommerce ;

CREATE TABLE tb_ecommerce (
id_produto INT NOT NULL AUTO_INCREMENT ,
produto VARCHAR(35) NOT NULL ,
marca_produto VARCHAR(35) NOT NULL ,
preco_produto FLOAT NOT NULL,
disponibilidade_produto BOOLEAN NOT NULL ,
PRIMARY KEY (id_produto)
 );
 
 SELECT * FROM tb_ecommerce ; 
 
 INSERT INTO  tb_ecommerce (produto , marca_produto , preco_produto , disponibilidade_produto)
 VALUES 
 ( "Boné" , "New Era" , "169" , TRUE ) , 
 ("NOTEBOOK" , "DELL" , "2789" , FALSE ) , 
 ("Celular" , "Apple" , "2450" , TRUE ) , 
 ("Camiseta" , "New Era" , "80" , TRUE ) ,
 ("BERMUDA" , "AEROPOSTALES" , "150" , FALSE ) ,
 ("Mouse" , "Microsoft" , "90" , TRUE ) ,
 ("Geladeira" , "Panasonic" , "3150" , TRUE ) , 
 ("TV " , "LG " , "1897" , TRUE ) ;
 
SELECT * FROM tb_ecommerce 
WHERE preco_produto > 500 ;
 
 SELECT * FROM tb_ecommerce
 WHERE preco_produto < 500 ;
 
 UPDATE tb_ecommerce
 SET disponibilidade_produto = TRUE
 WHERE id_produto = 26 ;
 
 
 

