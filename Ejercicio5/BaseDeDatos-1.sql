CREATE DATABASE examen_final;
USE examen_final;

CREATE TABLE bicicleterias (
id INT UNSIGNED NOT NULL AUTO_INCREMENT ,
ganancias VARCHAR (55) ,
cant_ventas INT UNSIGNED , 
PRIMARY KEY (id));

CREATE TABLE bicicletas(
nro_de_serie VARCHAR (45) NOT NULL,
modelo VARCHAR (45) NOT NULL, 
anio INT NOT NULL,
precio VARCHAR (90),
bicicleteria_idbi INT UNSIGNED NOT NULL,
PRIMARY KEY (nro_de_serie),
FOREIGN KEY (bicicleteria_idbi)
REFERENCES bicicleterias(id));

INSERT INTO bicicleterias (ganancias, cant_ventas) 
VALUES ('30000',4),('40000',3),('50000', 1);

SELECT*FROM bicicleterias;

INSERT INTO bicicletas (nro_de_serie, modelo, anio, precio, bicicleteria_idbi)
VALUES 	('1','Urbana',2018,'15000',1),
	('2','BMX', 2018, '25000',3),
	('3','Mountain Bike', 2020,'40000',3),
        ('4', 'Mountain Bike', 2020, '35000', 2),
        ('5','Electrica', 2021, '90000', 2);
SELECT*FROM bicicletas;