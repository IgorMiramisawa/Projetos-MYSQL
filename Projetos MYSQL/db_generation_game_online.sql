CREATE DATABASE db_generation_game_online ;

USE db_generation_game_online ;

CREATE TABLE tb_personagem (
id_personagem INT AUTO_INCREMENT ,
nome_personagem  VARCHAR (18) NOT NULL ,
level_personagem INT NOT NULL ,
genero_personagem  VARCHAR (18) NOT NULL,
poderataque_personagem INT NOT NULL ,
poderdefesa_personagem  INT NOT NULL , 
PRIMARY KEY (id_personagem)
);

CREATE TABLE tb_classe (
id_classe INT AUTO_INCREMENT ,
nome_classe VARCHAR(12) NOT NULL ,
tipo_classe VARCHAR (15) NOT NULL ,
fk_classe INT , 
PRIMARY KEY (id_classe) ,
FOREIGN KEY (fk_classe) REFERENCES tb_personagem (id_personagem)
);

SELECT * FROM tb_classe ;

SELECT * FROM tb_personagem ;

INSERT INTO tb_personagem (nome_personagem , level_personagem , genero_personagem , 
poderataque_personagem , poderdefesa_personagem )
VALUES
( "Igor"     , "12" , "Masculino" , "2500" , "2200" ) ,
( "Jasmine"  , "12" , "Feminino"  , "1858" , "780"  ) , 
( "JaPa"     , "12" , "Masculino" , "1900" , "1480" ) ,
( "Caio"     , "12" , "Masculino" , "1500" , "2540" ) ,
( "Leonardo" , "12" , "Masculino" , "2850" , "900"  ) ,
( "Rafael"   , "12" , "Masculino" , "1987" , "1589" ) ,
( "Juliana"  , "12" , "Feminino"  , "1568" , "2045" ) ,
( "Otto"     , "12" , "Masculino" , "2311" , "4589" ) ,
( "Leticia"  , "12" , "Feminino"  , "4231" , "900"  ) ,
( "Wendel"   , "12" , "Masculino" , "2121" , "2580" ) ,
( "Rosana"   , "12" , "Feminino"  , "5640" , "1200" ) ,
( "Carina"   , "12" , "Feminino"  , "1245" , "1950" ) ,
( "Guilherme", "12" , "Masculino" , "454"  , "1858" ) ;

INSERT INTO tb_classe (nome_classe , tipo_classe , fk_classe)
VALUES
( "Sargitarius"  	  , "Arqueiro" ,  1  ) ,
( "Evas Templar" 	  , "Tanker"   ,  2  ) ,
( "Gost Hunter"  	  , "Dagger"   ,  3  ) , 
( "Cardinal"     	  , "Suporte"  ,  4  ) ,
( "Adventure"    	  , "Dagger"   ,  5  ) , 
( "Gost Sentinel"	  , "Arqueiro" ,  6  ) , 
( "Eva's Saint"  	  , "Suporte"  ,  7  ) , 
( "Dominator"         , "Suporte"  ,  8  ) , 
( "Moonlight Sentinel", "Arqueiro" ,  9  ) , 
( "Trickster"  		  , "Arqueiro" ,  10  ) , 
( "Arcana Lord"  	  , "Summoners",  11  ) , 
( "Shillien Saint"    , "Suporte"  ,  12  ) , 
( "Wind Rider"  	  , "Dagger"   ,  13  ) ;

ALTER TABLE tb_classe
MODIFY COLUMN nome_classe  VARCHAR(22);

SELECT * FROM tb_personagem
WHERE poderataque_personagem > 2000 ;

SELECT * FROM tb_personagem
WHERE nome_personagem LIKE "%L%";

SELECT * FROM tb_personagem
WHERE poderdefesa_personagem BETWEEN 1000 and 2000 ;

SELECT * FROM tb_classe
INNER JOIN tb_personagem ON tb_personagem.id_personagem = tb_classe.fk_classe ;


SELECT tb_classe.tipo_classe  , tb_classe.nome_classe, tb_personagem.nome_personagem, 
 tb_personagem.poderataque_personagem , tb_personagem.poderdefesa_personagem,
 tb_personagem.level_personagem FROM tb_classe
INNER JOIN tb_personagem ON tb_classe.fk_classe = tb_personagem.id_personagem 
AND tb_classe.tipo_classe = "Arqueiro"; 
