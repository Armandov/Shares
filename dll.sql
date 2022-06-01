https://dev.mysql.com/doc/refman/8.0/en/delete.html

DELETE es un comando de lenguaje de manipulación de datos (DML).
La tarea del comando DELETE es eliminar o eliminar en una tabla o una relación.
Usando BORRAR, podemos eliminar toda la , 
con todos sus valores de atributo de una relación. 
  La DELETE instrucción se utiliza para eliminar registros existentes en una tabla.
 
https://dev.mysql.com/doc/refman/5.6/en/truncate-table.html

TRUNCATE es similar al comando DELETE ya que también elimina las filas de una 
relación. La diferencia es que elimina filas enteras de una relación.
 A medida que se ejecuta el comando TRUNCATE, 
 se eliminan todos los datos de la tabla, cada fila junto con todos 
 los valores de sus atributos se eliminan de la tabla.
  Pero la estructura de la tabla todavía existe en la base de datos.


https://dev.mysql.com/doc/refman/5.7/en/char.html

Char
Cuando usamos CHAR decimos que la memoria será reservada 
para la cantidad de bytes que estamos indicando.
si declaramos un CHAR de longitud 20, 
y guardamos un “Hola” sólo se ocuparán 4 bytes y los otros 16 
se llenarán con espacios.

Al recibir los datos, se les quitarán esos espacios. 
Y así, pero siempre ocuparán la longitud que definimos, 
los llenemos de datos o no.

 CHAR es más rápido que VARCHAR en cuanto a rendimiento, 
 como VARCHAR que tiene una longitud variable.

límite para CHAR es 255.

Varchar
Al declarar un tipo de dato como VARCHAR estamos indicando 
que será como CHAR pero con una longitud variable.

Lo que significa que sólo reservará memoria para los datos que pongamos, 
así aunque declaremos un VARCHAR de 1000 y pongamos un “hola”, 
sólo guardará los 4 caracteres (o bueno, no sólo los 4)

En realidad a veces VARCHAR va a necesitar algunos bytes de 
más para guardar la longitud de los datos. Es decir, 
aparte de los datos guarda un prefijo que indica la longitud.

 límite para VARCHAR es 65,535 bytes.
DROP database x;
drop TABLE x; --elimina la tabla de la base de datos

truncate table x ;-- elimina los datos de la tabla no la talas
/* ALTER TABLE tablex_nombre
ADD columnax_nombre tipo de datos */
ALTER TABLE x 
add edad int
;
/*
ALTER TABLE - DROP columna
To delete  */

ALTER TABLE x
DROP columna edad ;

/* ALTER TABLE - ALTER/MODIFY columna
To change the data type of a columna in a table, use the following syntax:
 */


ALTER TABLE x
ALTER columna folio float;



-- nuevo registro
INSERT INTO tablex_nombre (columna1, columna2, columna3, ...)
VALUES (value1, value2, value3, ...);


UPDATE tablex_nombre
SET Autor='new', editorial ='ne2'
set Autor= "Candido Perez Gallegos"
WHERE codigo = 1753;


UPDATE tablex_nombre
SET item = 0000
WHERE editorial = "gredos";

DELETE FROM libros WHERE codigo = 1754;

SQL Constraints
/* ¡ cuidado al actualizar 
registros en una tabla!con la cláusula WHERE 
en la instrucción UPDATE. 
La cláusula WHERE especifica qué registros 
deben actualizarse. 
Si omite la cláusula WHERE,
 ¡se actualizarán todos los registros de la tabla!
*/
Las restricciones de SQL se utilizan para especificar reglas para los datos de una tabla.

Las restricciones se utilizan para limitar el tipo de datos que pueden incluirse en una tabla. 

Esto asegura la precisión y confiabilidad de los datos en la tabla. 
Si hay alguna violación entre la restricción y la acción de datos, la acción se aborta.

Las restricciones pueden ser de nivel de columna o de tabla. 

Las restricciones de nivel de columna se aplican a una columna y las restricciones de nivel de tabla
 se aplican a toda la tabla.

Las siguientes restricciones se usan comúnmente en SQL:


CREATE TABLE tablex_nombre (
    columna1 tipo de datos constraint,
    columna2 tipo de datos constraint,
    columna3 tipo de datos constraint,
    ....
);

Las restricciones en SQL Server son reglas y restricciones predefinidas que se aplican en una
 sola columna o en varias columnas, relacionados a los valores permitidos en las columnas,
  para mantener la integridad, precisión y confiabilidad de los datos de esa columna.

 restricciones principales que se usan comúnmente en SQL 

NOT NULL- Asegura que una columna no puede tener un valor NULL
UNIQUE- Asegura que todos los valores en una columna sean diferentes
PRIMARY KEY- Una combinación de a NOT NULLy UNIQUE.
Identifica de forma única cada fila en una tabla

La PRIMARY KEYrestricción identifica de forma única cada registro en una tabla.

Las claves primarias deben contener valores ÚNICOS y no pueden contener valores NULOS.

Una tabla solo puede tener UNA clave principal; y en la tabla, 

esta clave principal puede constar de una o varias columnas (campos).


CREATE TABLE x (
    ID int NOT NULL,
    apellido varchar(255) NOT NULL,
    nombre varchar(255),
    Age int,
    PRIMARY KEY (ID)
);


FOREIGN KEY - Previene acciones que destruirían enlaces entre tablas


La FOREIGN KEY restricción se utiliza para evitar acciones que destruirían enlaces entre tablas.

A FOREIGN KEYes un campo (o colección de campos) en una tabla, 
que se refiere a PRIMARY KEYen otra tabla.
La tabla con la clave externa se denomina tabla secundaria, 
y la tabla con la clave principal se denomina tabla principal o de referencia.

La columna "clienteID" en la tabla "clientes" es la PRIMARY KEYde la tabla "clientes".

La columna "clienteID" en la tabla "ordenes" es una FOREIGN KEYen la tabla "ordenes".

La FOREIGN KEYrestricción evita que se inserten datos no válidos en la columna de clave externa, porque tiene que ser uno de los valores contenidos en la tabla principal.

CHECK- Asegura que los valores en una columna satisfagan una condición específica

La CHECKrestricción se utiliza para limitar el rango de valores que se puede colocar en una columna.

Si define una CHECKrestricción en una columna, solo permitirá ciertos valores para esta columna.

Si define una CHECKrestricción en una tabla, puede limitar los valores en ciertas columnas en función de los valores en otras columnas de la fila.

DEFAULT- Establece un valor predeterminado para una columna si no se especifica ningún valor

La DEFAULTrestricción se utiliza para establecer un valor predeterminado para una columna.

El valor predeterminado se agregará a todos los registros nuevos, si no se especifica ningún otro valor.

CREATE INDEX- Se utiliza para crear y recuperar datos de la base de datos muy rápidamente


 
 La restricción UNIQUE en SQL se utiliza para garantizar que no se inserten valores duplicados 
 en una columna específica o combinación de columnas que participen en la restricción UNIQUE 
 y no formen parte de la CLAVE PRIMARIA. En otras palabras, el índice que se crea automáticamente 
 cuando define una restricción ÚNICA garantizará que no haya dos filas en esa tabla que 
 puedan tener el mismo valor para las columnas que participan en ese índice, con la capacidad de 
 insertar solo un valor NULL único en estos columnas, esto si la columna permite NULL.
 
 
UNIQUE restricción asegura que todos los valores en una columna sean diferentes.

Tanto las restricciones UNIQUEcomo PRIMARY KEYproporcionan una garantía de exclusividad para una columna o conjunto de columnas.

Una PRIMARY KEYrestricción tiene automáticamente una UNIQUE restricción.

se puede tener muchas UNIQUE restricciones por tabla, pero solo una PRIMARY KEYrestricción por tabla.

El siguiente SQL crea una UNIQUE restricción en la columna "ID" cuando se crea la tabla "clientes":

CREATE TABLE clientes (
    ID int NOT NULL,
    nombre varchar(255) NOT NULL,
    apellido varchar(255),
    edad int,
    UNIQUE (ID)
);


por defecto, las columnas pueden contener valores NULL. 
Se usa una restricción NOT NULL en SQL 
para evitar insertar valores NULL en la columna especificada

AUTO_INCREMENT permite generar automáticamente un número único cuando 
se inserta un nuevo registro en una tabla.

A menudo, este es el campo de clave principal que nos gustaría que se creara
 automáticamente cada vez que se inserta un nuevo registro.

Sintaxis para MySQL

La siguiente instrucción SQL define la columna "clienteID" para que sea un campo de clave principal
 de incremento automático en la tabla "clientes":

CREATE TABLE clientes (
    clienteID int NOT NULL AUTO_INCREMENT,
    apellido varchar(255) NOT NULL,
    direccion varchar(255),
    numero int,
    PRIMARY KEY (clienteID)
);


ALTER TABLE `biblioteca`.`libros` 
ADD UNIQUE `index` 
(`Autor`, `Titulo`, `Genero`, `Info`);


Sentencia SQL CREATE INDEX
La CREATE INDEXdeclaración se utiliza para crear índices en las tablas.

Los índices se utilizan para recuperar datos de la base de datos 
más rápidamente que de otra manera. Los usuarios no pueden ver los índices, 
solo se utilizan para acelerar las búsquedas/consultas.

Nota: Actualizar una tabla con índices lleva más tiempo que actualizar
 una tabla sin ellos (porque los índices también necesitan una actualización).
 Por lo tanto, solo cree índices en las columnas que se buscarán con frecuencia.

Sintaxis CREAR ÍNDICE
Crea un índice en una tabla. Se permiten valores duplicados:

CREATE INDEX index_name
ON table_name (columna1, columna2, ...);
CREAR ÍNDICE ÚNICO Sintaxis
Crea un índice único en una tabla. No se permiten valores duplicados:

CREATE UNIQUE INDEX index_name
ON table_name (columna1, columna2, ...);
Nota: La sintaxis para crear índices varía entre las diferentes bases de datos. Por lo tanto: Verifique la sintaxis para crear índices en su base de datos.

Ejemplo CREAR ÍNDICE
La siguiente declaración SQL crea un índice llamado "idx_clientes" en la columna "apellido" en la tabla "clientes":

CREATE INDEX idx_apellido
ON clientes (apellido);
Si desea crear un índice en una combinación de columnas, puede enumerar los nombres de las columnas entre paréntesis, separados por comas:

CREATE INDEX idx_pname
ON clientes (apellido, nombre);*/
-- relations between all mysql tables?

SELECT
`ordenes`,
`clienteID`,
`clientes`,
`ID`




SELECT ID, Nombre
   FROM CLIENTES, ORDENES
   WHERE  ordenID =  clientes.id, ordenes.OrdenID;

