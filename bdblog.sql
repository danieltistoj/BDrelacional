-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.3.13-MariaDB-log - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura para tabla bdblog.articulo
CREATE TABLE IF NOT EXISTS `articulo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(45) DEFAULT NULL,
  `Contenido` text DEFAULT NULL,
  `fechacreacion` date DEFAULT NULL,
  `Usuario_id` int(11) NOT NULL,
  `Categoria_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Articulo_Usuario1_idx` (`Usuario_id`),
  KEY `fk_Articulo_Categoria1_idx` (`Categoria_id`),
  CONSTRAINT `fk_Articulo_Categoria1` FOREIGN KEY (`Categoria_id`) REFERENCES `categoria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Articulo_Usuario1` FOREIGN KEY (`Usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bdblog.articulo: ~18 rows (aproximadamente)
/*!40000 ALTER TABLE `articulo` DISABLE KEYS */;
INSERT INTO `articulo` (`id`, `Titulo`, `Contenido`, `fechacreacion`, `Usuario_id`, `Categoria_id`) VALUES
	(1, 'Articulo 1', 'Texto1', '2013-01-01', 1, 1),
	(2, 'Articulo 2', 'Texto2', '2013-01-01', 1, 2),
	(3, 'Articulo 3', 'Texto 3', '2013-01-05', 2, 1),
	(4, 'Articulo 4', 'Texto 4', '2013-01-21', 2, 3),
	(5, 'Articulo 5', 'Texto 5', '2013-01-29', 2, 4),
	(6, 'Articulo 6', 'Texto 6', '2013-02-01', 1, 2),
	(7, 'Articulo 7', 'Texto 7', '2013-02-15', 3, 5),
	(8, 'Articulo 8', 'Texto 8', '2013-02-21', 6, 3),
	(9, 'Articulo 9', 'Texto 9', '2013-02-21', 7, 5),
	(10, 'Articulo 10', 'Texto 10', '2013-03-02', 4, 1),
	(11, 'Articulo 11', 'Texto 11', '2013-03-05', 5, 8),
	(12, 'Articulo 12', 'Texto 12', '2013-03-18', 2, 4),
	(13, 'Articulo 13', 'Texto 13', '2013-04-19', 1, 5),
	(14, 'Articulo 14', 'Texto 14', '2013-08-01', 2, 1),
	(15, 'Articulo 15', 'Texto 15', '2013-09-12', 3, 3),
	(16, 'Articulo 16', 'Texto 16', '2014-01-01', 2, 1),
	(17, 'Articulo 17', 'Texto 17', '2014-01-05', 5, 2),
	(18, 'ARticulo 18', 'Texto 18', '2014-02-01', 2, 3);
  (19, 'ARticulo 19', 'Texto 18', '2014-02-01', 2, 3);
  (20, 'ARticulo 20', 'Texto 18', '2014-02-01', 2, 3);
  (21, 'ARticulo 21', 'Texto 18', '2014-02-01', 2, 3);
  (22, 'ARticulo 22', 'Texto 18', '2014-02-01', 2, 3);
  (23, 'ARticulo 23', 'Texto 18', '2014-02-01', 2, 3);
  (24, 'ARticulo 24', 'Texto 18', '2014-02-01', 2, 3);
  (25, 'ARticulo 25', 'Texto 18', '2014-02-01', 2, 3);
  (26, 'ARticulo 26', 'Texto 18', '2014-02-01', 2, 3);
  (27, 'ARticulo 27', 'Texto 18', '2014-02-01', 2, 3);
  (28, 'ARticulo 28', 'Texto 18', '2014-02-01', 2, 3);
  (29, 'ARticulo 29', 'Texto 18', '2014-02-01', 2, 3);
  (30, 'ARticulo 30', 'Texto 18', '2014-02-01', 2, 3);
  (31, 'ARticulo 31', 'Texto 18', '2014-02-01', 2, 3);
  (32, 'ARticulo 32', 'Texto 18', '2014-02-01', 2, 3);
  (33, 'ARticulo 33', 'Texto 18', '2014-02-01', 2, 3);
  (34, 'ARticulo 34', 'Texto 18', '2014-02-01', 2, 3);
  (35, 'ARticulo 35', 'Texto 18', '2014-02-01', 2, 3);
  (36, 'ARticulo 36', 'Texto 18', '2014-02-01', 2, 3);
  (37, 'ARticulo 37', 'Texto 18', '2014-02-01', 2, 3);
  (38, 'ARticulo 38', 'Texto 18', '2014-02-01', 2, 3);
  (39, 'ARticulo 39', 'Texto 18', '2014-02-01', 2, 3);
  (40, 'ARticulo 40', 'Texto 18', '2014-02-01', 2, 3);
  (41, 'ARticulo 41', 'Texto 18', '2014-02-01', 2, 3);
  (42, 'ARticulo 42', 'Texto 18', '2014-02-01', 2, 3);
  (43, 'ARticulo 43', 'Texto 18', '2014-02-01', 2, 3);
  (44, 'ARticulo 44', 'Texto 18', '2014-02-01', 2, 3);
  (45, 'ARticulo 45', 'Texto 18', '2014-02-01', 2, 3);
  (46, 'ARticulo 46', 'Texto 18', '2014-02-01', 2, 3);
  (47, 'ARticulo 47', 'Texto 18', '2014-02-01', 2, 3);
  (48, 'ARticulo 48', 'Texto 18', '2014-02-01', 2, 3);
  (49, 'ARticulo 49', 'Texto 18', '2014-02-01', 2, 3);
  (50, 'ARticulo 50', 'Texto 18', '2014-02-01', 2, 3);
/*!40000 ALTER TABLE `articulo` ENABLE KEYS */;

-- Volcando estructura para tabla bdblog.categoria
CREATE TABLE IF NOT EXISTS `categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Categoria` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bdblog.categoria: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` (`id`, `Categoria`) VALUES
	(1, 'Programación'),
	(2, 'Linux'),
	(3, 'Desarrollo Web'),
	(4, 'Servidores'),
	(5, 'Posicionamiento Internet'),
	(6, 'Redes'),
	(7, 'HTML'),
	(8, 'CSS');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;

-- Volcando estructura para tabla bdblog.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `nit` varchar(30) NOT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bdblog.cliente: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;

-- Volcando estructura para tabla bdblog.compra
CREATE TABLE IF NOT EXISTS `compra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `total` float NOT NULL,
  `no_factura` varchar(70) DEFAULT NULL,
  `proveedor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_compra_proveedor1_idx` (`proveedor_id`),
  CONSTRAINT `fk_compra_proveedor1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bdblog.compra: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;

-- Volcando estructura para tabla bdblog.credito
CREATE TABLE IF NOT EXISTS `credito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `abono` float NOT NULL,
  `fecha` date DEFAULT NULL,
  `proveedor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_credito_proveedor1_idx` (`proveedor_id`),
  CONSTRAINT `fk_credito_proveedor1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bdblog.credito: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `credito` DISABLE KEYS */;
/*!40000 ALTER TABLE `credito` ENABLE KEYS */;

-- Volcando estructura para tabla bdblog.credito_has_compra
CREATE TABLE IF NOT EXISTS `credito_has_compra` (
  `credito_id` int(11) NOT NULL AUTO_INCREMENT,
  `compra_id` int(11) NOT NULL,
  PRIMARY KEY (`credito_id`,`compra_id`),
  KEY `fk_credito_has_compra_compra1_idx` (`compra_id`),
  KEY `fk_credito_has_compra_credito1_idx` (`credito_id`),
  CONSTRAINT `fk_credito_has_compra_compra1` FOREIGN KEY (`compra_id`) REFERENCES `compra` (`id`),
  CONSTRAINT `fk_credito_has_compra_credito1` FOREIGN KEY (`credito_id`) REFERENCES `credito` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bdblog.credito_has_compra: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `credito_has_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `credito_has_compra` ENABLE KEYS */;

-- Volcando estructura para tabla bdblog.detalle_compra
CREATE TABLE IF NOT EXISTS `detalle_compra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `precio` float NOT NULL,
  `cantidad` int(11) NOT NULL,
  `compra_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_detalle_compra_compra1_idx` (`compra_id`),
  KEY `fk_detalle_compra_material1_idx` (`material_id`),
  CONSTRAINT `fk_detalle_compra_compra1` FOREIGN KEY (`compra_id`) REFERENCES `compra` (`id`),
  CONSTRAINT `fk_detalle_compra_material1` FOREIGN KEY (`material_id`) REFERENCES `material` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bdblog.detalle_compra: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `detalle_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_compra` ENABLE KEYS */;

-- Volcando estructura para tabla bdblog.detalle_pro
CREATE TABLE IF NOT EXISTS `detalle_pro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` int(11) NOT NULL,
  `precio` float NOT NULL,
  `factura_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `total` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_detalle_pro_factura1_idx` (`factura_id`),
  KEY `fk_detalle_pro_producto1_idx` (`producto_id`),
  CONSTRAINT `fk_detalle_pro_factura1` FOREIGN KEY (`factura_id`) REFERENCES `factura` (`id`),
  CONSTRAINT `fk_detalle_pro_producto1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bdblog.detalle_pro: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `detalle_pro` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_pro` ENABLE KEYS */;

-- Volcando estructura para tabla bdblog.factura
CREATE TABLE IF NOT EXISTS `factura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `total` float NOT NULL,
  `nit` varchar(30) NOT NULL,
  `numFactura` varchar(30) DEFAULT NULL,
  `cliente_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_factura_cliente1_idx` (`cliente_id`),
  CONSTRAINT `fk_factura_cliente1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bdblog.factura: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;

-- Volcando estructura para tabla bdblog.factura_has_pago
CREATE TABLE IF NOT EXISTS `factura_has_pago` (
  `factura_id` int(11) NOT NULL AUTO_INCREMENT,
  `pago_id` int(11) NOT NULL,
  PRIMARY KEY (`factura_id`,`pago_id`),
  KEY `fk_factura_has_pago_pago1_idx` (`pago_id`),
  KEY `fk_factura_has_pago_factura1_idx` (`factura_id`),
  CONSTRAINT `fk_factura_has_pago_factura1` FOREIGN KEY (`factura_id`) REFERENCES `factura` (`id`),
  CONSTRAINT `fk_factura_has_pago_pago1` FOREIGN KEY (`pago_id`) REFERENCES `pago` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bdblog.factura_has_pago: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `factura_has_pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura_has_pago` ENABLE KEYS */;

-- Volcando estructura para tabla bdblog.foto
CREATE TABLE IF NOT EXISTS `foto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(45) DEFAULT NULL,
  `Articulo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Foto_Articulo1_idx` (`Articulo_id`),
  CONSTRAINT `fk_Foto_Articulo1` FOREIGN KEY (`Articulo_id`) REFERENCES `articulo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bdblog.foto: ~34 rows (aproximadamente)
/*!40000 ALTER TABLE `foto` DISABLE KEYS */;
INSERT INTO `foto` (`id`, `path`, `Articulo_id`) VALUES
	(1, '/home/web/foto1', 1),
	(2, '/home/web/foto2', 2),
	(3, '/home/web/foto3', 3),
	(4, '/home/web/foto5', 8),
	(5, '/home/web/foto4', 2),
	(6, '/home/web/foto5', 16),
	(7, '/home/web/foto6', 12),
	(8, '/home/web/foto8', 14),
	(9, '/home/web/foto9', 12),
	(10, '/home/web/foto10', 12),
	(11, '/home/web/foto11', 11),
	(12, '/home/web/foto14', 12),
	(13, '/home/web/foto15', 5),
	(14, '/home/web/foto16', 4),
	(15, '/home/web/foto12', 3),
	(16, '/home/web/foto17', 8),
	(17, '/home/web/foto19', 8),
	(18, '/home/web/foto20', 8),
	(19, '/home/web/foto21', 10),
	(20, '/home/web/foto22', 10),
	(21, '/home/web/foto23', 10),
	(22, '/home/web/foto24', 11),
	(23, '/home/web/foto25', 10),
	(24, '/home/web/foto26', 10),
	(25, '/home/web/foto30', 15),
	(26, '/home/web/foto23', 17),
	(27, '/home/web/foto21', 14),
	(28, '/home/web/foto264', 17),
	(29, '/home/web/foto234', 14),
	(30, '/home/web/foto12323', 1),
	(31, '/home/web/foto1', 2),
	(32, '/home/web/foto1', 3),
	(33, '/home/web/foto23', 12),
	(34, '/home/web/foto134', 2);
/*!40000 ALTER TABLE `foto` ENABLE KEYS */;

-- Volcando estructura para tabla bdblog.material
CREATE TABLE IF NOT EXISTS `material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `alto` float DEFAULT NULL,
  `ancho` float DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `color` varchar(50) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `costo` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bdblog.material: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
/*!40000 ALTER TABLE `material` ENABLE KEYS */;

-- Volcando estructura para tabla bdblog.pago
CREATE TABLE IF NOT EXISTS `pago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `abono` float NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `numPago` varchar(50) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pago_cliente_idx` (`cliente_id`),
  CONSTRAINT `fk_pago_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bdblog.pago: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;

-- Volcando estructura para tabla bdblog.perfil
CREATE TABLE IF NOT EXISTS `perfil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Pais` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bdblog.perfil: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` (`id`, `Nombre`, `Apellido`, `Pais`, `Direccion`) VALUES
	(1, 'RONY YEISON', 'ARDIANO VELASQUEZ', 'GUATEMALA', 'CIUDAD'),
	(2, 'MARLON ROBERTO ', 'OROZCO VELÁSQUEZ', 'HONDURAS', 'CIUDAD'),
	(3, 'LEVIS AMILCAR', 'VELASQUEZ BARRIOS', 'COSTA RICA', 'CIUDAD'),
	(4, 'EDELINDA FABIOLA ', 'DIAZ FUENTES', 'GUATEMALA', 'CIUDAD'),
	(5, 'ANGEL LEONEL', 'ALVARADO', 'HONDURAS', 'CIUDAD'),
	(6, 'LUCIA', 'ALVARADO', 'GUATEMALA', 'CIUDAD'),
	(7, 'KARINA', 'DE LEON', 'HONDURAS', 'CIUDAD'),
	(8, 'JORGE', 'DE LEON', 'GUATEMALA', 'CIUDAD'),
	(9, 'SONIA', 'FUENTES', 'COSTA RICA', 'CIUDAD');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;

-- Volcando estructura para tabla bdblog.producto
CREATE TABLE IF NOT EXISTS `producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(400) DEFAULT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` float DEFAULT NULL,
  `costoProduccion` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bdblog.producto: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;

-- Volcando estructura para tabla bdblog.producto_has_material
CREATE TABLE IF NOT EXISTS `producto_has_material` (
  `producto_id` int(11) NOT NULL AUTO_INCREMENT,
  `material_id` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  PRIMARY KEY (`producto_id`,`material_id`),
  KEY `fk_producto_has_material_material1_idx` (`material_id`),
  KEY `fk_producto_has_material_producto1_idx` (`producto_id`),
  CONSTRAINT `fk_producto_has_material_material1` FOREIGN KEY (`material_id`) REFERENCES `material` (`id`),
  CONSTRAINT `fk_producto_has_material_producto1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bdblog.producto_has_material: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `producto_has_material` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto_has_material` ENABLE KEYS */;

-- Volcando estructura para tabla bdblog.proveedor
CREATE TABLE IF NOT EXISTS `proveedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `celular` varchar(30) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `num_cuenta` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bdblog.proveedor: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;

-- Volcando estructura para tabla bdblog.tipo_usuario
CREATE TABLE IF NOT EXISTS `tipo_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bdblog.tipo_usuario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_usuario` ENABLE KEYS */;

-- Volcando estructura para tabla bdblog.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `fechacreacion` date DEFAULT NULL,
  `perfil_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Usuario_perfil_idx` (`perfil_id`),
  CONSTRAINT `fk_Usuario_perfil` FOREIGN KEY (`perfil_id`) REFERENCES `perfil` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bdblog.usuario: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id`, `usuario`, `password`, `fechacreacion`, `perfil_id`) VALUES
	(1, 'US1', '123', '2013-08-01', 1),
	(2, 'US2', '456', '2013-08-23', 2),
	(3, 'US3', '789', '2013-09-14', 3),
	(4, 'US4', 'ABC', '2013-09-25', 4),
	(5, 'US5', 'DFG', '2013-10-13', 5),
	(6, 'US6', '12222', '2013-11-12', 6),
	(7, 'US8', '12345', '2013-12-25', 7),
	(8, 'US9', 'DFFV', '2014-01-02', 8),
	(9, 'US10', 'AAAA', '2014-02-14', 9);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

-- Volcando estructura para tabla bdblog.votos
CREATE TABLE IF NOT EXISTS `votos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Articulo_id` int(11) NOT NULL,
  `Usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Articulo_has_Usuario_Usuario1_idx` (`Usuario_id`),
  KEY `fk_Articulo_has_Usuario_Articulo1_idx` (`Articulo_id`),
  CONSTRAINT `fk_Articulo_has_Usuario_Articulo1` FOREIGN KEY (`Articulo_id`) REFERENCES `articulo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Articulo_has_Usuario_Usuario1` FOREIGN KEY (`Usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bdblog.votos: ~30 rows (aproximadamente)
/*!40000 ALTER TABLE `votos` DISABLE KEYS */;
INSERT INTO `votos` (`id`, `Articulo_id`, `Usuario_id`) VALUES
	(1, 1, 2),
	(2, 1, 1),
	(3, 1, 3),
	(4, 1, 4),
	(5, 2, 1),
	(6, 2, 2),
	(7, 3, 3),
	(8, 3, 4),
	(9, 3, 5),
	(10, 4, 7),
	(11, 4, 1),
	(12, 15, 6),
	(13, 16, 2),
	(14, 16, 1),
	(15, 16, 7),
	(16, 15, 7),
	(17, 16, 1),
	(18, 16, 2),
	(19, 16, 3),
	(20, 17, 2),
	(21, 14, 2),
	(22, 13, 2),
	(23, 13, 1),
	(24, 13, 3),
	(25, 13, 5),
	(26, 13, 4),
	(27, 10, 1),
	(28, 10, 2),
	(29, 10, 3),
	(30, 9, 1);
/*!40000 ALTER TABLE `votos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
