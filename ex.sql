DROP DATABASE IF EXISTS app;
CREATE DATABASE app;
USE app;
DROP TABLE IF EXISTS articulos;
CREATE TABLE articulos (
  `codigo` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` int(11) DEFAULT NULL,
  `imagen` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO articulos (`codigo`, `descripcion`, `precio`, `imagen`) VALUES
(1, 'Acer', 21000, '/img/acer.jpg'),
(2, 'Dell', 22000, '/img/dell.jpg'),
(4, 'Hewlett-Packard', 23000, '/img/hp.jpg'),
(5, 'Huawei', 24000, '/img/huawei.jpg'),
(6, 'Lenovo', 25000, '/img/lenovo.jpg'),
(7, 'Samsung', 26000, '/img/samsung.jpg'),
(9, 'Mac Book', 3000, '/img/apple.jpg'),
(10, 'imac', 3800, 'https://m.media-amazon.com/images/I/81blwMhVV8L._AC_SL1500_.jpg');

