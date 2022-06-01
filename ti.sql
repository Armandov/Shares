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