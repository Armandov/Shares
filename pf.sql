create database proveedores; use proveedores;
CREATE TABLE proveedor(
codigo INT unsigned auto_increment primary key, 
direccion VARCHAR(100) NOT NULL,
ciudad VARCHAR(100) NOT NULL,
provincia VARCHAR(100)
);
create table categoria(
codigo int unsigned auto_increment primary key,
nombre varchar(100) );
CREATE TABLE pieza (
codigo INT unsigned auto_increment primary key,
codigo_categoria int unsigned not null, nombre varchar(100),
color varchar(100), precio DOUBLE,
FOREIGN KEY (codigo_categoria) REFERENCES categoria(codigo) );
 
 create table provedor_suministra_pieza(
id int unsigned auto_increment primary key, 
codigo_provedor int unsigned not null, 
codigo_pieza int unsigned not null, 
fecha_hora date,
cantidad int,
FOREIGN KEY (codigo_provedor) REFERENCES proveedor(codigo),
FOREIGN KEY (codigo_pieza) REFERENCES pieza(codigo) );