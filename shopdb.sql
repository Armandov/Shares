-- Modos SQL
-- https://dev.mysql.com/doc/refman/8.0/en/sql-mode.html
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*NO_AUTO_VALUE_ON_ZERO afecta el manejo de las AUTO_INCREMENT columnas. 
Normalmente, genera el siguiente número de secuencia para la columna insertando NULLo 0en ella. 
NO_AUTO_VALUE_ON_ZERO suprime este comportamiento para 0que solo NULLgenere el siguiente número de secuencia.*/
--
-- Base de datos: `app`
--

DROP DATABASE IF EXISTS app;
CREATE DATABASE app CHARACTER SET utf8mb4;
USE app;
DROP TABLE IF EXISTS articulos;
CREATE TABLE articulos (
  `codigo` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` int(11) DEFAULT NULL,
  `imagen` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Estructura de tabla para la tabla `articulos`
--
DROP DATABASE IF EXISTS app;
CREATE DATABASE app;
USE app;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE pedidos (
  `pedido` int(11) NOT NULL,
  `cliente` varchar(255) NOT NULL,
  `ciudad` varchar(255) NOT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO pedidos (`pedido`, `cliente`, `ciudad`, `total`) VALUES
(1, 'Walmart', 'Cdmx', 15000),
(2, 'Soriana', 'Leon', 20000),
(3, 'Sears', 'Veracruz', 30000),
(4, 'Sanborns', 'Cdmx', 40000),
(5, 'Comercial', 'Nuevo Leon', 50000),
(6, 'Aurrera', 'cdmx', 60000),
(8, 'Sumesa', 'cdmx', 80000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE articulos
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE pedidos
  ADD PRIMARY KEY (`pedido`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE articulos
  MODIFY codigo int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE pedidos
  MODIFY pedido int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;
