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
DROP TRIGGER IF EXISTS trigger_checar_precio_before_insert$$
CREATE TRIGGER trigger_checar_precio_before_insert
BEFORE INSERT
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
