CREATE TABLE clientes (
    ID int NOT NULL AUTO_INCREMENT,
    nombre varchar(255) NOT NULL,
    direccion varchar(255),
    numero int,
    PRIMARY KEY (ID)
);


CREATE TABLE ordenes (
    OrdenID int NOT NULL,
    OrdenNumero int NOT NULL,
    clienteID int,
    PRIMARY KEY (OrdenID),
    FOREIGN KEY (clienteID) REFERENCES clientes(ID)
);

CREATE TABLE productos (
    producto_id int NOT NULL AUTO_INCREMENT,
    producto_nombre character (40) NOT NULL,
    categoria_id int,
    cantidad character (20),
    precio float,
    PRIMARY KEY (producto_id)
     );


INSERT INTO productos (
    producto_id , 
    producto_nombre,
    categoria_id,
    cantidad,
    precio
)
VALUES (null,'pantalon',1,20,1200);


INSERT INTO productos (
    producto_id , 
    producto_nombre,
    categoria_id,
    cantidad,
    precio
)
VALUES 
(null,'blusa',2,50,1000),
(null,'pijama',3,20,900),
(null,'zapatos',1,60,1510),
(null,'zapatillas',2,50,1250);


INSERT INTO clientes
 (ID,nombre,direccion,numero)
 VALUES
 (NULL,'Sorina','Puebla',11),
 (NULL,'Abarotero','Durango',12),
 (NULL,'Aurrera','Monterrey',13),
 (NULL,'Samborns','Veracruz',14);

INSERT INTO ordenes (
clienteID,
OrdenID,
OrdenNumero )
VALUES
 (1,1,01),
 (2,2,02),
 (3,3,03);

CREATE TABLE envios (
    EnvioID int NOT NULL AUTO_INCREMENT,
    EnvioNumero int NOT NULL,
    EnviosID int,
    PRIMARY KEY (EnvioID),
    FOREIGN KEY (EnviosID) REFERENCES clientes(ID)
);


CREATE TABLE personal (
    ID_personas int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(255) NOT NULL,
    edad int NOT NULL CHECK (edad>=18),  -- AND ciudad='cdmx'
    area varchar(255) NOT NULL,
    ciudad varchar(255)
    
    
);


CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,  
  `creado` bigint(20) DEFAULT NULL,
  `actulizado` bigint(20) DEFAULT NULL,
  `nombres` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
);

ALTER TABLE usuarios CHANGE actulizado actulizado

DATE NOT NULL DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE `usuarios` CHANGE `creado` `creado` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP;


ALTER TABLE `usuarios` CHANGE `nombres` `nombre`
 VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL;


INSERT INTO `usuarios` (`creado`, `actulizado`, `id_usuario`, `nombre`, `image`) 
VALUES (SYSDATE(), SYSDATE(), null, 
'Armando', 'https://gravatar.com/avatar/8ff56ed0f8edcddd0ff979b499b63a4e');

INSERT INTO `usuarios` (`creado`, `actulizado`, `id_usuario`, `nombre`, `image`) 
VALUES (SYSDATE(), SYSDATE(),null, 
'Armando', 'https://gravatar.com/avatar/8ff56ed0f8edcddd0ff979b499b63a4e'); 

INSERT INTO `usuarios` (`creado`, `actulizado`, `id_usuario`, `nombre`, `image`) 
VALUES (CURRENT_DATE(), CURRENT_DATE(), 'null', 
'Armando', 'https://gravatar.com/avatar/8ff56ed0f8edcddd0ff979b499b63a4e');


INSERT INTO `usuarios` (`creado`, `actulizado`, `id_usuario`, `nombre`, `image`) 
VALUES (CURRENT_DATE(), CURRENT_DATE(), '1', 
'Armando', 'https://gravatar.com/avatar/8ff56ed0f8edcddd0ff979b499b63a4e');
--  https://docs.oracle.com/cd/F49540_01/DOC/inter.815/a67843/cqspcl.htm
--  mysqldump -u DBUSER -pDBPASS old_db | mysql -u DBUSER -pDBPASS -D new_db sql web graph
 -- SQL eliminar el cliente

DELETE FROM clientes WHERE nombre='Banco';

-- La siguiente instrucción SQL elimina todas las filas de la tabla "Clientes", sin eliminar la tabla
DELETE FROM Clientes;

TRUNCATE TABLE ordenes; 

ALTER TABLE personal DROP area

ALTER TABLE nombre RENAME empresa;

INSERT INTO personal (`ID_personas`, `nombre`, `edad`, `ciudad`) 
VALUES (NULL, 'Carlos Lopez Huh', '19', 'CDMX');

ALTER TABLE personal CHANGE ID_peros ID_persona INT(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE personal ADD salrio float NOT null;

UPDATE `productos` SET `categoria_id` = 'damas' WHERE `productos`.`producto_id` = 2
UPDATE productos SET categoria_id = 'damax' WHERE productos.producto_id= 5

UPDATE personal SET salario = 4200 WHERE nombre IN ('Maria Sanchez Ovidio', 'Omar Sanchez Ovidio');

SELECT * FROM `clientes` ORDER BY `clientes`.`nombre` ASC

UPDATE clientes
SET numero = 15
WHERE ID = 3;

TRUNCATE `walmart`.`personal`

SELECT
`ordenes`,
`clienteID`,
`clientes`,
`ID`


ALTER TABLE productos ADD rastreo VARCHAR(50) NOT NULL;

ALTER TABLE clientes ADD edad int NOT NULL

ALTER TABLE productos
MODIFY COLUMN rastreo int;

ALTER TABLE `productos`
  DROP PRIMARY KEY,
   ADD PRIMARY KEY(
     `rastreo`
   );


1


ALTER TABLE `ordenes` ADD `ordenfecha` 
DATETIME NULL DEFAULT NULL AFTER `OrdenNumero`;

ALTER TABLE `ordenes` CHANGE `ordenfecha` 
`ordenfecha` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE `ordenes` CHANGE `ordenfecha` 
`ordenfecha` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE `ordenes` ADD `ordenfecha` DATETIME NULL DEFAULT NULL AFTER `OrdenNumero`;

UPDATE `ordenes` SET `clienteID` = '4' WHERE `ordenes`.`OrdenID` = 3;

ALTER TABLE ordenes
MODIFY COLUMN OrdenNumero varchar(20);

ALTER TABLE `clientes` ADD UNIQUE(`ID`);

ALTER TABLE `productos` CHANGE `categoria_id` `categoria_id` 
VARCHAR(200) NOT NULL AFTER `marca`;

UPDATE productos SET categoria_id='caballeros' WHERE 2

Alias 

SELECT nombre AS empresa, direccion AS detalles
FROM clientes;


SELECT nombre AS empresa, direccion AS detalles
FROM clientes
WHERE fechas > GETDATE()
ORDER BY fechas; 

SELECT nombre
FROM clientes
ORDER BY nombre

SELECT * FROM clientes
WHERE ID= > 1;

SELECT * FROM clientes
WHERE nombre LIKE '%or%';

SELECT * FROM Productos
WHERE precio BETWEEN 500 AND 1000;

SELECT * FROM clientes
WHERE direccion NOT IN ('Veracruz', 'Puebla');

SELECT * FROM Productos
WHERE precio > 600
ORDER BY producto_nombre ;

SELECT * FROM personal
WHERE salario > 600
ORDER BY nombre ;


SELECT AVG(precio)
FROM productos;

SELECT SUM(precio)
FROM productos;

SELECT SUM(salario)
FROM personal;

SELECT MIN(precio) AS masbaratos
FROM Productos;

SELECT MAX(precio) AS preciomasalto
FROM Productos;


SELECT COUNT(ID), direccion
FROM clientes
GROUP BY direccion
ORDER BY COUNT(ID) DESC;

SELECT COUNT(ID), direccion
FROM clientes
GROUP BY direccion
HAVING COUNT(ID) > 2
ORDER BY COUNT(ID) DESC;


CREATE ALGORITHM = MERGE SQL SECURITY INVOKER VIEW `vistas` (nombre) AS nombres 
DESCRIBE WITH CASCADED CHECK OPTION

SQL JOIN 
Una JOIN se usa para combinar filas de dos o más tablas,
 en función de una columna relacionada entre ellas.

USE walmart;

SELECT direccion FROM clientes
UNION
SELECT ordenID FROM ordenes
ORDER BY direccion;

ALTER TABLE envios ADD FOREIGN KEY (EnviosID) REFERENCES ordenes (OrdenID);

INSERT INTO `envios` (`EnvioID`, `EnvioNumero`, `EnviosID`) 
VALUES (NULL, '0001', '1'), (NULL, '002', '3');

CREATE VIEW DetallesPrecios AS SELECT producto_nombre, precio
FROM productos
WHERE precio > (SELECT MIN(precio) FROM productos);

CREATE VIEW otra AS
SELECT nombre
FROM productos
WHERE precio > (SELECT MAX(precio) FROM productos);

SELECT * FROM detalles_preciosbajos DetallesPrecios;


SHOW KEYS FROM clientes;


   SELECT clientes.ID,clientes.nombre, envios.EnvioID, ordenes.OrdenID
FROM clientes 
	LEFT JOIN envios ON envios.EnviosID = clientes.ID
	LEFT JOIN ordenes ON envios.EnviosID = ordenes.OrdenID;


SELECT clientes.ID, ordenes.OrdenID
FROM ordenes
INNER JOIN clientes ON ordenes.OrdenID=clientes.ID;

 SELECT clientes.ID,clientes.nombre, envios.EnvioID, ordenes.OrdenID
FROM clientes 
	LEFT JOIN envios ON envios.EnviosID = clientes.ID
ORDER BY cliente.nombre;



SELECT clientes.nombre, ordenes.ordenID
FROM clientes
FULL OUTER JOIN ordenes ON clientes.ID=ordenes.clienteID
ORDER BY clientes.nombre;
DESCRIBE libros
SELECT Autor AS nombre, editorial AS povedor
FROM libros LIMIT 100;
SELECT * FROM libros
WHERE Genero='Filosofia'
LIMIT 100;

CREATE VIEW Filosofia AS
SELECT Autor, Titulo
FROM libros WHERE Editorial="Gredos";
SELECT * FROM Filosofia
show keys from libros;
SHOW FULL TABLES

CREATE VIEW leonovos
AS
    SELECT 
        customerName, 
        SUM(amount) payment
    FROM
        customers
    INNER JOIN payments 
        USING (customerNumber)
    GROUP BY 
        customerName;
Code language: SQL (Structured Query Language) (sql)
This example uses the DROP VIEW statement to drop the customerPayments view:

DROP VIEW IF EXISTS customerPayments;

DROP VIEW IF EXISTS customerPayments;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER VIEW `filosofia` AS SELECT `libros`.`Autor` AS `Autor`, `libros`.`Titulo` AS `Titulo` FROM `libros` WHERE `libros`.`Editorial` = 'Gredos' ;
https://dev.mysql.com/doc/refman/8.0/en/tutorial.html
SHOW CREATE USER user_name
Description
Shows the CREATE USER statement that created the given user.
 The statement requires the SELECT privilege for the mysql database, except for the current user.


CREATE USER foo4@test require cipher 'text' 
  issuer 'foo_issuer' subject 'foo_subject';

SHOW CREATE USER foo4@test\G
*************************** 1. row ***************************
CREATE USER 'foo4'@'test' 
  REQUIRE ISSUER 'foo_issuer' 
  SUBJECT 'foo_subject' 
  CIPHER 'text'


/* httpd-xampp.conf
 8080
 sudo nano /etc/apache2/
\apache\conf\extra
httpd-xampp.conf 
    Alias /phpmyadmin "C:/Program Files/xampp/phpMyAdmin/"
    <Directory "C:/Program Files/xampp/phpMyAdmin">
        AllowOverride AuthConfig
        #Require local
        Require all granted 
        
        Alias /phpmyadmin "/opt/lampp/phpmyadmin/"
<Directory "/opt/lampp/phpmyadmin">
AllowOverride AuthConfig
        
[Desktop Entry]
Encoding=UTF-8
Name=XAMPP Control Panel
Comment=Start and Stop XAMPP
Exec=gksudo "python /opt/lampp/share/xampp-control-panel/xampp-control-panel.py"
Icon=/usr/share/icons//devices/network-wired.svg
Terminal=false
Type=Application
Categories=GNOME;Application;Network;
StartupNotify=true

https://docs.oracle.com/cd/E11882_01/index.htm
*/

        
        CREATE TABLE shop (
    article INT UNSIGNED  DEFAULT '0000' NOT NULL,
    dealer  CHAR(20)      DEFAULT ''     NOT NULL,
    price   DECIMAL(16,2) DEFAULT '0.00' NOT NULL,
    PRIMARY KEY(article, dealer));
INSERT INTO shop VALUES
    (1,'A',3.45),(1,'B',3.99),(2,'A',10.99),(3,'B',1.45),
    (3,'C',1.69),(3,'D',1.25),(4,'D',19.95);
Después de emitir las declaraciones, la tabla debe tener el siguiente contenido:


SELECT * FROM shop ORDER BY article;

+---------+--------+-------+
| article | dealer | price |
+---------+--------+-------+
|       1 | A      |  3.45 |
|       1 | B      |  3.99 |
|       2 | A      | 10.99 |
|       3 | B      |  1.45 |
|       3 | C      |  1.69 |
|       3 | D      |  1.25 |
|       4 | D      | 19.95 |
+---------+--------+-------+

SELECT article, dealer, price
FROM   shop
WHERE  price=(SELECT MAX(price) FROM shop);
-- Encuentre el número, distribuidor y precio del artículo más caro.

+---------+--------+-------+
| article | dealer | price |
+---------+--------+-------+
|    0004 | D      | 19.95 |
+---------+--------+-------+



- Otra solución es usar un LEFT JOIN, como se muestra aquí:

SELECT s1.article, s1.dealer, s1.price
FROM shop s1
LEFT JOIN shop s2 ON s1.price < s2.price
WHERE s2.article IS NULL;


SELECT article, dealer, price
FROM shop
ORDER BY price DESC
LIMIT 1


-- Máximo de Columnas por Grupo
-- Tarea: Encuentra el precio más alto por artículo.


SELECT article, MAX(price) AS price
FROM   shop
GROUP BY article
ORDER BY article;

+---------+-------+
| article | price |
+---------+-------+
|    0001 |  3.99 |
|    0002 | 10.99 |
|    0003 |  1.69 |
|    0004 | 19.95 |
+---------+-------+



/* Para cada artículo, encuentre el distribuidor o distribuidores con el precio más caro.

Este problema se puede resolver con una subconsulta como esta:
 */

SELECT article, dealer, price
FROM   shop s1
WHERE  price=(SELECT MAX(s2.price)
              FROM shop s2
              WHERE s1.article = s2.article)
ORDER BY article;

+---------+--------+-------+
| article | dealer | price |
+---------+--------+-------+
|    0001 | B      |  3.99 |
|    0002 | A      | 10.99 |
|    0003 | C      |  1.69 |
|    0004 | D      | 19.95 |
+---------+--------+-------+


WITH s1 AS (
   SELECT article, dealer, price,
          RANK() OVER (PARTITION BY article
                           ORDER BY price DESC
                      ) AS `Rank`
     FROM shop
)
SELECT article, dealer, price
  FROM s1
  WHERE `Rank` = 1
ORDER BY article;

machine learning algorithm with SQL?
--  Uso de variables definidas por el usuario
-- Puede emplear variables de usuario de MySQL para recordar los resultados sin tener que almacenarlos en variables temporales en el cliente. 
-- (Consulte la Sección 9.4, “Variables definidas por el usuario” .)

-- Por ejemplo, para encontrar los artículos con el precio más alto y más bajo puedes hacer esto:


mysql> SELECT @min_price:=MIN(price),@max_price:=MAX(price) FROM shop;
mysql> SELECT * FROM shop WHERE price=@min_price OR price=@max_price;
+---------+--------+-------+
| article | dealer | price |
+---------+--------+-------+
|    0003 | D      |  1.25 |
|    0004 | D      | 19.95 |
+---------+--------+-------+