-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para bdbreeze
CREATE DATABASE IF NOT EXISTS `bdbreeze` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `bdbreeze`;

-- Volcando estructura para tabla bdbreeze.detalle_publicacion
CREATE TABLE IF NOT EXISTS `detalle_publicacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `condicion` tinyint(4) NOT NULL COMMENT '1 nuevo 0 usado',
  `id_marca` int(11) NOT NULL,
  `anio` year(4) NOT NULL,
  `cantidad_puertas` int(11) NOT NULL,
  `id_tipo_combustible` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_marca` (`id_marca`),
  KEY `id_tipo_combustible` (`id_tipo_combustible`),
  CONSTRAINT `detalle_publicacion_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marca_vehiculo` (`id`),
  CONSTRAINT `detalle_publicacion_ibfk_2` FOREIGN KEY (`id_tipo_combustible`) REFERENCES `tipo_combustible` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla bdbreeze.detalle_publicacion: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `detalle_publicacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_publicacion` ENABLE KEYS */;

-- Volcando estructura para tabla bdbreeze.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bdbreeze.failed_jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando estructura para tabla bdbreeze.foto_publicacion
CREATE TABLE IF NOT EXISTS `foto_publicacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_publicacion` int(11) NOT NULL,
  `url` varchar(60) COLLATE utf8_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_publicacion` (`id_publicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla bdbreeze.foto_publicacion: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `foto_publicacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `foto_publicacion` ENABLE KEYS */;

-- Volcando estructura para tabla bdbreeze.marca_vehiculo
CREATE TABLE IF NOT EXISTS `marca_vehiculo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) COLLATE utf8_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla bdbreeze.marca_vehiculo: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `marca_vehiculo` DISABLE KEYS */;
INSERT INTO `marca_vehiculo` (`id`, `descripcion`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'RENAULT', '2022-08-05 21:51:37', '2022-08-05 21:51:37', '2022-08-05 21:51:37'),
	(2, 'FORD', '2022-08-05 21:51:37', '2022-08-05 21:51:37', '2022-08-05 21:51:37');
/*!40000 ALTER TABLE `marca_vehiculo` ENABLE KEYS */;

-- Volcando estructura para tabla bdbreeze.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bdbreeze.migrations: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla bdbreeze.moneda
CREATE TABLE IF NOT EXISTS `moneda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) COLLATE utf8_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla bdbreeze.moneda: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `moneda` DISABLE KEYS */;
INSERT INTO `moneda` (`id`, `descripcion`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, '$', '2022-08-05 22:30:21', '2022-08-05 22:30:21', '2022-08-05 22:30:21'),
	(2, 'USD$', '2022-08-05 22:30:21', '2022-08-05 22:30:21', '2022-08-05 22:30:21'),
	(3, ' €', '2022-08-05 22:30:21', '2022-08-05 22:30:21', '2022-08-05 22:30:21');
/*!40000 ALTER TABLE `moneda` ENABLE KEYS */;

-- Volcando estructura para tabla bdbreeze.pago
CREATE TABLE IF NOT EXISTS `pago` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla bdbreeze.pago: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;

-- Volcando estructura para tabla bdbreeze.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bdbreeze.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla bdbreeze.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bdbreeze.personal_access_tokens: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Volcando estructura para tabla bdbreeze.publicacion
CREATE TABLE IF NOT EXISTS `publicacion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_user` bigint(20) unsigned NOT NULL,
  `id_subrubro` int(11) NOT NULL,
  `id_tipo_operacion` int(11) NOT NULL,
  `tabla_detalle_nombre` varchar(100) COLLATE utf8_bin NOT NULL COMMENT 'detalle_publicacion_vehiculo, detalle_publicacion_inmueble',
  `id_detalle` int(11) NOT NULL,
  `estado` tinyint(4) NOT NULL COMMENT '0 inactivo 1 activo',
  `vencimiento` datetime NOT NULL,
  `titulo` varchar(100) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(500) COLLATE utf8_bin NOT NULL,
  `id_moneda` int(11) NOT NULL,
  `precio` float(9,2) NOT NULL,
  `visibilidad_whatsapp` tinyint(4) NOT NULL,
  `visibilidad_llamado` tinyint(4) NOT NULL,
  `visibilidad_sms` tinyint(4) NOT NULL,
  `visibilidad_telefono` tinyint(4) NOT NULL,
  `visibilidad_email` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_subrubro` (`id_subrubro`),
  KEY `id_user` (`id_user`),
  KEY `id_moneda` (`id_moneda`),
  KEY `id_tipo_operacion` (`id_tipo_operacion`),
  CONSTRAINT `publicacion_ibfk_1` FOREIGN KEY (`id_subrubro`) REFERENCES `subrubro` (`id`),
  CONSTRAINT `publicacion_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  CONSTRAINT `publicacion_ibfk_3` FOREIGN KEY (`id_moneda`) REFERENCES `moneda` (`id`),
  CONSTRAINT `publicacion_ibfk_4` FOREIGN KEY (`id_tipo_operacion`) REFERENCES `tipo_operacion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla bdbreeze.publicacion: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `publicacion` DISABLE KEYS */;
INSERT INTO `publicacion` (`id`, `id_user`, `id_subrubro`, `id_tipo_operacion`, `tabla_detalle_nombre`, `id_detalle`, `estado`, `vencimiento`, `titulo`, `descripcion`, `id_moneda`, `precio`, `visibilidad_whatsapp`, `visibilidad_llamado`, `visibilidad_sms`, `visibilidad_telefono`, `visibilidad_email`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 1, 1, 1, '', 0, 1, '2022-08-05 22:27:15', 'vendo excelente auto Ford Fista Kinetic titanium\r\n', 'Dirección: Eléctrica, Frenos ABS,Alarma,Control eléctrico para los retrovisores, Reproductor de MP3\r\n7 Airbags, RTV, Cierrecentralizado, bateria nueva (1mes) bujías nuevas (15 días) , cubiertas en buen estado', 1, 1700000.00, 1, 1, 0, 1, 0, '2022-08-05 22:27:15', '2022-08-05 22:27:15', '2022-08-05 22:27:15'),
	(2, 1, 1, 1, '', 0, 1, '2022-08-05 22:27:15', 'Gol Power 2013 con gnc 5ta', 'papeles al dia, listo para transferir', 1, 10000000.00, 1, 1, 1, 0, 0, '2022-08-05 22:27:15', '2022-08-05 22:27:15', '2022-08-05 22:27:15');
/*!40000 ALTER TABLE `publicacion` ENABLE KEYS */;

-- Volcando estructura para tabla bdbreeze.rubro
CREATE TABLE IF NOT EXISTS `rubro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(150) COLLATE utf8_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla bdbreeze.rubro: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `rubro` DISABLE KEYS */;
INSERT INTO `rubro` (`id`, `descripcion`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'VEHICULOS', '2022-08-05 21:47:55', '2022-08-05 21:47:55', '2022-08-05 21:47:55'),
	(2, 'INMUEBLES', '2022-08-05 21:47:55', '2022-08-05 21:47:55', '2022-08-05 21:47:55');
/*!40000 ALTER TABLE `rubro` ENABLE KEYS */;

-- Volcando estructura para tabla bdbreeze.subrubro
CREATE TABLE IF NOT EXISTS `subrubro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_rubro` int(11) NOT NULL,
  `descripcion` varchar(150) COLLATE utf8_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_subrubro` (`id_rubro`),
  CONSTRAINT `subrubro_ibfk_1` FOREIGN KEY (`id_rubro`) REFERENCES `rubro` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla bdbreeze.subrubro: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `subrubro` DISABLE KEYS */;
INSERT INTO `subrubro` (`id`, `id_rubro`, `descripcion`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 1, '4X4', '2022-08-05 21:48:43', '2022-08-05 21:48:43', '2022-08-05 21:48:43'),
	(2, 1, 'ACCESORIOS', '2022-08-05 21:48:43', '2022-08-05 21:48:43', '2022-08-05 21:48:43'),
	(3, 2, 'CASAS', '2022-08-05 21:48:43', '2022-08-05 21:48:43', '2022-08-05 21:48:43'),
	(4, 2, 'DEPARTAMENTOS', '2022-08-05 21:48:43', '2022-08-05 21:48:43', '2022-08-05 21:48:43');
/*!40000 ALTER TABLE `subrubro` ENABLE KEYS */;

-- Volcando estructura para tabla bdbreeze.tipo_combustible
CREATE TABLE IF NOT EXISTS `tipo_combustible` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla bdbreeze.tipo_combustible: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_combustible` DISABLE KEYS */;
INSERT INTO `tipo_combustible` (`id`, `descripcion`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'NAFTA', '2022-08-05 23:08:14', '2022-08-05 23:08:14', '2022-08-05 23:08:14'),
	(2, 'GNC', '2022-08-05 23:08:14', '2022-08-05 23:08:14', '2022-08-05 23:08:14'),
	(3, 'DIESEL', '2022-08-05 23:08:14', '2022-08-05 23:08:14', '2022-08-05 23:08:14'),
	(4, 'OTROS', '2022-08-05 23:08:14', '2022-08-05 23:08:14', '2022-08-05 23:08:14');
/*!40000 ALTER TABLE `tipo_combustible` ENABLE KEYS */;

-- Volcando estructura para tabla bdbreeze.tipo_operacion
CREATE TABLE IF NOT EXISTS `tipo_operacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla bdbreeze.tipo_operacion: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_operacion` DISABLE KEYS */;
INSERT INTO `tipo_operacion` (`id`, `nombre`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'VENTA', '2022-08-05 21:55:06', '2022-08-05 21:55:06', '2022-08-05 21:55:06'),
	(2, 'ALQUILER', '2022-08-05 21:55:06', '2022-08-05 21:55:06', '2022-08-05 21:55:06'),
	(3, 'COMPRA', '2022-08-05 21:55:06', '2022-08-05 21:55:06', '2022-08-05 21:55:06'),
	(4, 'DONACION', '2022-08-05 21:55:06', '2022-08-05 21:55:06', '2022-08-05 21:55:06'),
	(5, 'COMPRA/ALQUILER', '2022-08-05 21:55:06', '2022-08-05 21:55:06', '2022-08-05 21:55:06');
/*!40000 ALTER TABLE `tipo_operacion` ENABLE KEYS */;

-- Volcando estructura para tabla bdbreeze.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla bdbreeze.users: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'ADMINISTRADOR', 'admin@admin.com', NULL, '$2y$10$5SnTq5XgR4hACZ2yPelm4uJVV8voyenuHOYwPAdX9HijQzW6RPJpm', 'AanwX1XDKSlAT4uz9C0jMtNj6KO1yHqfYNqXQg4IBeoeNz7zenLNuLrEKyzD', '2022-07-30 11:38:36', '2022-07-30 11:38:36');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
