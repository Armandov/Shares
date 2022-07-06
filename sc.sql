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
    ID_peronsas int NOT NULL AUTO_INCREMENT PRIMARY KEY,
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

