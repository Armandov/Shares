CREATE DATABASE walmart;

CREATE TABLE productos (
    producto_id int NOT NULL AUTO_INCREMENT,
    nombre varchar(255),
    descripcion varchar(255),
    precio int
);

INSERT INTO productos (
    producto_id 
    nombre,
    descripcion,
    precio
)
VALUES
    (
        10,
        'lampara',
        'importada',
        200
    ),
    (
        11,
        'ventilador',
        'importado',
        300
    ),
    (
        12,
        'librero',
        'madera',
        2500
    );
    


