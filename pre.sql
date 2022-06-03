¿Cuál es el uso del esquema en SQL?
Definimos SQL Schema como una colección lógica de objetos de base de datos. 

El objeto por excelencia es la tabla.
La tabla es el único tipo de elemento de transporte de información en una base de datos relacional.
La tabla tiene una estructura compuesta por un conjunto de filas y un conjunto de columnas.
Cada columna (mejor los datos que se almacenan en una columna) está basada en un tipo de datos,
Un usuario propietario del esquema se conoce como propietario del esquema. 


Un usuario propietario del esquema se conoce como propietario del esquema.  
Es un mecanismo útil para segregar objetos de bases de datos para diferentes aplicaciones, derechos de acceso, 
gestión de la administración de seguridad de las bases de datos.

El esquema dbo es el predeterminado de cada base de datos. 
De forma predeterminada, los usuarios creados con el comando CREATE USER de SQL 
usan dbo como esquema predeterminado.El esquema dbo pertenece a la cuenta de usuario dbo .Data Base Owner = dbo


<base de datos>.<propietario>.<objeto>

BD llamada capacitacion, un usuario llamado armando y una tabla llamada pedidos para hacer un select puedes usar:

SELECT *
FROM capacitacion.armando.pedidos

Ahora bien cuando tiene una BD seleccionada por defecto asi pues puedes omitir el nombre de la base de datos

SELECT *
FROM armando.pedidos

Si eres armando puedes omitir el propietario

SELECT *
FROM pedidos


siguiente ejemplo se crea un esquema denominado capacitacion y luego se crea una tabla denominada ejemplo.

CREATE SCHEMA y CREATE DATEBASE

realizan lo mismo

schema
Conceptualmente, un schema es un conjunto interrelacionado de objetos de bases de datos, 
tales como tablas, columnas de tablas, tipos de datos de las columnas, índices, claves externas, y así sucesivamente. 
Estos objetos están conectados a través de la sintaxis SQL, 
debido a que las columnas representan las tablas, las claves externas se refieren a tablas y columnas, etc.
 están conectados lógicamente en cuanto que trabajan juntos.
Por ejemplo, en las bases de datos INFORMATION_SCHEMA y performance_schema utilizan "schema"
en sus nombres para destacar las estrechas relaciones entre las tablas y columnas que contienen.


CREATE SCHEMA capacitacion;

CREATE TABLE capacitacion.ejemplo (ID int);

Se pueden realizar opciones adicionales en una sola instrucción.
En el ejemplo siguiente se crea el esquema articulos, que es propiedad de Armando y contiene la tabla Laptops.
La instrucción concede el permiso SELECT a Mary y deniega el permiso SELECT a Pancho.
SQL

CREATE SCHEMA articulos AUTHORIZATION Armando  
    CREATE TABLE Laptops (marca int, precio int, ids int)  
    GRANT SELECT ON SCHEMA::articulos TO Mary  
    DENY SELECT ON SCHEMA::articulos TO Pancho;  


Estructuras de Programación
Los lenguajes que interactúan con sistemas de gestión de bases de datos se suelen clasificar en tres categorías:

Lenguajes de manipulación de datos (DML, Data Manipulation Language). Estos lenguajes tienen la posibilidad de leer y manipular los datos. Ejemplos de instaucciones de este tipo son SELECT, INSERT, DELETE y UPDATE, vistas en las lecciones anteriores.
Lenguajes de definición de datos (DDL, Data Definition Language). Sirven para crear y modificar las estructuras de almacenamiento. Ejemplo sería las instrucción CREATE TABLE.
Lenguajes de control de datos (DCL, Data Control Language). Permiten definir permisos para el acceso a datos, como GRANT, REVOKE, etc.
Transact-SQL, Oracle el PL-SQL , incluye otras instrucciones que pueden resultar útiles, y que permiten programar procedimientos almacenados.

IF ... ELSE

Admite una expresión booleana que puede ser evaluada para proporcionar un valor true o false. 
Es decir, en caso de que se cumpla una condición, se ejecutarán una seried e acciones. En caso en que no se cumpla esa condición se ejecutarán otro conjunto de acciones u operaciones.

WHILE, BREAK, CONTINUE

La instrucción WHILE permite ejecutar un bucle mientras una determinada expresión continúe siendo verdadera. 
BREAK hace que se salga del bucle WHILE, mientras que CONTINUE para incondicionalmente la ejecución y evalúa de nuevo la expresión..

RETURN

Se emplea para parar la ejecución del programa y por tanto del procedimiento almacenado y del desencadenador.

GOTO

¡Sí, existe una instrucción GOTO Efectúa un salto a una etiqueta determinada. 
 entencia GOTO se utiliza para definir una bifurcación a una etiqueta definida por el usuario dentro de un procedimiento de SQL.

WAITFOR

Puede utilizarse para detener la ejecución durante un retardo determinado (WAITFOR DELAY) o hasta un instante espoecificado (WAITFOR TIME).

EXECUTE


DROP DATABASE IF EXISTS capacitacion;
CREATE DATABASE capacitacion;
USE capacitacion;
 CREATE TABLE rfcs (
    idfrc INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    idcliente int,
    cuantaSap VARCHAR(50),
    activo BIT,
    fechaAlta DATETIME(6)
    
    );

  CREATE TABLE domicilio (
    idfrc INT UNSIGNED AUTO_INCREMENT,
    calle VARCHAR(50),
    noExterior VARCHAR(50),
    nointerior VARCHAR(50),
    colonia VARCHAR(50),
    codigoPostal VARCHAR(50),
    PRIMARY KEY (idfrc)
          );
 CREATE TABLE clientes (
    idcliente INT UNSIGNED AUTO_INCREMENT,
    nombreCliente VARCHAR(50),
    descipcion VARCHAR(50),
    fechaAlta DATETIME(6),
    PRIMARY KEY (idcliente)
          );


CREATE TABLE CAT_codigosPostales (
    cp VARCHAR(5),
    nombreAsentamiento VARCHAR(400),
    municipio VARCHAR(120),
    estado VARCHAR(120)
             );



          -- ALTER TABLE domicilio ADD FOREIGN KEY (idrfc) REFERENCES rfcs (idrfc);

w no use
SELECT * From capacitacion.rfcs;
SELECT * From capacitacion.domicilio; 

