CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `createdAt` bigint(20) DEFAULT NULL,
  `updatedAt` bigint(20) DEFAULT NULL,
   PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE usuarios CHANGE updatedAt actulizado

DATE NOT NULL DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE `usuarios` CHANGE `createdAt` `creado` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP;