CREATE DATABASE db_pizzaria_legal ;

USE db_pizzaria_legal ;

CREATE TABLE tb_categoria (
id_categoria INT AUTO_INCREMENT PRIMARY KEY ,
tiposdepizza_categoria VARCHAR(35) NOT NULL ,
precopizza_categoria INT NOT NULL 
);

CREATE TABLE tb_pizza (
id_pizza INT AUTO_INCREMENT ,
nomecliente_pizza VARCHAR(25) NOT NULL ,
enderecocliente_pizza VARCHAR(40) NOT NULL ,
telefonecliente_pizza INT NOT NULL ,
comentariocliente_pizza VARCHAR(45) ,
PRIMARY KEY (id_pizza),
fk_pizza INT NOT NULL ,
FOREIGN KEY (fk_pizza) REFERENCES tb_categoria (id_categoria)
);


SELECT * FROM tb_pizza ;

ALTER TABLE tb_categoria  ADD comentariocliente_categoria VARCHAR(45);
SELECT * FROM tb_categoria ;

 INSERT INTO tb_categoria (tiposdepizza_categoria , comentariocliente_categoria ,
 precopizza_categoria  )
 VALUES 
 ( "Pizza Portuguesa " 	 	, "Sem cebola" 		, "30" ),
 ( "Pizza Calabresa "  	 	, "Sem cebola" 		, "35" ),
 ( "Pizza Mussarela "   	, "Adicionar bacon" , "28" ),
 ( "Pizza Frango Catupiry " , "Adicionar milho" , "27" ),
 ( "Pizza Quatro Queijos "  , "Adicionar bacon" , "32" ),
 ( "Pizza Toscana" 		 	, "Adicionar milho" , "25" );

INSERT INTO tb_pizza (nomecliente_pizza , enderecocliente_pizza ,
 telefonecliente_pizza ,fk_pizza )
 VALUES
 ( "Igor" 	 , "Rua justino Anzelotti , 188" , "972374613" ,"1" ),
 ( "Bruno"   , "Nome da rua, XXX" 			 , "911111111" ,"2" ),
 ( "Carina"  , "Nome da rua, XXX " 			 , "922222222" ,"3"),
 ( "Juliana" , "Nome da rua, XXX" 			 , "933333333" ,"4" ),
 ( "Sergio"  , "Nome da rua, XXX" 			 , "944444444" ,"5"),
 ( "Rosana"  , "Nome da rua, XXX" 			 , "955555555" ,"6"),
 ( "Beatriz" , "Nome da rua, XXX" 			 , "966666666" ,"1"),
 ( "Solagen" , "Nome da rua, XXX" 			 , "977777777" ,"5");
 
 SELECT * FROM tb_categoria
 WHERE precopizza_categoria > 30;
 
 SELECT * FROM tb_categoria
 WHERE precopizza_categoria BETWEEN 29 and 60;
 
 SELECT * FROM tb_categoria 
 WHERE tiposdepizza_categoria LIKE "%C%" ;
 
 SELECT * FROM tb_pizza
INNER JOIN tb_categoria ON tb_categoria.id_categoria= tb_pizza.fk_pizza ;

SELECT * FROM tb_pizza
INNER JOIN tb_categoria ON tb_categoria.id_categoria = tb_pizza.fk_pizza 
AND tb_categoria.tiposdepizza_categoria = "Pizza Quatro Queijos "; 
