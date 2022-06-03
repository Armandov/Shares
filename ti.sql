
/*
Un evento, que normalmente es algún cambio hecho a la base de datos
■ Una condición, que es un predicado lógico que evalúa a verdadero o falso
■ Una acción, que es algún procedimiento que se realiza cuando ocurre el evento y
la condición evalúa a verdadero, también llamado disparar el disparador
Un disparador tiene acceso a los datos insertados, borrados o actualizados que causaron su
disparo (es decir, a activarse o elevarse), y los valores de datos se pueden usar en el código
tanto para la condición como para la acción. El prefijo :OLD se usa para hacer referencia a
los valores en una tupla recién borrada o a los valores sustituidos en una actualización. El
prefijo :NEW se usa para referirse a los valores en una tupla recién insertada o a los nuevos
valores en una actualización. Los disparadores se pueden disparar o antes o después de la
ejecución de la operación insertar, borrar o actualizar. También puede especificar si el disparador
se dispara sólo una vez por cada enunciado de disparo, o por cada fila que cambie
por el enunciado (recuerde que, por ejemplo, un enunciado de actualización puede cambiar
muchas filas). En Oracle se especifica el comando SQL (INSERT, DELETE o UPDATE) que
es el evento; la tabla involucrada; el nivel del disparador (ROW, fila, o STATEMENT, enunciado);
la temporización (BEFORE, antes, o AFTER, después), y la acción a realizar, que se
puede escribir como uno o más comandos SQL en PL/SQL. La sección 6.7 discute PL/SQL
con más detalle. La sintaxis de disparador Oracle tiene la forma:

CREATE OR REPLACE TRIGGER nombre_disparador
[BEFORE/AFTER] [INSERT/UPDATE/DELETE] ON nombre_tabla
[FOR EACH ROW] [WHEN condición]
BEGIN
cuerpo del disparador
END;



DELIMITER:
Se refiere a un delimitador para consultas SQL, 
permite decirle a MySQL que todo antes de un delimitador forma parte de un solo bloque de codigo, 
se puede elegir cualquier delimitador.

Se usan al definir funciones,
 procedimientos almacenados y disparadores en los que debe definir varias instrucciones.
 Se define un delimitador diferente, como $$, que se utiliza para definir el final de todo el procedimiento,
 pero dentro de él, las declaraciones individuales terminan en**;** De esa manera, cuando el código 
 se ejecuta en el cliente sql,
 el cliente puede decir dónde termina todo el procedimiento y ejecutarlo como una unidad en lugar de ejecutar
las declaraciones individuales en su interior.

La palabra clave DELIMITER es una función de la línea de comandos del cliente mysql
(y algunos otros clientes) solamente y no una característica normal del lenguaje SQL. 
*/

DROP DATABASE IF EXISTS prueba;
CREATE DATABASE prueba;
USE prueba;

 
CREATE TABLE articulos (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    fabricante VARCHAR(50) NOT NULL,
    marca VARCHAR(50), 
    precio FLOAT
);

-- 2
DELIMITER $$
DROP TRIGGER IF EXISTS trigger1_checar_precio_before_insert$$
CREATE TRIGGER trigger1_checar_precio_before_insert
BEFORE INSERT
ON articulos FOR EACH ROW
BEGIN
  IF NEW.precio < 0 THEN
    set NEW.precio = 0;
  ELSEIF NEW.precio > 10 THEN
    set NEW.precio = 10;
  END IF;
END

DELIMITER $$
DROP TRIGGER IF EXISTS trigger2_check_precio_before_update$$
CREATE TRIGGER trigger2_check_precio_before_update
BEFORE UPDATE
ON articulos FOR EACH ROW
BEGIN
  IF NEW.precio < 0 THEN
    set NEW.precio = 0;
  ELSEIF NEW.precio > 10 THEN
    set NEW.precio = 10;
  END IF;
END

--3 

DELIMITER ;
INSERT INTO articulos VALUES (null, 'Tableta', 'Apple', 'Ipad', -5);
INSERT INTO articulos VALUES (null, 'Laptop', 'Sony', 'Vaio', 14);
INSERT INTO articulos VALUES (null, 'Telefono', 'Samsumg', 'Galaxy', 10.5);
INSERT INTO articulos VALUES (null, 'Telefono', 'Apple', 'Iphone', -1);

-- 4 

UPDATE articulos SET precio = -4 WHERE id = 3;
UPDATE articulos SET precio = 14 WHERE id = 3;
UPDATE articulos SET precio = 9.5 WHERE id = 3;


DROP DATABASE IF EXISTS votaciones;
CREATE DATABASE votaciones;
USE votaciones;

 
CREATE TABLE candidatos (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    estado VARCHAR(50) NOT NULL,
    partido VARCHAR(50), 
    votos INT
);

-- 2
DELIMITER $$
DROP TRIGGER IF EXISTS trigger1_checar_votos_before_insert$$
CREATE TRIGGER trigger1_checar_votos_before_insert
BEFORE INSERT
ON candidatos FOR EACH ROW
BEGIN
  IF NEW.votos < 10 THEN
    set NEW.votos = 100;
  ELSEIF NEW.votos > 100 THEN
    set NEW.votos = 200;
  END IF;
END

DELIMITER $$
DROP TRIGGER IF EXISTS trigger2_checar_votos_before_update$$
CREATE TRIGGER trigger2_check_votos_before_update
BEFORE UPDATE
ON candidatos FOR EACH ROW
BEGIN
  IF NEW.votos < 10 THEN
    set NEW.votos = 100;
  ELSEIF NEW.votos > 100 THEN
    set NEW.votos = 200;
  END IF;
END

--3

DELIMITER ;
INSERT INTO candidatos VALUES (null, 'RATON', 'CDMX', 'PRI', 5);
INSERT INTO candidatos VALUES (null, 'RATA', 'CDMX', 'PAN',101);
INSERT INTO candidatos VALUES (null, 'GRANUGA', 'CDMX', 'PRD', 110);


-- 4 

UPDATE candidatos SET votos = 10 WHERE id = 1;
UPDATE candidatos SET votos = 110 WHERE id = 2;
UPDATE candidatos SET votos = 120 WHERE id = 3;



-- CREATE TRIGGER multiplicaIds BEFORE INSERT ON users
--     FOR EACH ROW 
--         SET New.id = (SELECT MAX(id) * 10 FROM users);
-- USO DE BEGIN y END

-- Una forma de identificar si requerimos una estructura compleja y que por ende necesitará de BEGIN y de END es si por ejemplo tendremos múltiples sentencias SELECT dentro del mismo PA, por ejemplo:

-- DELIMITER //
-- CREATE PROCEDURE filtraDatos(IN id1 INT, IN id2 INT)
-- BEGIN
--     SELECT * FROM tabla1 WHERE id = id1;
--     SELECT * FROM tabla2 WHERE id = id2;
-- END;
-- //
-- Mismo PA al que invocamos de este modo:

-- CALL filtraDatos(1, 2)