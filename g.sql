CREATE DATABASE new;
USE DATABASE new;
CREATE TABLE animales{
id int NOT NULL,
tipo  varchar(255),
 nombre varchar(255),
  PRIMARY KEY (id)
};

ALTER TABLE animales MODIFY COLUMN id int AUTO_INCREMENT;

SHOW CREATE TABLE animales;

	http://192.168.1.1/phpmyadmin/index.php?route=/table/sql&db=new&table=animales


SHOW CREATE TABLE animales;



animales	CREATE TABLE `animales` (
  `id` int(11) NOT NULL ...	

http://192.168.1.1/phpmyadmin/index.php?route=/table/sql&db=new&table=anima


INSERT INTO animales(`id`, `tipo`, `nombre`) VALUES ('null','pez','piraña')
SELECT * FROM `animales` WHERE nonbre=  AND  tipo;
UPDATE animales SET nombre = 'Delfin';
DELETE FROM animales WHERE id = 3
ALTER TABLE usuarios ADD correo varchar(255) NOT NULL AFTER nombre;
SELECT * FROM libros LIMIT 100;
SELECT * FROM libros WHERE Editorial='gredos' and Autor='voltaire'
SELECT * FROM libros WHERE Editorial='gredos' LIMIT 500;
SELECT * FROM libros WHERE Genero='filosofía';
SELECT * FROM libros WHERE Genero='filosofía' ORDER BY libros.Autor ASC LIMIT 1000
SELECT * FROM `libros` ORDER BY `Autor` ASC
SELECT * FROM `libros` WHERE Autor LIKE '%art%' ORDER BY libros.Autor ASC