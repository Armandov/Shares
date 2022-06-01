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