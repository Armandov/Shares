CREATE DATABASE walmart;

CREATE TABLE productos (
    producto_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre varchar(255),
    descripcion varchar(255),
    precio float,
   
)
);

INSERT INTO `productos` 
(`nombre`, `descripcion`, `precio`) 
VALUES
('pantalon', 'Importado', 1500 ),
('camisa', 'lana', 1100 ),
    


