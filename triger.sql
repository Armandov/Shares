-- Paso 1
DROP DATABASE IF EXISTS test;
CREATE DATABASE test;
USE test;

-- Paso 2 
CREATE TABLE alumnos (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido1 VARCHAR(50) NOT NULL,
    apellido2 VARCHAR(50), 
    nota FLOAT
);

-- Paso 3
DELIMITER $$
DROP TRIGGER IF EXISTS trigger1_check_nota_before_insert$$
CREATE TRIGGER trigger1_check_nota_before_insert
BEFORE INSERT
ON alumnos FOR EACH ROW
BEGIN
  IF NEW.nota < 0 THEN
    set NEW.nota = 0;
  ELSEIF NEW.nota > 10 THEN
    set NEW.nota = 10;
  END IF;
END

DELIMITER $$
DROP TRIGGER IF EXISTS trigger2_check_nota_before_update$$
CREATE TRIGGER trigger2_check_nota_before_update
BEFORE UPDATE
ON alumnos FOR EACH ROW
BEGIN
  IF NEW.nota < 0 THEN
    set NEW.nota = 0;
  ELSEIF NEW.nota > 10 THEN
    set NEW.nota = 10;
  END IF;
END

-- Paso 4
DELIMITER ;
INSERT INTO alumnos VALUES (1, 'Armando', 'Ortiz', 'Velez', -1);
INSERT INTO alumnos VALUES (2, 'Hector', 'Olvera', 'Sánchez', 11);
INSERT INTO alumnos VALUES (3, 'Juan', 'Saenz', 'Smith', 8.5);


DELIMITER ;
INSERT INTO alumnos VALUES (4,'Jorge', 'Olmos', 'Olmos',-1);
INSERT INTO alumnos VALUES (5,'Omar', 'Poo', 'Poo',11);
INSERT INTO alumnos VALUES (6,'Raul', 'Ovidio', 'Ovidio',6.5);

DELIMITER ;
INSERT INTO alumnos VALUES (null, 'Luz', 'Saldivar', 'Chen', -5);


-- Paso 5
SELECT * FROM alumnos;

-- Paso 6
UPDATE alumnos SET nota = -4 WHERE id = 3;
UPDATE alumnos SET nota = 14 WHERE id = 3;
UPDATE alumnos SET nota = 9.5 WHERE id = 3;

-- Paso 7
SELECT * FROM alumnos;


/*
DELIMITER:
Se refiere a un delimitador para nuestras consultas SQL, permite decirle a MySQL que todo antes de un delimitador forma parte de un solo bloque de codigo, tu puedes elegir cualquier delimitador.

Dato adicional y para tener en cuenta:

Normalmente se usan al definir funciones, procedimientos almacenados y disparadores en los que debe definir varias instrucciones. Usted define un delimitador diferente, como $$, que se utiliza para definir el final de todo el procedimiento, pero dentro de él, las declaraciones individuales terminan en**;** De esa manera, cuando el código se ejecuta en el cliente mysql, el cliente puede decir dónde termina todo el procedimiento y ejecutarlo como una unidad en lugar de ejecutar las declaraciones individuales en su interior.

Tenga en cuenta que la palabra clave DELIMITER es una función de la línea de comandos del cliente mysql (y algunos otros clientes) solamente y no una característica normal del lenguaje MySQL. No funcionará si intentas pasarlo a través de un lenguaje de programación API a MySQL. Algunos otros clientes como PHPMyAdmin tienen otros métodos para especificar un delimitador no predeterminado.
*/


/*
Crea una base de datos llamada test que contenga una tabla llamada
alumnos con las siguientes columnas. (valor 18)
Evaluación:
Creación de la base de datos : 9 puntos.
Creación de los Disparadores(Triggers): 9 puntos.
Tabla alumnos:
id (entero sin signo)
● nombre (cadena de caracteres)
● apellido1 (cadena de caracteres)
● apellido2 (cadena de caracteres)
● nota (número real)
Una vez creada la tabla escriba dos triggers con las siguientes características:
● Trigger 1: trigger_check_nota_before_insert
o Se ejecuta sobre la tabla alumnos.
o Se ejecuta antes de una operación de inserción.
o Si el nuevo valor de la nota que se quiere insertar es negativo, se guarda
como 0.
o Si el nuevo valor de la nota que se quiere insertar es mayor que 10, se
guarda como 10.
● Trigger2 : trigger_check_nota_before_update
o Se ejecuta sobre la tabla alumnos.
o Se ejecuta antes de una operación de actualización.
15
o Si el nuevo valor de la nota que se quiere actualizar es negativo, se guarda
como 0.
o Si el nuevo valor de la nota que se quiere actualizar es mayor que 10, se
guarda como 10.
Una vez creados los triggers escribe varias sentencias de inserción y actualización
sobre la tabla alumnos y verifica que los triggers se están ejecutando
correctamente. */