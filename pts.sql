/* 71 /opt/lampp/bin/mysql -u root
alias zet="sudo nano ~/.bashrc"
alias xsql="cd /opt/lampp/ && sudo ./manager-linux-x64.run"
alias misql="/opt/lampp/bin/mysql -u root" */

SELECT COUNT(*) FROM producto;

-- 7 2

SELECT fabricante.nombre, COUNT(producto.codigo) 
FROM fabricante LEFT JOIN producto
ON producto.codigo_fabricante = fabricante.codigo 
GROUP BY fabricante.codigo
ORDER BY 2 DESC;

-- 7  3

SELECT fabricante.nombre, MAX(producto.precio), MIN(producto.precio), AVG(producto.precio)
FROM fabricante INNER JOIN producto
ON producto.codigo_fabricante = fabricante.codigo
GROUP BY fabricante.codigo;

--7 4 
SELECT fabricante.nombre,
MAX(producto.precio), MIN(producto.precio),
AVG(producto.precio), COUNT(*)
FROM producto INNER JOIN fabricante
ON producto.codigo_fabricante = fabricante.codigo
GROUP BY fabricante.codigo HAVING AVG(producto.precio) > 200;

--9 1

 Select nombre from producto;

 --9 2

SELECT * FROM producto WHERE codigo_fabricante = (
SELECT codigo
FROM fabricante
WHERE nombre = 'Lenovo');

-- 9  

SELECT producto.nombre
FROM fabricante INNER JOIN producto
ON fabricante.codigo = producto.codigo_fabricante
WHERE fabricante.nombre = 'Lenovo' AND producto.precio = (
SELECT MAX(precio)
FROM fabricante INNER JOIN producto
ON fabricante.codigo = producto.codigo_fabricante WHERE fabricante.nombre = 'Lenovo');
 
--9 4

-- final 

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