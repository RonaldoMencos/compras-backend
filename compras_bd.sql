-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-10-2023 a las 04:51:28
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `compras_bd`
--
CREATE DATABASE IF NOT EXISTS `compras_bd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `compras_bd`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `action_parameters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`action_parameters`)),
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `action`, `action_parameters`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::upload.read', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.340000', '2023-10-15 12:25:03.340000', NULL, NULL),
(2, 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.349000', '2023-10-15 12:25:03.349000', NULL, NULL),
(3, 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.357000', '2023-10-15 12:25:03.357000', NULL, NULL),
(4, 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.363000', '2023-10-15 12:25:03.363000', NULL, NULL),
(5, 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.368000', '2023-10-15 12:25:03.368000', NULL, NULL),
(6, 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.374000', '2023-10-15 12:25:03.374000', NULL, NULL),
(7, 'plugin::upload.read', '{}', NULL, '{}', '[\"admin::is-creator\"]', '2023-10-15 12:25:03.380000', '2023-10-15 12:25:03.380000', NULL, NULL),
(8, 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.385000', '2023-10-15 12:25:03.385000', NULL, NULL),
(9, 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.390000', '2023-10-15 12:25:03.390000', NULL, NULL),
(10, 'plugin::upload.assets.update', '{}', NULL, '{}', '[\"admin::is-creator\"]', '2023-10-15 12:25:03.395000', '2023-10-15 12:25:03.395000', NULL, NULL),
(11, 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.400000', '2023-10-15 12:25:03.400000', NULL, NULL),
(12, 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.405000', '2023-10-15 12:25:03.405000', NULL, NULL),
(13, 'plugin::content-manager.explorer.create', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2023-10-15 12:25:03.435000', '2023-10-15 12:25:03.435000', NULL, NULL),
(14, 'plugin::content-manager.explorer.read', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2023-10-15 12:25:03.442000', '2023-10-15 12:25:03.442000', NULL, NULL),
(15, 'plugin::content-manager.explorer.update', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2023-10-15 12:25:03.448000', '2023-10-15 12:25:03.448000', NULL, NULL),
(16, 'plugin::content-manager.explorer.delete', '{}', 'plugin::users-permissions.user', '{}', '[]', '2023-10-15 12:25:03.452000', '2023-10-15 12:25:03.452000', NULL, NULL),
(17, 'plugin::content-manager.single-types.configure-view', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.457000', '2023-10-15 12:25:03.457000', NULL, NULL),
(18, 'plugin::content-manager.collection-types.configure-view', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.461000', '2023-10-15 12:25:03.461000', NULL, NULL),
(19, 'plugin::content-manager.components.configure-layout', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.465000', '2023-10-15 12:25:03.465000', NULL, NULL),
(20, 'plugin::content-type-builder.read', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.470000', '2023-10-15 12:25:03.470000', NULL, NULL),
(21, 'plugin::email.settings.read', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.475000', '2023-10-15 12:25:03.475000', NULL, NULL),
(22, 'plugin::upload.read', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.482000', '2023-10-15 12:25:03.482000', NULL, NULL),
(23, 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.487000', '2023-10-15 12:25:03.487000', NULL, NULL),
(24, 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.492000', '2023-10-15 12:25:03.492000', NULL, NULL),
(25, 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.497000', '2023-10-15 12:25:03.497000', NULL, NULL),
(26, 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.502000', '2023-10-15 12:25:03.502000', NULL, NULL),
(27, 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.506000', '2023-10-15 12:25:03.506000', NULL, NULL),
(28, 'plugin::upload.settings.read', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.512000', '2023-10-15 12:25:03.512000', NULL, NULL),
(29, 'plugin::users-permissions.roles.create', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.516000', '2023-10-15 12:25:03.516000', NULL, NULL),
(30, 'plugin::users-permissions.roles.read', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.520000', '2023-10-15 12:25:03.520000', NULL, NULL),
(31, 'plugin::users-permissions.roles.update', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.523000', '2023-10-15 12:25:03.523000', NULL, NULL),
(32, 'plugin::users-permissions.roles.delete', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.528000', '2023-10-15 12:25:03.528000', NULL, NULL),
(33, 'plugin::users-permissions.providers.read', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.532000', '2023-10-15 12:25:03.532000', NULL, NULL),
(34, 'plugin::users-permissions.providers.update', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.535000', '2023-10-15 12:25:03.535000', NULL, NULL),
(35, 'plugin::users-permissions.email-templates.read', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.540000', '2023-10-15 12:25:03.540000', NULL, NULL),
(36, 'plugin::users-permissions.email-templates.update', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.544000', '2023-10-15 12:25:03.544000', NULL, NULL),
(37, 'plugin::users-permissions.advanced-settings.read', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.548000', '2023-10-15 12:25:03.548000', NULL, NULL),
(38, 'plugin::users-permissions.advanced-settings.update', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.552000', '2023-10-15 12:25:03.552000', NULL, NULL),
(39, 'plugin::i18n.locale.create', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.557000', '2023-10-15 12:25:03.557000', NULL, NULL),
(40, 'plugin::i18n.locale.read', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.562000', '2023-10-15 12:25:03.562000', NULL, NULL),
(41, 'plugin::i18n.locale.update', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.566000', '2023-10-15 12:25:03.566000', NULL, NULL),
(42, 'plugin::i18n.locale.delete', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.572000', '2023-10-15 12:25:03.572000', NULL, NULL),
(43, 'admin::marketplace.read', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.577000', '2023-10-15 12:25:03.577000', NULL, NULL),
(44, 'admin::webhooks.create', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.581000', '2023-10-15 12:25:03.581000', NULL, NULL),
(45, 'admin::webhooks.read', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.586000', '2023-10-15 12:25:03.586000', NULL, NULL),
(46, 'admin::webhooks.update', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.589000', '2023-10-15 12:25:03.589000', NULL, NULL),
(47, 'admin::webhooks.delete', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.593000', '2023-10-15 12:25:03.593000', NULL, NULL),
(48, 'admin::users.create', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.597000', '2023-10-15 12:25:03.597000', NULL, NULL),
(49, 'admin::users.read', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.600000', '2023-10-15 12:25:03.600000', NULL, NULL),
(50, 'admin::users.update', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.605000', '2023-10-15 12:25:03.605000', NULL, NULL),
(51, 'admin::users.delete', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.609000', '2023-10-15 12:25:03.609000', NULL, NULL),
(52, 'admin::roles.create', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.612000', '2023-10-15 12:25:03.612000', NULL, NULL),
(53, 'admin::roles.read', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.617000', '2023-10-15 12:25:03.617000', NULL, NULL),
(54, 'admin::roles.update', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.621000', '2023-10-15 12:25:03.621000', NULL, NULL),
(55, 'admin::roles.delete', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.624000', '2023-10-15 12:25:03.624000', NULL, NULL),
(56, 'admin::api-tokens.access', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.628000', '2023-10-15 12:25:03.628000', NULL, NULL),
(57, 'admin::api-tokens.create', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.632000', '2023-10-15 12:25:03.632000', NULL, NULL),
(58, 'admin::api-tokens.read', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.639000', '2023-10-15 12:25:03.639000', NULL, NULL),
(59, 'admin::api-tokens.update', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.643000', '2023-10-15 12:25:03.643000', NULL, NULL),
(60, 'admin::api-tokens.regenerate', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.647000', '2023-10-15 12:25:03.647000', NULL, NULL),
(61, 'admin::api-tokens.delete', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.650000', '2023-10-15 12:25:03.650000', NULL, NULL),
(62, 'admin::project-settings.update', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.654000', '2023-10-15 12:25:03.654000', NULL, NULL),
(63, 'admin::project-settings.read', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.658000', '2023-10-15 12:25:03.658000', NULL, NULL),
(64, 'admin::transfer.tokens.access', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.661000', '2023-10-15 12:25:03.661000', NULL, NULL),
(65, 'admin::transfer.tokens.create', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.666000', '2023-10-15 12:25:03.666000', NULL, NULL),
(66, 'admin::transfer.tokens.read', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.670000', '2023-10-15 12:25:03.670000', NULL, NULL),
(67, 'admin::transfer.tokens.update', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.674000', '2023-10-15 12:25:03.674000', NULL, NULL),
(68, 'admin::transfer.tokens.regenerate', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.679000', '2023-10-15 12:25:03.679000', NULL, NULL),
(69, 'admin::transfer.tokens.delete', '{}', NULL, '{}', '[]', '2023-10-15 12:25:03.686000', '2023-10-15 12:25:03.686000', NULL, NULL),
(70, 'plugin::content-manager.explorer.create', '{}', 'api::departamento.departamento', '{\"fields\":[\"nombre\",\"ubicacion\"]}', '[]', '2023-10-15 12:26:17.460000', '2023-10-15 12:26:17.460000', NULL, NULL),
(71, 'plugin::content-manager.explorer.read', '{}', 'api::departamento.departamento', '{\"fields\":[\"nombre\",\"ubicacion\"]}', '[]', '2023-10-15 12:26:17.467000', '2023-10-15 12:26:17.467000', NULL, NULL),
(72, 'plugin::content-manager.explorer.update', '{}', 'api::departamento.departamento', '{\"fields\":[\"nombre\",\"ubicacion\"]}', '[]', '2023-10-15 12:26:17.472000', '2023-10-15 12:26:17.472000', NULL, NULL),
(73, 'plugin::content-manager.explorer.delete', '{}', 'api::departamento.departamento', '{}', '[]', '2023-10-15 12:26:17.478000', '2023-10-15 12:26:17.478000', NULL, NULL),
(74, 'plugin::content-manager.explorer.publish', '{}', 'api::departamento.departamento', '{}', '[]', '2023-10-15 12:26:17.482000', '2023-10-15 12:26:17.482000', NULL, NULL),
(75, 'plugin::content-manager.explorer.create', '{}', 'api::empleado.empleado', '{\"fields\":[\"nombres\",\"apellidos\",\"telefono\",\"correo\",\"departamento\"]}', '[]', '2023-10-15 12:27:09.298000', '2023-10-15 12:27:09.298000', NULL, NULL),
(76, 'plugin::content-manager.explorer.read', '{}', 'api::empleado.empleado', '{\"fields\":[\"nombres\",\"apellidos\",\"telefono\",\"correo\",\"departamento\"]}', '[]', '2023-10-15 12:27:09.305000', '2023-10-15 12:27:09.305000', NULL, NULL),
(77, 'plugin::content-manager.explorer.update', '{}', 'api::empleado.empleado', '{\"fields\":[\"nombres\",\"apellidos\",\"telefono\",\"correo\",\"departamento\"]}', '[]', '2023-10-15 12:27:09.310000', '2023-10-15 12:27:09.310000', NULL, NULL),
(78, 'plugin::content-manager.explorer.delete', '{}', 'api::empleado.empleado', '{}', '[]', '2023-10-15 12:27:09.315000', '2023-10-15 12:27:09.315000', NULL, NULL),
(79, 'plugin::content-manager.explorer.publish', '{}', 'api::empleado.empleado', '{}', '[]', '2023-10-15 12:27:09.319000', '2023-10-15 12:27:09.319000', NULL, NULL),
(80, 'plugin::content-manager.explorer.create', '{}', 'api::producto-categoria.producto-categoria', '{\"fields\":[\"nombre\"]}', '[]', '2023-10-15 12:27:34.766000', '2023-10-15 12:27:34.766000', NULL, NULL),
(81, 'plugin::content-manager.explorer.read', '{}', 'api::producto-categoria.producto-categoria', '{\"fields\":[\"nombre\"]}', '[]', '2023-10-15 12:27:34.775000', '2023-10-15 12:27:34.775000', NULL, NULL),
(82, 'plugin::content-manager.explorer.update', '{}', 'api::producto-categoria.producto-categoria', '{\"fields\":[\"nombre\"]}', '[]', '2023-10-15 12:27:34.781000', '2023-10-15 12:27:34.781000', NULL, NULL),
(83, 'plugin::content-manager.explorer.delete', '{}', 'api::producto-categoria.producto-categoria', '{}', '[]', '2023-10-15 12:27:34.787000', '2023-10-15 12:27:34.787000', NULL, NULL),
(84, 'plugin::content-manager.explorer.publish', '{}', 'api::producto-categoria.producto-categoria', '{}', '[]', '2023-10-15 12:27:34.795000', '2023-10-15 12:27:34.795000', NULL, NULL),
(85, 'plugin::content-manager.explorer.create', '{}', 'api::producto.producto', '{\"fields\":[\"nombre\",\"marca\",\"producto_categoria\"]}', '[]', '2023-10-15 12:28:47.030000', '2023-10-15 12:28:47.030000', NULL, NULL),
(86, 'plugin::content-manager.explorer.read', '{}', 'api::producto.producto', '{\"fields\":[\"nombre\",\"marca\",\"producto_categoria\"]}', '[]', '2023-10-15 12:28:47.037000', '2023-10-15 12:28:47.037000', NULL, NULL),
(87, 'plugin::content-manager.explorer.update', '{}', 'api::producto.producto', '{\"fields\":[\"nombre\",\"marca\",\"producto_categoria\"]}', '[]', '2023-10-15 12:28:47.042000', '2023-10-15 12:28:47.042000', NULL, NULL),
(88, 'plugin::content-manager.explorer.delete', '{}', 'api::producto.producto', '{}', '[]', '2023-10-15 12:28:47.048000', '2023-10-15 12:28:47.048000', NULL, NULL),
(89, 'plugin::content-manager.explorer.publish', '{}', 'api::producto.producto', '{}', '[]', '2023-10-15 12:28:47.054000', '2023-10-15 12:28:47.054000', NULL, NULL),
(90, 'plugin::content-manager.explorer.create', '{}', 'api::solicitud-compra-estado.solicitud-compra-estado', '{\"fields\":[\"nombre\"]}', '[]', '2023-10-15 12:29:39.999000', '2023-10-15 12:29:39.999000', NULL, NULL),
(91, 'plugin::content-manager.explorer.read', '{}', 'api::solicitud-compra-estado.solicitud-compra-estado', '{\"fields\":[\"nombre\"]}', '[]', '2023-10-15 12:29:40.006000', '2023-10-15 12:29:40.006000', NULL, NULL),
(92, 'plugin::content-manager.explorer.update', '{}', 'api::solicitud-compra-estado.solicitud-compra-estado', '{\"fields\":[\"nombre\"]}', '[]', '2023-10-15 12:29:40.022000', '2023-10-15 12:29:40.022000', NULL, NULL),
(93, 'plugin::content-manager.explorer.delete', '{}', 'api::solicitud-compra-estado.solicitud-compra-estado', '{}', '[]', '2023-10-15 12:29:40.028000', '2023-10-15 12:29:40.028000', NULL, NULL),
(94, 'plugin::content-manager.explorer.publish', '{}', 'api::solicitud-compra-estado.solicitud-compra-estado', '{}', '[]', '2023-10-15 12:29:40.033000', '2023-10-15 12:29:40.033000', NULL, NULL),
(95, 'plugin::content-manager.explorer.create', '{}', 'api::solicitud-compra.solicitud-compra', '{\"fields\":[\"solicitante\",\"aprobador_jefe\",\"aprobador_gerente\",\"fecha_creacion\",\"total\",\"solicitud_compra_estado\"]}', '[]', '2023-10-15 12:31:49.136000', '2023-10-15 12:31:49.136000', NULL, NULL),
(96, 'plugin::content-manager.explorer.read', '{}', 'api::solicitud-compra.solicitud-compra', '{\"fields\":[\"solicitante\",\"aprobador_jefe\",\"aprobador_gerente\",\"fecha_creacion\",\"total\",\"solicitud_compra_estado\"]}', '[]', '2023-10-15 12:31:49.144000', '2023-10-15 12:31:49.144000', NULL, NULL),
(97, 'plugin::content-manager.explorer.update', '{}', 'api::solicitud-compra.solicitud-compra', '{\"fields\":[\"solicitante\",\"aprobador_jefe\",\"aprobador_gerente\",\"fecha_creacion\",\"total\",\"solicitud_compra_estado\"]}', '[]', '2023-10-15 12:31:49.148000', '2023-10-15 12:31:49.148000', NULL, NULL),
(98, 'plugin::content-manager.explorer.delete', '{}', 'api::solicitud-compra.solicitud-compra', '{}', '[]', '2023-10-15 12:31:49.152000', '2023-10-15 12:31:49.152000', NULL, NULL),
(99, 'plugin::content-manager.explorer.publish', '{}', 'api::solicitud-compra.solicitud-compra', '{}', '[]', '2023-10-15 12:31:49.156000', '2023-10-15 12:31:49.156000', NULL, NULL),
(100, 'plugin::content-manager.explorer.create', '{}', 'api::solicitud-compra-detalle.solicitud-compra-detalle', '{\"fields\":[\"solicitud_compra\",\"producto\",\"cantidad\"]}', '[]', '2023-10-15 12:34:03.630000', '2023-10-15 12:34:03.630000', NULL, NULL),
(101, 'plugin::content-manager.explorer.read', '{}', 'api::solicitud-compra-detalle.solicitud-compra-detalle', '{\"fields\":[\"solicitud_compra\",\"producto\",\"cantidad\"]}', '[]', '2023-10-15 12:34:03.638000', '2023-10-15 12:34:03.638000', NULL, NULL),
(102, 'plugin::content-manager.explorer.update', '{}', 'api::solicitud-compra-detalle.solicitud-compra-detalle', '{\"fields\":[\"solicitud_compra\",\"producto\",\"cantidad\"]}', '[]', '2023-10-15 12:34:03.646000', '2023-10-15 12:34:03.646000', NULL, NULL),
(103, 'plugin::content-manager.explorer.delete', '{}', 'api::solicitud-compra-detalle.solicitud-compra-detalle', '{}', '[]', '2023-10-15 12:34:03.651000', '2023-10-15 12:34:03.651000', NULL, NULL),
(104, 'plugin::content-manager.explorer.publish', '{}', 'api::solicitud-compra-detalle.solicitud-compra-detalle', '{}', '[]', '2023-10-15 12:34:03.656000', '2023-10-15 12:34:03.656000', NULL, NULL),
(105, 'plugin::content-manager.explorer.create', '{}', 'api::proveedor-categoria.proveedor-categoria', '{\"fields\":[\"nombre\"]}', '[]', '2023-10-15 12:34:52.164000', '2023-10-15 12:34:52.164000', NULL, NULL),
(106, 'plugin::content-manager.explorer.read', '{}', 'api::proveedor-categoria.proveedor-categoria', '{\"fields\":[\"nombre\"]}', '[]', '2023-10-15 12:34:52.172000', '2023-10-15 12:34:52.172000', NULL, NULL),
(107, 'plugin::content-manager.explorer.update', '{}', 'api::proveedor-categoria.proveedor-categoria', '{\"fields\":[\"nombre\"]}', '[]', '2023-10-15 12:34:52.177000', '2023-10-15 12:34:52.177000', NULL, NULL),
(108, 'plugin::content-manager.explorer.delete', '{}', 'api::proveedor-categoria.proveedor-categoria', '{}', '[]', '2023-10-15 12:34:52.182000', '2023-10-15 12:34:52.182000', NULL, NULL),
(109, 'plugin::content-manager.explorer.publish', '{}', 'api::proveedor-categoria.proveedor-categoria', '{}', '[]', '2023-10-15 12:34:52.187000', '2023-10-15 12:34:52.187000', NULL, NULL),
(110, 'plugin::content-manager.explorer.create', '{}', 'api::proveedor.proveedor', '{\"fields\":[\"nombre_fiscal\",\"direccion\",\"nit\",\"telefono\",\"proveedor_categoria\"]}', '[]', '2023-10-15 12:35:39.234000', '2023-10-15 12:35:39.234000', NULL, NULL),
(111, 'plugin::content-manager.explorer.read', '{}', 'api::proveedor.proveedor', '{\"fields\":[\"nombre_fiscal\",\"direccion\",\"nit\",\"telefono\",\"proveedor_categoria\"]}', '[]', '2023-10-15 12:35:39.241000', '2023-10-15 12:35:39.241000', NULL, NULL),
(112, 'plugin::content-manager.explorer.update', '{}', 'api::proveedor.proveedor', '{\"fields\":[\"nombre_fiscal\",\"direccion\",\"nit\",\"telefono\",\"proveedor_categoria\"]}', '[]', '2023-10-15 12:35:39.246000', '2023-10-15 12:35:39.246000', NULL, NULL),
(113, 'plugin::content-manager.explorer.delete', '{}', 'api::proveedor.proveedor', '{}', '[]', '2023-10-15 12:35:39.251000', '2023-10-15 12:35:39.251000', NULL, NULL),
(114, 'plugin::content-manager.explorer.publish', '{}', 'api::proveedor.proveedor', '{}', '[]', '2023-10-15 12:35:39.256000', '2023-10-15 12:35:39.256000', NULL, NULL),
(115, 'plugin::content-manager.explorer.create', '{}', 'api::proveedor-contacto.proveedor-contacto', '{\"fields\":[\"nombre\",\"direccion\",\"cui\",\"telefono\",\"correo\",\"proveedor\"]}', '[]', '2023-10-15 12:36:36.101000', '2023-10-15 12:36:36.101000', NULL, NULL),
(116, 'plugin::content-manager.explorer.read', '{}', 'api::proveedor-contacto.proveedor-contacto', '{\"fields\":[\"nombre\",\"direccion\",\"cui\",\"telefono\",\"correo\",\"proveedor\"]}', '[]', '2023-10-15 12:36:36.115000', '2023-10-15 12:36:36.115000', NULL, NULL),
(117, 'plugin::content-manager.explorer.update', '{}', 'api::proveedor-contacto.proveedor-contacto', '{\"fields\":[\"nombre\",\"direccion\",\"cui\",\"telefono\",\"correo\",\"proveedor\"]}', '[]', '2023-10-15 12:36:36.122000', '2023-10-15 12:36:36.122000', NULL, NULL),
(118, 'plugin::content-manager.explorer.delete', '{}', 'api::proveedor-contacto.proveedor-contacto', '{}', '[]', '2023-10-15 12:36:36.127000', '2023-10-15 12:36:36.127000', NULL, NULL),
(119, 'plugin::content-manager.explorer.publish', '{}', 'api::proveedor-contacto.proveedor-contacto', '{}', '[]', '2023-10-15 12:36:36.132000', '2023-10-15 12:36:36.132000', NULL, NULL),
(120, 'plugin::content-manager.explorer.create', '{}', 'api::cotizacion-compra.cotizacion-compra', '{\"fields\":[\"fecha_creacion\",\"adjunto\",\"total\",\"seleccionada\",\"solicitud_compra\",\"proveedor\"]}', '[]', '2023-10-15 12:38:19.698000', '2023-10-15 12:38:19.698000', NULL, NULL),
(121, 'plugin::content-manager.explorer.read', '{}', 'api::cotizacion-compra.cotizacion-compra', '{\"fields\":[\"fecha_creacion\",\"adjunto\",\"total\",\"seleccionada\",\"solicitud_compra\",\"proveedor\"]}', '[]', '2023-10-15 12:38:19.708000', '2023-10-15 12:38:19.708000', NULL, NULL),
(122, 'plugin::content-manager.explorer.update', '{}', 'api::cotizacion-compra.cotizacion-compra', '{\"fields\":[\"fecha_creacion\",\"adjunto\",\"total\",\"seleccionada\",\"solicitud_compra\",\"proveedor\"]}', '[]', '2023-10-15 12:38:19.715000', '2023-10-15 12:38:19.715000', NULL, NULL),
(123, 'plugin::content-manager.explorer.delete', '{}', 'api::cotizacion-compra.cotizacion-compra', '{}', '[]', '2023-10-15 12:38:19.723000', '2023-10-15 12:38:19.723000', NULL, NULL),
(124, 'plugin::content-manager.explorer.publish', '{}', 'api::cotizacion-compra.cotizacion-compra', '{}', '[]', '2023-10-15 12:38:19.729000', '2023-10-15 12:38:19.729000', NULL, NULL),
(125, 'plugin::content-manager.explorer.create', '{}', 'api::orden-compra-estado.orden-compra-estado', '{\"fields\":[\"nombre\"]}', '[]', '2023-10-15 12:43:00.022000', '2023-10-15 12:43:00.022000', NULL, NULL),
(126, 'plugin::content-manager.explorer.read', '{}', 'api::orden-compra-estado.orden-compra-estado', '{\"fields\":[\"nombre\"]}', '[]', '2023-10-15 12:43:00.031000', '2023-10-15 12:43:00.031000', NULL, NULL),
(127, 'plugin::content-manager.explorer.update', '{}', 'api::orden-compra-estado.orden-compra-estado', '{\"fields\":[\"nombre\"]}', '[]', '2023-10-15 12:43:00.037000', '2023-10-15 12:43:00.037000', NULL, NULL),
(128, 'plugin::content-manager.explorer.delete', '{}', 'api::orden-compra-estado.orden-compra-estado', '{}', '[]', '2023-10-15 12:43:00.043000', '2023-10-15 12:43:00.043000', NULL, NULL),
(129, 'plugin::content-manager.explorer.publish', '{}', 'api::orden-compra-estado.orden-compra-estado', '{}', '[]', '2023-10-15 12:43:00.047000', '2023-10-15 12:43:00.047000', NULL, NULL),
(133, 'plugin::content-manager.explorer.delete', '{}', 'api::orden-compra.orden-compra', '{}', '[]', '2023-10-15 12:44:32.986000', '2023-10-15 12:44:32.986000', NULL, NULL),
(134, 'plugin::content-manager.explorer.publish', '{}', 'api::orden-compra.orden-compra', '{}', '[]', '2023-10-15 12:44:32.990000', '2023-10-15 12:44:32.990000', NULL, NULL),
(135, 'plugin::content-manager.explorer.create', '{}', 'api::orden-compra-recepcion-estado.orden-compra-recepcion-estado', '{\"fields\":[\"nombre\"]}', '[]', '2023-10-15 12:45:38.826000', '2023-10-15 12:45:38.826000', NULL, NULL),
(136, 'plugin::content-manager.explorer.read', '{}', 'api::orden-compra-recepcion-estado.orden-compra-recepcion-estado', '{\"fields\":[\"nombre\"]}', '[]', '2023-10-15 12:45:38.834000', '2023-10-15 12:45:38.834000', NULL, NULL),
(137, 'plugin::content-manager.explorer.update', '{}', 'api::orden-compra-recepcion-estado.orden-compra-recepcion-estado', '{\"fields\":[\"nombre\"]}', '[]', '2023-10-15 12:45:38.841000', '2023-10-15 12:45:38.841000', NULL, NULL),
(138, 'plugin::content-manager.explorer.delete', '{}', 'api::orden-compra-recepcion-estado.orden-compra-recepcion-estado', '{}', '[]', '2023-10-15 12:45:38.847000', '2023-10-15 12:45:38.847000', NULL, NULL),
(139, 'plugin::content-manager.explorer.publish', '{}', 'api::orden-compra-recepcion-estado.orden-compra-recepcion-estado', '{}', '[]', '2023-10-15 12:45:38.852000', '2023-10-15 12:45:38.852000', NULL, NULL),
(143, 'plugin::content-manager.explorer.delete', '{}', 'api::orden-compra-recepcion.orden-compra-recepcion', '{}', '[]', '2023-10-15 13:04:55.728000', '2023-10-15 13:04:55.728000', NULL, NULL),
(144, 'plugin::content-manager.explorer.publish', '{}', 'api::orden-compra-recepcion.orden-compra-recepcion', '{}', '[]', '2023-10-15 13:04:55.732000', '2023-10-15 13:04:55.732000', NULL, NULL),
(145, 'plugin::content-manager.explorer.create', '{}', 'api::orden-compra-recepcion.orden-compra-recepcion', '{\"fields\":[\"fecha_creacion\",\"detalle\",\"orden_compra\",\"ord_compra_recepcion_estado\"]}', '[]', '2023-10-15 13:05:41.628000', '2023-10-15 13:05:41.628000', NULL, NULL),
(146, 'plugin::content-manager.explorer.read', '{}', 'api::orden-compra-recepcion.orden-compra-recepcion', '{\"fields\":[\"fecha_creacion\",\"detalle\",\"orden_compra\",\"ord_compra_recepcion_estado\"]}', '[]', '2023-10-15 13:05:41.635000', '2023-10-15 13:05:41.635000', NULL, NULL),
(147, 'plugin::content-manager.explorer.update', '{}', 'api::orden-compra-recepcion.orden-compra-recepcion', '{\"fields\":[\"fecha_creacion\",\"detalle\",\"orden_compra\",\"ord_compra_recepcion_estado\"]}', '[]', '2023-10-15 13:05:41.639000', '2023-10-15 13:05:41.639000', NULL, NULL),
(148, 'plugin::content-manager.explorer.create', '{}', 'api::orden-compra-devolucion.orden-compra-devolucion', '{\"fields\":[\"fecha_creacion\",\"detalle\",\"orden_compra\"]}', '[]', '2023-10-15 13:06:44.804000', '2023-10-15 13:06:44.804000', NULL, NULL),
(149, 'plugin::content-manager.explorer.read', '{}', 'api::orden-compra-devolucion.orden-compra-devolucion', '{\"fields\":[\"fecha_creacion\",\"detalle\",\"orden_compra\"]}', '[]', '2023-10-15 13:06:44.812000', '2023-10-15 13:06:44.812000', NULL, NULL),
(150, 'plugin::content-manager.explorer.update', '{}', 'api::orden-compra-devolucion.orden-compra-devolucion', '{\"fields\":[\"fecha_creacion\",\"detalle\",\"orden_compra\"]}', '[]', '2023-10-15 13:06:44.817000', '2023-10-15 13:06:44.817000', NULL, NULL),
(151, 'plugin::content-manager.explorer.delete', '{}', 'api::orden-compra-devolucion.orden-compra-devolucion', '{}', '[]', '2023-10-15 13:06:44.824000', '2023-10-15 13:06:44.824000', NULL, NULL),
(152, 'plugin::content-manager.explorer.publish', '{}', 'api::orden-compra-devolucion.orden-compra-devolucion', '{}', '[]', '2023-10-15 13:06:44.829000', '2023-10-15 13:06:44.829000', NULL, NULL),
(153, 'plugin::content-manager.explorer.create', '{}', 'api::contrasenia-pago.contrasenia-pago', '{\"fields\":[\"factura\",\"fecha_factura\",\"cuotas\",\"pago\",\"orden_compra\"]}', '[]', '2023-10-15 13:07:42.384000', '2023-10-15 13:07:42.384000', NULL, NULL),
(154, 'plugin::content-manager.explorer.read', '{}', 'api::contrasenia-pago.contrasenia-pago', '{\"fields\":[\"factura\",\"fecha_factura\",\"cuotas\",\"pago\",\"orden_compra\"]}', '[]', '2023-10-15 13:07:42.392000', '2023-10-15 13:07:42.392000', NULL, NULL),
(155, 'plugin::content-manager.explorer.update', '{}', 'api::contrasenia-pago.contrasenia-pago', '{\"fields\":[\"factura\",\"fecha_factura\",\"cuotas\",\"pago\",\"orden_compra\"]}', '[]', '2023-10-15 13:07:42.399000', '2023-10-15 13:07:42.399000', NULL, NULL),
(156, 'plugin::content-manager.explorer.delete', '{}', 'api::contrasenia-pago.contrasenia-pago', '{}', '[]', '2023-10-15 13:07:42.406000', '2023-10-15 13:07:42.406000', NULL, NULL),
(157, 'plugin::content-manager.explorer.publish', '{}', 'api::contrasenia-pago.contrasenia-pago', '{}', '[]', '2023-10-15 13:07:42.413000', '2023-10-15 13:07:42.413000', NULL, NULL),
(158, 'plugin::content-manager.explorer.create', '{}', 'api::orden-compra.orden-compra', '{\"fields\":[\"fecha_creacion\",\"cotizacion_compra\",\"orden_compra_estado\",\"monto\"]}', '[]', '2023-10-20 21:51:04.562000', '2023-10-20 21:51:04.562000', NULL, NULL),
(159, 'plugin::content-manager.explorer.read', '{}', 'api::orden-compra.orden-compra', '{\"fields\":[\"fecha_creacion\",\"cotizacion_compra\",\"orden_compra_estado\",\"monto\"]}', '[]', '2023-10-20 21:51:04.568000', '2023-10-20 21:51:04.568000', NULL, NULL),
(160, 'plugin::content-manager.explorer.update', '{}', 'api::orden-compra.orden-compra', '{\"fields\":[\"fecha_creacion\",\"cotizacion_compra\",\"orden_compra_estado\",\"monto\"]}', '[]', '2023-10-20 21:51:04.573000', '2023-10-20 21:51:04.573000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_permissions_role_links`
--

CREATE TABLE `admin_permissions_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admin_permissions_role_links`
--

INSERT INTO `admin_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 2),
(3, 3, 2, 3),
(4, 4, 2, 4),
(5, 5, 2, 5),
(6, 6, 2, 6),
(7, 7, 3, 1),
(8, 8, 3, 2),
(9, 9, 3, 3),
(10, 10, 3, 4),
(11, 11, 3, 5),
(12, 12, 3, 6),
(13, 13, 1, 1),
(14, 14, 1, 2),
(15, 15, 1, 3),
(16, 16, 1, 4),
(17, 17, 1, 5),
(18, 18, 1, 6),
(19, 19, 1, 7),
(20, 20, 1, 8),
(21, 21, 1, 9),
(22, 22, 1, 10),
(23, 23, 1, 11),
(24, 24, 1, 12),
(25, 25, 1, 13),
(26, 26, 1, 14),
(27, 27, 1, 15),
(28, 28, 1, 16),
(29, 29, 1, 17),
(30, 30, 1, 18),
(31, 31, 1, 19),
(32, 32, 1, 20),
(33, 33, 1, 21),
(34, 34, 1, 22),
(35, 35, 1, 23),
(36, 36, 1, 24),
(37, 37, 1, 25),
(38, 38, 1, 26),
(39, 39, 1, 27),
(40, 40, 1, 28),
(41, 41, 1, 29),
(42, 42, 1, 30),
(43, 43, 1, 31),
(44, 44, 1, 32),
(45, 45, 1, 33),
(46, 46, 1, 34),
(47, 47, 1, 35),
(48, 48, 1, 36),
(49, 49, 1, 37),
(50, 50, 1, 38),
(51, 51, 1, 39),
(52, 52, 1, 40),
(53, 53, 1, 41),
(54, 54, 1, 42),
(55, 55, 1, 43),
(56, 56, 1, 44),
(57, 57, 1, 45),
(58, 58, 1, 46),
(59, 59, 1, 47),
(60, 60, 1, 48),
(61, 61, 1, 49),
(62, 62, 1, 50),
(63, 63, 1, 51),
(64, 64, 1, 52),
(65, 65, 1, 53),
(66, 66, 1, 54),
(67, 67, 1, 55),
(68, 68, 1, 56),
(69, 69, 1, 57),
(70, 70, 1, 58),
(71, 71, 1, 59),
(72, 72, 1, 60),
(73, 73, 1, 61),
(74, 74, 1, 62),
(75, 75, 1, 63),
(76, 76, 1, 64),
(77, 77, 1, 65),
(78, 78, 1, 66),
(79, 79, 1, 67),
(80, 80, 1, 68),
(81, 81, 1, 69),
(82, 82, 1, 70),
(83, 83, 1, 71),
(84, 84, 1, 72),
(85, 85, 1, 73),
(86, 86, 1, 74),
(87, 87, 1, 75),
(88, 88, 1, 76),
(89, 89, 1, 77),
(90, 90, 1, 78),
(91, 91, 1, 79),
(92, 92, 1, 80),
(93, 93, 1, 81),
(94, 94, 1, 82),
(95, 95, 1, 83),
(96, 96, 1, 84),
(97, 97, 1, 85),
(98, 98, 1, 86),
(99, 99, 1, 87),
(100, 100, 1, 88),
(101, 101, 1, 89),
(102, 102, 1, 90),
(103, 103, 1, 91),
(104, 104, 1, 92),
(105, 105, 1, 93),
(106, 106, 1, 94),
(107, 107, 1, 95),
(108, 108, 1, 96),
(109, 109, 1, 97),
(110, 110, 1, 98),
(111, 111, 1, 99),
(112, 112, 1, 100),
(113, 113, 1, 101),
(114, 114, 1, 102),
(115, 115, 1, 103),
(116, 116, 1, 104),
(117, 117, 1, 105),
(118, 118, 1, 106),
(119, 119, 1, 107),
(120, 120, 1, 108),
(121, 121, 1, 109),
(122, 122, 1, 110),
(123, 123, 1, 111),
(124, 124, 1, 112),
(125, 125, 1, 113),
(126, 126, 1, 114),
(127, 127, 1, 115),
(128, 128, 1, 116),
(129, 129, 1, 117),
(133, 133, 1, 121),
(134, 134, 1, 122),
(135, 135, 1, 123),
(136, 136, 1, 124),
(137, 137, 1, 125),
(138, 138, 1, 126),
(139, 139, 1, 127),
(143, 143, 1, 131),
(144, 144, 1, 132),
(145, 145, 1, 133),
(146, 146, 1, 134),
(147, 147, 1, 135),
(148, 148, 1, 136),
(149, 149, 1, 137),
(150, 150, 1, 138),
(151, 151, 1, 139),
(152, 152, 1, 140),
(153, 153, 1, 141),
(154, 154, 1, 142),
(155, 155, 1, 143),
(156, 156, 1, 144),
(157, 157, 1, 145),
(158, 158, 1, 146),
(159, 159, 1, 147),
(160, 160, 1, 148);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2023-10-15 12:25:03.323000', '2023-10-15 12:25:03.323000', NULL, NULL),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2023-10-15 12:25:03.330000', '2023-10-15 12:25:03.330000', NULL, NULL),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2023-10-15 12:25:03.333000', '2023-10-15 12:25:03.333000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'admin', NULL, NULL, 'admin@example.com', '$2a$10$am7NJlEQHZbGRDMz.gilpeRRFX0u1Wm0Q07W2P/ycsqHH0JnYe22W', NULL, NULL, 1, 0, NULL, '2023-10-15 12:25:34.682000', '2023-10-15 12:25:34.682000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_users_roles_links`
--

CREATE TABLE `admin_users_roles_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `role_order` double UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admin_users_roles_links`
--

INSERT INTO `admin_users_roles_links` (`id`, `user_id`, `role_id`, `role_order`, `user_order`) VALUES
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrasenia_pagos`
--

CREATE TABLE `contrasenia_pagos` (
  `id` int(10) UNSIGNED NOT NULL,
  `factura` varchar(255) DEFAULT NULL,
  `fecha_factura` date DEFAULT NULL,
  `cuotas` int(11) DEFAULT NULL,
  `pago` decimal(10,2) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrasenia_pagos_orden_compra_links`
--

CREATE TABLE `contrasenia_pagos_orden_compra_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `contrasenia_pago_id` int(10) UNSIGNED DEFAULT NULL,
  `orden_compra_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizacion_compras`
--

CREATE TABLE `cotizacion_compras` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `seleccionada` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cotizacion_compras`
--

INSERT INTO `cotizacion_compras` (`id`, `fecha_creacion`, `total`, `seleccionada`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, '2023-10-20', 3000.00, NULL, '2023-10-19 19:30:45.116000', '2023-10-21 16:18:39.120000', '2023-10-19 19:30:46.899000', 1, 1),
(2, '2023-10-20', 10500.00, NULL, '2023-10-19 19:31:41.430000', '2023-10-19 19:31:42.704000', '2023-10-19 19:31:42.700000', 1, 1),
(3, '2023-10-20', 15.00, NULL, '2023-10-19 19:32:08.134000', '2023-10-19 19:32:09.114000', '2023-10-19 19:32:09.112000', 1, 1),
(28, '2023-10-22', 800.00, NULL, '2023-10-21 20:43:40.243000', '2023-10-21 20:43:40.243000', '2023-10-21 20:43:40.240000', NULL, NULL),
(29, '2023-10-22', 600.00, NULL, '2023-10-21 20:49:04.450000', '2023-10-21 20:49:04.450000', '2023-10-21 20:49:04.448000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizacion_compras_proveedor_links`
--

CREATE TABLE `cotizacion_compras_proveedor_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `cotizacion_compra_id` int(10) UNSIGNED DEFAULT NULL,
  `proveedor_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cotizacion_compras_proveedor_links`
--

INSERT INTO `cotizacion_compras_proveedor_links` (`id`, `cotizacion_compra_id`, `proveedor_id`) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 3),
(31, 28, 2),
(32, 29, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizacion_compras_solicitud_compra_links`
--

CREATE TABLE `cotizacion_compras_solicitud_compra_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `cotizacion_compra_id` int(10) UNSIGNED DEFAULT NULL,
  `solicitud_compra_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cotizacion_compras_solicitud_compra_links`
--

INSERT INTO `cotizacion_compras_solicitud_compra_links` (`id`, `cotizacion_compra_id`, `solicitud_compra_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(31, 28, 1),
(32, 29, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `ubicacion` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `nombre`, `ubicacion`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Ventas', 'Edificio A', '2023-10-19 19:17:06.225000', '2023-10-19 19:17:11.235000', '2023-10-19 19:17:11.230000', 1, 1),
(2, 'Administración', 'Edificio B', '2023-10-19 19:17:28.744000', '2023-10-19 19:17:29.417000', '2023-10-19 19:17:29.415000', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombres` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombres`, `apellidos`, `telefono`, `correo`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Juan', 'Perez', '40444444', 'jperez@gmail.com', '2023-10-19 19:17:54.507000', '2023-10-19 19:17:56.525000', '2023-10-19 19:17:56.519000', 1, 1),
(2, 'Luis', 'Rivera', '2222222', 'lrivera@gmail.com', '2023-10-19 19:18:18.461000', '2023-10-19 19:18:19.815000', '2023-10-19 19:18:19.813000', 1, 1),
(3, 'Santiago', 'Lopez', '66666666', 'slopez@gmail.com', '2023-10-19 19:18:48.451000', '2023-10-19 19:18:49.509000', '2023-10-19 19:18:49.506000', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados_departamento_links`
--

CREATE TABLE `empleados_departamento_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `empleado_id` int(10) UNSIGNED DEFAULT NULL,
  `departamento_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados_departamento_links`
--

INSERT INTO `empleados_departamento_links` (`id`, `empleado_id`, `departamento_id`) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`formats`)),
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`provider_metadata`)),
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `files`
--

INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'ER_COMPRAS.drawio.pdf', NULL, NULL, NULL, NULL, NULL, 'ER_COMPRAS_drawio_b07b9eef08', '.pdf', 'application/pdf', 51.71, '/uploads/ER_COMPRAS_drawio_b07b9eef08.pdf', NULL, 'local', NULL, '/', '2023-10-19 19:29:37.878000', '2023-10-19 19:29:37.878000', 1, 1),
(2, 'ER_COMPRAS.drawio.pdf', NULL, NULL, NULL, NULL, NULL, 'ER_COMPRAS_drawio_d65ae6f134', '.pdf', 'application/pdf', 51.71, '/uploads/ER_COMPRAS_drawio_d65ae6f134.pdf', NULL, 'local', NULL, '/', '2023-10-19 19:31:24.292000', '2023-10-19 19:31:24.292000', 1, 1),
(3, 'ER_COMPRAS.drawio.pdf', NULL, NULL, NULL, NULL, NULL, 'ER_COMPRAS_drawio_0b2a9fa6f8', '.pdf', 'application/pdf', 51.71, '/uploads/ER_COMPRAS_drawio_0b2a9fa6f8.pdf', NULL, 'local', NULL, '/', '2023-10-19 19:31:59.760000', '2023-10-19 19:31:59.760000', 1, 1),
(5, 'pago-eegsa-0001200312-2.pdf', NULL, NULL, NULL, NULL, NULL, 'pago_eegsa_0001200312_2_4fbc64dfb7', '.pdf', 'application/pdf', 4.88, '/uploads/pago_eegsa_0001200312_2_4fbc64dfb7.pdf', NULL, 'local', NULL, '/1', '2023-10-19 22:54:28.882000', '2023-10-19 22:54:28.882000', NULL, NULL),
(6, 'pago-eegsa-0001200312-2.pdf', NULL, NULL, NULL, NULL, NULL, 'pago_eegsa_0001200312_2_fc138471dc', '.pdf', 'application/pdf', 4.88, '/uploads/pago_eegsa_0001200312_2_fc138471dc.pdf', NULL, 'local', NULL, '/1', '2023-10-19 22:58:07.847000', '2023-10-19 22:58:07.847000', NULL, NULL),
(7, 'pago-eegsa-0001200312-2.pdf', NULL, NULL, NULL, NULL, NULL, 'pago_eegsa_0001200312_2_34498a3de3', '.pdf', 'application/pdf', 4.88, '/uploads/pago_eegsa_0001200312_2_34498a3de3.pdf', NULL, 'local', NULL, '/1', '2023-10-19 23:01:11.645000', '2023-10-19 23:01:11.645000', NULL, NULL),
(8, 'pago-eegsa-0001200312-2.pdf', NULL, NULL, NULL, NULL, NULL, 'pago_eegsa_0001200312_2_f1c57ec52a', '.pdf', 'application/pdf', 4.88, '/uploads/pago_eegsa_0001200312_2_f1c57ec52a.pdf', NULL, 'local', NULL, '/1', '2023-10-19 23:02:00.667000', '2023-10-19 23:02:00.667000', NULL, NULL),
(9, 'pago-eegsa-0001200312-2.pdf', NULL, NULL, NULL, NULL, NULL, 'pago_eegsa_0001200312_2_6de4a3423a', '.pdf', 'application/pdf', 4.88, '/uploads/pago_eegsa_0001200312_2_6de4a3423a.pdf', NULL, 'local', NULL, '/1', '2023-10-19 23:02:06.999000', '2023-10-19 23:02:06.999000', NULL, NULL),
(10, 'pago-eegsa-0001200312-2.pdf', NULL, NULL, NULL, NULL, NULL, 'pago_eegsa_0001200312_2_855285870b', '.pdf', 'application/pdf', 4.88, '/uploads/pago_eegsa_0001200312_2_855285870b.pdf', NULL, 'local', NULL, '/1', '2023-10-19 23:06:45.056000', '2023-10-19 23:06:45.056000', NULL, NULL),
(11, 'pago-eegsa-0001200312-2.pdf', NULL, NULL, NULL, NULL, NULL, 'pago_eegsa_0001200312_2_52d377516a', '.pdf', 'application/pdf', 4.88, '/uploads/pago_eegsa_0001200312_2_52d377516a.pdf', NULL, 'local', NULL, '/1', '2023-10-19 23:09:37.875000', '2023-10-19 23:09:37.875000', NULL, NULL),
(12, 'pago-eegsa-0001200312-2.pdf', NULL, NULL, NULL, NULL, NULL, 'pago_eegsa_0001200312_2_be65c1133e', '.pdf', 'application/pdf', 4.88, '/uploads/pago_eegsa_0001200312_2_be65c1133e.pdf', NULL, 'local', NULL, '/1', '2023-10-19 23:10:33.782000', '2023-10-19 23:10:33.782000', NULL, NULL),
(13, 'pago-eegsa-0001200312-2.pdf', NULL, NULL, NULL, NULL, NULL, 'pago_eegsa_0001200312_2_6e8febf4f3', '.pdf', 'application/pdf', 4.88, '/uploads/pago_eegsa_0001200312_2_6e8febf4f3.pdf', NULL, 'local', NULL, '/1', '2023-10-19 23:13:20.989000', '2023-10-19 23:13:20.989000', NULL, NULL),
(14, 'pago-eegsa-0001200312-2.pdf', NULL, NULL, NULL, NULL, NULL, 'pago_eegsa_0001200312_2_de1c66e653', '.pdf', 'application/pdf', 4.88, '/uploads/pago_eegsa_0001200312_2_de1c66e653.pdf', NULL, 'local', NULL, '/1', '2023-10-19 23:15:51.960000', '2023-10-19 23:15:51.960000', NULL, NULL),
(15, 'pago-eegsa-0001200312-2.pdf', NULL, NULL, NULL, NULL, NULL, 'pago_eegsa_0001200312_2_dd50dea9f9', '.pdf', 'application/pdf', 4.88, '/uploads/pago_eegsa_0001200312_2_dd50dea9f9.pdf', NULL, 'local', NULL, '/1', '2023-10-19 23:16:04.999000', '2023-10-19 23:16:04.999000', NULL, NULL),
(16, '4dx.pdf', NULL, NULL, NULL, NULL, NULL, '4dx_cbd238e482', '.pdf', 'application/pdf', 1349.66, '/uploads/4dx_cbd238e482.pdf', NULL, 'local', NULL, '/1', '2023-10-19 23:16:10.762000', '2023-10-19 23:16:10.762000', NULL, NULL),
(17, 'pago-eegsa-0001200312-2.pdf', NULL, NULL, NULL, NULL, NULL, 'pago_eegsa_0001200312_2_dd411470a3', '.pdf', 'application/pdf', 4.88, '/uploads/pago_eegsa_0001200312_2_dd411470a3.pdf', NULL, 'local', NULL, '/1', '2023-10-19 23:17:52.805000', '2023-10-19 23:17:52.805000', NULL, NULL),
(18, 'pago-eegsa-0001200312-2.pdf', NULL, NULL, NULL, NULL, NULL, 'pago_eegsa_0001200312_2_c1261fd24c', '.pdf', 'application/pdf', 4.88, '/uploads/pago_eegsa_0001200312_2_c1261fd24c.pdf', NULL, 'local', NULL, '/1', '2023-10-20 09:37:16.117000', '2023-10-20 09:37:16.117000', NULL, NULL),
(19, '4dx.pdf', NULL, NULL, NULL, NULL, NULL, '4dx_f639d3bd79', '.pdf', 'application/pdf', 1349.66, '/uploads/4dx_f639d3bd79.pdf', NULL, 'local', NULL, '/1', '2023-10-20 09:42:24.634000', '2023-10-20 09:42:24.634000', NULL, NULL),
(20, '4dx.pdf', NULL, NULL, NULL, NULL, NULL, '4dx_87dca8f21f', '.pdf', 'application/pdf', 1349.66, '/uploads/4dx_87dca8f21f.pdf', NULL, 'local', NULL, '/1', '2023-10-20 09:43:09.127000', '2023-10-20 09:43:09.127000', NULL, NULL),
(21, '4dx.pdf', NULL, NULL, NULL, NULL, NULL, '4dx_5766ac2e60', '.pdf', 'application/pdf', 1349.66, '/uploads/4dx_5766ac2e60.pdf', NULL, 'local', NULL, '/1', '2023-10-20 09:44:31.134000', '2023-10-20 09:44:31.134000', NULL, NULL),
(22, '4dx.pdf', NULL, NULL, NULL, NULL, NULL, '4dx_3c987ca8ce', '.pdf', 'application/pdf', 1349.66, '/uploads/4dx_3c987ca8ce.pdf', NULL, 'local', NULL, '/1', '2023-10-20 09:47:36.305000', '2023-10-20 09:47:36.305000', NULL, NULL),
(23, 'pago-eegsa-0001200312-2.pdf', NULL, NULL, NULL, NULL, NULL, 'pago_eegsa_0001200312_2_59880419fe', '.pdf', 'application/pdf', 4.88, '/uploads/pago_eegsa_0001200312_2_59880419fe.pdf', NULL, 'local', NULL, '/1', '2023-10-20 09:49:38.276000', '2023-10-20 09:49:38.276000', NULL, NULL),
(24, '4dx.pdf', NULL, NULL, NULL, NULL, NULL, '4dx_3319705d81', '.pdf', 'application/pdf', 1349.66, '/uploads/4dx_3319705d81.pdf', NULL, 'local', NULL, '/1', '2023-10-20 09:50:48.306000', '2023-10-20 09:50:48.306000', NULL, NULL),
(25, 'pago-eegsa-0001200312-2.pdf', NULL, NULL, NULL, NULL, NULL, 'pago_eegsa_0001200312_2_df747290d1', '.pdf', 'application/pdf', 4.88, '/uploads/pago_eegsa_0001200312_2_df747290d1.pdf', NULL, 'local', NULL, '/1', '2023-10-20 09:53:15.152000', '2023-10-20 09:53:15.152000', NULL, NULL),
(26, 'pago-eegsa-0001200312-2.pdf', NULL, NULL, NULL, NULL, NULL, 'pago_eegsa_0001200312_2_94d7345092', '.pdf', 'application/pdf', 4.88, '/uploads/pago_eegsa_0001200312_2_94d7345092.pdf', NULL, 'local', NULL, '/1', '2023-10-20 09:54:23.834000', '2023-10-20 09:54:23.834000', NULL, NULL),
(27, 'PEI en excel (1).pdf', NULL, NULL, NULL, NULL, NULL, 'PEI_en_excel_1_af7894d974', '.pdf', 'application/pdf', 110.59, '/uploads/PEI_en_excel_1_af7894d974.pdf', NULL, 'local', NULL, '/1', '2023-10-21 16:31:54.598000', '2023-10-21 16:31:54.598000', NULL, NULL),
(28, 'PEI en excel (1).pdf', NULL, NULL, NULL, NULL, NULL, 'PEI_en_excel_1_262cb6f6f6', '.pdf', 'application/pdf', 110.59, '/uploads/PEI_en_excel_1_262cb6f6f6.pdf', NULL, 'local', NULL, '/1', '2023-10-21 20:43:40.183000', '2023-10-21 20:43:40.183000', NULL, NULL),
(29, 'PEI en excel (1).pdf', NULL, NULL, NULL, NULL, NULL, 'PEI_en_excel_1_5af34b7b65', '.pdf', 'application/pdf', 110.59, '/uploads/PEI_en_excel_1_5af34b7b65.pdf', NULL, 'local', NULL, '/1', '2023-10-21 20:49:04.404000', '2023-10-21 20:49:04.404000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files_folder_links`
--

CREATE TABLE `files_folder_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `file_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `files_folder_links`
--

INSERT INTO `files_folder_links` (`id`, `file_id`, `folder_id`, `file_order`) VALUES
(1, 5, 1, 1),
(2, 6, 1, 2),
(3, 7, 1, 3),
(4, 8, 1, 4),
(5, 9, 1, 5),
(6, 10, 1, 6),
(7, 11, 1, 7),
(8, 12, 1, 8),
(9, 13, 1, 9),
(10, 14, 1, 10),
(11, 15, 1, 11),
(12, 16, 1, 12),
(13, 17, 1, 13),
(14, 18, 1, 14),
(15, 19, 1, 15),
(16, 20, 1, 16),
(17, 21, 1, 17),
(18, 22, 1, 18),
(19, 23, 1, 19),
(20, 24, 1, 20),
(21, 25, 1, 21),
(22, 26, 1, 22),
(23, 27, 1, 23),
(24, 28, 1, 24),
(25, 29, 1, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files_related_morphs`
--

CREATE TABLE `files_related_morphs` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `related_id` int(10) UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `files_related_morphs`
--

INSERT INTO `files_related_morphs` (`id`, `file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(1, 1, 1, 'api::cotizacion-compra.cotizacion-compra', 'adjunto', 1),
(2, 2, 2, 'api::cotizacion-compra.cotizacion-compra', 'adjunto', 1),
(3, 3, 3, 'api::cotizacion-compra.cotizacion-compra', 'adjunto', 1),
(4, 14, 11, 'api::cotizacion-compra.cotizacion-compra', 'adjunto', 1),
(5, 15, 12, 'api::cotizacion-compra.cotizacion-compra', 'adjunto', 1),
(6, 16, 13, 'api::cotizacion-compra.cotizacion-compra', 'adjunto', 1),
(7, 17, 14, 'api::cotizacion-compra.cotizacion-compra', 'adjunto', 1),
(8, 18, 15, 'api::cotizacion-compra.cotizacion-compra', 'adjunto', 1),
(9, 19, 16, 'api::cotizacion-compra.cotizacion-compra', 'adjunto', 1),
(10, 20, 17, 'api::cotizacion-compra.cotizacion-compra', 'adjunto', 1),
(11, 21, 18, 'api::cotizacion-compra.cotizacion-compra', 'adjunto', 1),
(12, 22, 19, 'api::cotizacion-compra.cotizacion-compra', 'adjunto', 1),
(13, 23, 20, 'api::cotizacion-compra.cotizacion-compra', 'adjunto', 1),
(14, 24, 21, 'api::cotizacion-compra.cotizacion-compra', 'adjunto', 1),
(15, 25, 22, 'api::cotizacion-compra.cotizacion-compra', 'adjunto', 1),
(16, 26, 23, 'api::cotizacion-compra.cotizacion-compra', 'adjunto', 1),
(17, 27, 27, 'api::cotizacion-compra.cotizacion-compra', 'adjunto', 1),
(18, 28, 28, 'api::cotizacion-compra.cotizacion-compra', 'adjunto', 1),
(19, 29, 29, 'api::cotizacion-compra.cotizacion-compra', 'adjunto', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'English (en)', 'en', '2023-10-15 12:25:03.293000', '2023-10-15 12:25:03.293000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_compras`
--

CREATE TABLE `orden_compras` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `orden_compras`
--

INSERT INTO `orden_compras` (`id`, `fecha_creacion`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `monto`) VALUES
(1, '2023-10-22', '2023-10-19 19:33:57.953000', '2023-10-21 20:45:38.870000', '2023-10-19 19:33:59.170000', 1, 1, 100.00),
(2, '2023-10-21', '2023-10-19 19:34:10.955000', '2023-10-20 22:09:00.573000', '2023-10-19 19:34:12.074000', 1, 1, 200.00),
(3, '2023-10-22', '2023-10-19 19:34:21.695000', '2023-10-20 22:09:05.242000', '2023-10-19 19:34:22.819000', 1, 1, 300.00),
(15, '2023-10-22', '2023-10-21 20:49:20.555000', '2023-10-21 20:49:20.555000', '2023-10-21 20:49:20.553000', NULL, NULL, 700.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_compras_cotizacion_compra_links`
--

CREATE TABLE `orden_compras_cotizacion_compra_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `orden_compra_id` int(10) UNSIGNED DEFAULT NULL,
  `cotizacion_compra_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `orden_compras_cotizacion_compra_links`
--

INSERT INTO `orden_compras_cotizacion_compra_links` (`id`, `orden_compra_id`, `cotizacion_compra_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(23, 15, 29);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_compras_orden_compra_estado_links`
--

CREATE TABLE `orden_compras_orden_compra_estado_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `orden_compra_id` int(10) UNSIGNED DEFAULT NULL,
  `orden_compra_estado_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `orden_compras_orden_compra_estado_links`
--

INSERT INTO `orden_compras_orden_compra_estado_links` (`id`, `orden_compra_id`, `orden_compra_estado_id`) VALUES
(1, 1, 3),
(2, 2, 3),
(3, 3, 3),
(15, 15, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_compra_devolucions`
--

CREATE TABLE `orden_compra_devolucions` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `detalle` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_compra_devolucions_orden_compra_links`
--

CREATE TABLE `orden_compra_devolucions_orden_compra_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `orden_compra_devolucion_id` int(10) UNSIGNED DEFAULT NULL,
  `orden_compra_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_compra_estados`
--

CREATE TABLE `orden_compra_estados` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `orden_compra_estados`
--

INSERT INTO `orden_compra_estados` (`id`, `nombre`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Finalizada', '2023-10-19 19:32:35.351000', '2023-10-19 19:32:36.118000', '2023-10-19 19:32:36.116000', 1, 1),
(2, 'Pendiente de pago', '2023-10-19 19:32:42.809000', '2023-10-19 19:32:53.839000', '2023-10-19 19:32:53.836000', 1, 1),
(3, 'Pendiente de entrega', '2023-10-19 19:33:01.338000', '2023-10-19 19:33:02.139000', '2023-10-19 19:33:02.137000', 1, 1),
(4, 'En proceso de devolución', '2023-10-19 19:33:20.303000', '2023-10-19 19:33:21.186000', '2023-10-19 19:33:21.182000', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_compra_recepcions`
--

CREATE TABLE `orden_compra_recepcions` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `detalle` longtext DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_compra_recepcions_orden_compra_links`
--

CREATE TABLE `orden_compra_recepcions_orden_compra_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `orden_compra_recepcion_id` int(10) UNSIGNED DEFAULT NULL,
  `orden_compra_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_compra_recepcions_ord_compra_recepcion_estado_links`
--

CREATE TABLE `orden_compra_recepcions_ord_compra_recepcion_estado_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `orden_compra_recepcion_id` int(10) UNSIGNED DEFAULT NULL,
  `orden_compra_recepcion_estado_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_compra_recepcion_estados`
--

CREATE TABLE `orden_compra_recepcion_estados` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `orden_compra_recepcion_estados`
--

INSERT INTO `orden_compra_recepcion_estados` (`id`, `nombre`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Items completos', '2023-10-19 19:34:37.645000', '2023-10-19 19:34:38.284000', '2023-10-19 19:34:38.282000', 1, 1),
(2, 'Items incompletos', '2023-10-19 19:34:46.258000', '2023-10-19 19:34:47.317000', '2023-10-19 19:34:47.315000', 1, 1),
(3, 'Items dañados', '2023-10-19 19:34:53.539000', '2023-10-19 19:34:54.093000', '2023-10-19 19:34:54.091000', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `marca`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Lapicero', 'BIC', '2023-10-19 19:21:01.047000', '2023-10-19 19:21:02.220000', '2023-10-19 19:21:02.217000', 1, 1),
(2, 'Teclado', 'DELL', '2023-10-19 19:21:12.321000', '2023-10-19 19:21:13.298000', '2023-10-19 19:21:13.295000', 1, 1),
(3, 'Laptop', 'ACER', '2023-10-19 19:21:30.403000', '2023-10-19 19:21:31.133000', '2023-10-19 19:21:31.128000', 1, 1),
(4, 'Silla ejecutiva', 'ABM', '2023-10-19 19:22:07.869000', '2023-10-19 19:22:08.560000', '2023-10-19 19:22:08.558000', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_producto_categoria_links`
--

CREATE TABLE `productos_producto_categoria_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `producto_id` int(10) UNSIGNED DEFAULT NULL,
  `producto_categoria_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos_producto_categoria_links`
--

INSERT INTO `productos_producto_categoria_links` (`id`, `producto_id`, `producto_categoria_id`) VALUES
(1, 1, 3),
(2, 2, 1),
(3, 3, 1),
(4, 4, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_categorias`
--

CREATE TABLE `producto_categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto_categorias`
--

INSERT INTO `producto_categorias` (`id`, `nombre`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Computación', '2023-10-19 19:20:27.813000', '2023-10-19 19:20:28.478000', '2023-10-19 19:20:28.474000', 1, 1),
(2, 'Mobiliario y equipo', '2023-10-19 19:20:37.349000', '2023-10-19 19:20:38.036000', '2023-10-19 19:20:38.034000', 1, 1),
(3, 'Papelería y utiles', '2023-10-19 19:20:46.631000', '2023-10-19 19:20:46.973000', '2023-10-19 19:20:46.971000', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedors`
--

CREATE TABLE `proveedors` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre_fiscal` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `nit` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedors`
--

INSERT INTO `proveedors` (`id`, `nombre_fiscal`, `direccion`, `nit`, `telefono`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'KEMIK', 'Zona 4', '1044574-9', '55665554', '2023-10-19 19:25:16.689000', '2023-10-19 19:25:17.460000', '2023-10-19 19:25:17.458000', 1, 1),
(2, 'Mubles fiesta', 'Zona 1, Ciudad de Guatemala', '45578-8', '55555689', '2023-10-19 19:25:45.211000', '2023-10-19 19:25:45.900000', '2023-10-19 19:25:45.895000', 1, 1),
(3, 'Liberia Bendición', 'Zona 9, Ciudad de Guatemala', '4488789-2', '44444444', '2023-10-19 19:26:20.349000', '2023-10-19 19:26:21.511000', '2023-10-19 19:26:21.509000', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedors_proveedor_categoria_links`
--

CREATE TABLE `proveedors_proveedor_categoria_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `proveedor_id` int(10) UNSIGNED DEFAULT NULL,
  `proveedor_categoria_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedors_proveedor_categoria_links`
--

INSERT INTO `proveedors_proveedor_categoria_links` (`id`, `proveedor_id`, `proveedor_categoria_id`) VALUES
(1, 1, 1),
(2, 2, 3),
(3, 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor_categorias`
--

CREATE TABLE `proveedor_categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor_categorias`
--

INSERT INTO `proveedor_categorias` (`id`, `nombre`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Equipo de computación', '2023-10-19 19:24:17.036000', '2023-10-19 19:24:18.075000', '2023-10-19 19:24:18.073000', 1, 1),
(2, 'Papelería y útiles', '2023-10-19 19:24:32.775000', '2023-10-19 19:24:33.279000', '2023-10-19 19:24:33.277000', 1, 1),
(3, 'Mobiliario y equipo', '2023-10-19 19:24:47.274000', '2023-10-19 19:24:47.821000', '2023-10-19 19:24:47.819000', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor_contactos`
--

CREATE TABLE `proveedor_contactos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `cui` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor_contactos`
--

INSERT INTO `proveedor_contactos` (`id`, `nombre`, `direccion`, `cui`, `telefono`, `correo`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Julio Rodriguez', 'Ciudad de Guatemala', '2344589770101', '55447789', 'jrodriguez@gmail.com', '2023-10-19 19:27:12.751000', '2023-10-19 19:27:14.044000', '2023-10-19 19:27:14.040000', 1, 1),
(2, 'Maria', 'Gutierrez', '2477587150101', '55456698', 'mgutierrez@gmail.com', '2023-10-19 19:27:46.837000', '2023-10-19 19:27:47.651000', '2023-10-19 19:27:47.648000', 1, 1),
(3, 'Silvia', 'Hernandez', '456689870101', '44455668', 'shernandez@gmail.com', '2023-10-19 19:28:21.854000', '2023-10-19 19:28:22.560000', '2023-10-19 19:28:22.558000', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor_contactos_proveedor_links`
--

CREATE TABLE `proveedor_contactos_proveedor_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `proveedor_contacto_id` int(10) UNSIGNED DEFAULT NULL,
  `proveedor_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor_contactos_proveedor_links`
--

INSERT INTO `proveedor_contactos_proveedor_links` (`id`, `proveedor_contacto_id`, `proveedor_id`) VALUES
(1, 1, 1),
(2, 2, 3),
(3, 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_compras`
--

CREATE TABLE `solicitud_compras` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitud_compras`
--

INSERT INTO `solicitud_compras` (`id`, `fecha_creacion`, `total`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, '2023-10-20', 1600.00, '2023-10-19 19:22:34.593000', '2023-10-21 19:56:33.608000', '2023-10-19 19:22:57.296000', 1, 1),
(2, '2023-10-19', 8900.00, '2023-10-19 19:22:52.765000', '2023-10-19 19:22:53.971000', '2023-10-19 19:22:53.962000', 1, 1),
(3, '2023-10-21', 20.00, '2023-10-19 19:23:13.736000', '2023-10-19 19:23:15.297000', '2023-10-19 19:23:15.289000', 1, 1),
(4, '2023-10-21', 500.00, '2023-10-21 20:48:15.621000', '2023-10-21 20:48:25.629000', '2023-10-21 20:48:25.627000', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_compras_aprobador_gerente_links`
--

CREATE TABLE `solicitud_compras_aprobador_gerente_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `solicitud_compra_id` int(10) UNSIGNED DEFAULT NULL,
  `empleado_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_compras_aprobador_jefe_links`
--

CREATE TABLE `solicitud_compras_aprobador_jefe_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `solicitud_compra_id` int(10) UNSIGNED DEFAULT NULL,
  `empleado_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_compras_solicitante_links`
--

CREATE TABLE `solicitud_compras_solicitante_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `solicitud_compra_id` int(10) UNSIGNED DEFAULT NULL,
  `empleado_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitud_compras_solicitante_links`
--

INSERT INTO `solicitud_compras_solicitante_links` (`id`, `solicitud_compra_id`, `empleado_id`) VALUES
(4, 1, 2),
(2, 2, 1),
(3, 3, 1),
(5, 4, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_compras_solicitud_compra_estado_links`
--

CREATE TABLE `solicitud_compras_solicitud_compra_estado_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `solicitud_compra_id` int(10) UNSIGNED DEFAULT NULL,
  `solicitud_compra_estado_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitud_compras_solicitud_compra_estado_links`
--

INSERT INTO `solicitud_compras_solicitud_compra_estado_links` (`id`, `solicitud_compra_id`, `solicitud_compra_estado_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_compra_detalles`
--

CREATE TABLE `solicitud_compra_detalles` (
  `id` int(10) UNSIGNED NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitud_compra_detalles`
--

INSERT INTO `solicitud_compra_detalles` (`id`, `cantidad`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 1, '2023-10-19 19:23:27.323000', '2023-10-19 19:23:28.432000', '2023-10-19 19:23:28.430000', 1, 1),
(2, 1, '2023-10-19 19:23:36.582000', '2023-10-19 19:23:37.573000', '2023-10-19 19:23:37.571000', 1, 1),
(3, 20, '2023-10-19 19:23:45.407000', '2023-10-19 19:23:46.654000', '2023-10-19 19:23:46.652000', 1, 1),
(4, 2, '2023-10-21 20:48:41.938000', '2023-10-21 20:48:43.286000', '2023-10-21 20:48:43.284000', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_compra_detalles_producto_links`
--

CREATE TABLE `solicitud_compra_detalles_producto_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `solicitud_compra_detalle_id` int(10) UNSIGNED DEFAULT NULL,
  `producto_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitud_compra_detalles_producto_links`
--

INSERT INTO `solicitud_compra_detalles_producto_links` (`id`, `solicitud_compra_detalle_id`, `producto_id`) VALUES
(1, 1, 4),
(2, 2, 3),
(3, 3, 1),
(4, 4, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_compra_detalles_solicitud_compra_links`
--

CREATE TABLE `solicitud_compra_detalles_solicitud_compra_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `solicitud_compra_detalle_id` int(10) UNSIGNED DEFAULT NULL,
  `solicitud_compra_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitud_compra_detalles_solicitud_compra_links`
--

INSERT INTO `solicitud_compra_detalles_solicitud_compra_links` (`id`, `solicitud_compra_detalle_id`, `solicitud_compra_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_compra_estados`
--

CREATE TABLE `solicitud_compra_estados` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitud_compra_estados`
--

INSERT INTO `solicitud_compra_estados` (`id`, `nombre`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'En proceso de autorización', '2023-10-19 19:19:05.437000', '2023-10-19 19:19:59.817000', '2023-10-19 19:19:06.232000', 1, 1),
(2, 'Rechazada', '2023-10-19 19:19:14.182000', '2023-10-19 19:19:16.726000', '2023-10-19 19:19:16.724000', 1, 1),
(3, 'Autorizada', '2023-10-19 19:19:35.345000', '2023-10-19 19:19:46.839000', '2023-10-19 19:19:46.837000', 1, 1),
(4, 'Modificada', '2023-10-19 19:20:13.758000', '2023-10-19 19:20:14.388000', '2023-10-19 19:20:14.382000', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_api_token_permissions`
--

CREATE TABLE `strapi_api_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_api_token_permissions_token_links`
--

CREATE TABLE `strapi_api_token_permissions_token_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"registrationToken\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token-permission\",\"connection\":\"default\",\"uid\":\"admin::api-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\"},\"admin::transfer-token\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token\",\"connection\":\"default\",\"uid\":\"admin::transfer-token\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferToken\"},\"admin::transfer-token-permission\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token-permission\",\"connection\":\"default\",\"uid\":\"admin::transfer-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferTokenPermission\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"folder\",\"connection\":\"default\",\"uid\":\"plugin::upload.folder\",\"plugin\":\"upload\",\"globalId\":\"UploadFolder\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"api::contrasenia-pago.contrasenia-pago\":{\"kind\":\"collectionType\",\"collectionName\":\"contrasenia_pagos\",\"info\":{\"singularName\":\"contrasenia-pago\",\"pluralName\":\"contrasenia-pagos\",\"displayName\":\"contrasenia_pago\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"factura\":{\"type\":\"string\"},\"fecha_factura\":{\"type\":\"date\"},\"cuotas\":{\"type\":\"integer\"},\"pago\":{\"type\":\"decimal\"},\"orden_compra\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::orden-compra.orden-compra\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"contrasenia_pagos\",\"info\":{\"singularName\":\"contrasenia-pago\",\"pluralName\":\"contrasenia-pagos\",\"displayName\":\"contrasenia_pago\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"factura\":{\"type\":\"string\"},\"fecha_factura\":{\"type\":\"date\"},\"cuotas\":{\"type\":\"integer\"},\"pago\":{\"type\":\"decimal\"},\"orden_compra\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::orden-compra.orden-compra\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"contrasenia-pago\",\"connection\":\"default\",\"uid\":\"api::contrasenia-pago.contrasenia-pago\",\"apiName\":\"contrasenia-pago\",\"globalId\":\"ContraseniaPago\",\"actions\":{},\"lifecycles\":{}},\"api::cotizacion-compra.cotizacion-compra\":{\"kind\":\"collectionType\",\"collectionName\":\"cotizacion_compras\",\"info\":{\"singularName\":\"cotizacion-compra\",\"pluralName\":\"cotizacion-compras\",\"displayName\":\"cotizacion_compra\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"fecha_creacion\":{\"type\":\"date\"},\"adjunto\":{\"allowedTypes\":[\"images\",\"files\",\"audios\"],\"type\":\"media\",\"multiple\":false},\"total\":{\"type\":\"decimal\"},\"seleccionada\":{\"type\":\"boolean\"},\"solicitud_compra\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::solicitud-compra.solicitud-compra\"},\"proveedor\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::proveedor.proveedor\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"cotizacion_compras\",\"info\":{\"singularName\":\"cotizacion-compra\",\"pluralName\":\"cotizacion-compras\",\"displayName\":\"cotizacion_compra\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"fecha_creacion\":{\"type\":\"date\"},\"adjunto\":{\"allowedTypes\":[\"images\",\"files\",\"audios\"],\"type\":\"media\",\"multiple\":false},\"total\":{\"type\":\"decimal\"},\"seleccionada\":{\"type\":\"boolean\"},\"solicitud_compra\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::solicitud-compra.solicitud-compra\"},\"proveedor\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::proveedor.proveedor\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"cotizacion-compra\",\"connection\":\"default\",\"uid\":\"api::cotizacion-compra.cotizacion-compra\",\"apiName\":\"cotizacion-compra\",\"globalId\":\"CotizacionCompra\",\"actions\":{},\"lifecycles\":{}},\"api::departamento.departamento\":{\"kind\":\"collectionType\",\"collectionName\":\"departamentos\",\"info\":{\"singularName\":\"departamento\",\"pluralName\":\"departamentos\",\"displayName\":\"departamento\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\",\"required\":true},\"ubicacion\":{\"type\":\"string\",\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"departamentos\",\"info\":{\"singularName\":\"departamento\",\"pluralName\":\"departamentos\",\"displayName\":\"departamento\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\",\"required\":true},\"ubicacion\":{\"type\":\"string\",\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"departamento\",\"connection\":\"default\",\"uid\":\"api::departamento.departamento\",\"apiName\":\"departamento\",\"globalId\":\"Departamento\",\"actions\":{},\"lifecycles\":{}},\"api::empleado.empleado\":{\"kind\":\"collectionType\",\"collectionName\":\"empleados\",\"info\":{\"singularName\":\"empleado\",\"pluralName\":\"empleados\",\"displayName\":\"empleado\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombres\":{\"type\":\"string\",\"required\":true},\"apellidos\":{\"type\":\"string\",\"required\":true},\"telefono\":{\"type\":\"string\",\"required\":true},\"correo\":{\"type\":\"email\",\"required\":true},\"departamento\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::departamento.departamento\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"empleados\",\"info\":{\"singularName\":\"empleado\",\"pluralName\":\"empleados\",\"displayName\":\"empleado\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombres\":{\"type\":\"string\",\"required\":true},\"apellidos\":{\"type\":\"string\",\"required\":true},\"telefono\":{\"type\":\"string\",\"required\":true},\"correo\":{\"type\":\"email\",\"required\":true},\"departamento\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::departamento.departamento\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"empleado\",\"connection\":\"default\",\"uid\":\"api::empleado.empleado\",\"apiName\":\"empleado\",\"globalId\":\"Empleado\",\"actions\":{},\"lifecycles\":{}},\"api::orden-compra.orden-compra\":{\"kind\":\"collectionType\",\"collectionName\":\"orden_compras\",\"info\":{\"singularName\":\"orden-compra\",\"pluralName\":\"orden-compras\",\"displayName\":\"orden_compra\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"fecha_creacion\":{\"type\":\"date\"},\"cotizacion_compra\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::cotizacion-compra.cotizacion-compra\"},\"orden_compra_estado\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::orden-compra-estado.orden-compra-estado\"},\"monto\":{\"type\":\"decimal\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"orden_compras\",\"info\":{\"singularName\":\"orden-compra\",\"pluralName\":\"orden-compras\",\"displayName\":\"orden_compra\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"fecha_creacion\":{\"type\":\"date\"},\"cotizacion_compra\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::cotizacion-compra.cotizacion-compra\"},\"orden_compra_estado\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::orden-compra-estado.orden-compra-estado\"},\"monto\":{\"type\":\"decimal\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"orden-compra\",\"connection\":\"default\",\"uid\":\"api::orden-compra.orden-compra\",\"apiName\":\"orden-compra\",\"globalId\":\"OrdenCompra\",\"actions\":{},\"lifecycles\":{}},\"api::orden-compra-devolucion.orden-compra-devolucion\":{\"kind\":\"collectionType\",\"collectionName\":\"orden_compra_devolucions\",\"info\":{\"singularName\":\"orden-compra-devolucion\",\"pluralName\":\"orden-compra-devolucions\",\"displayName\":\"orden_compra_devolucion\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"fecha_creacion\":{\"type\":\"date\"},\"detalle\":{\"type\":\"string\"},\"orden_compra\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::orden-compra.orden-compra\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"orden_compra_devolucions\",\"info\":{\"singularName\":\"orden-compra-devolucion\",\"pluralName\":\"orden-compra-devolucions\",\"displayName\":\"orden_compra_devolucion\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"fecha_creacion\":{\"type\":\"date\"},\"detalle\":{\"type\":\"string\"},\"orden_compra\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::orden-compra.orden-compra\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"orden-compra-devolucion\",\"connection\":\"default\",\"uid\":\"api::orden-compra-devolucion.orden-compra-devolucion\",\"apiName\":\"orden-compra-devolucion\",\"globalId\":\"OrdenCompraDevolucion\",\"actions\":{},\"lifecycles\":{}},\"api::orden-compra-estado.orden-compra-estado\":{\"kind\":\"collectionType\",\"collectionName\":\"orden_compra_estados\",\"info\":{\"singularName\":\"orden-compra-estado\",\"pluralName\":\"orden-compra-estados\",\"displayName\":\"orden_compra_estado\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\",\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"orden_compra_estados\",\"info\":{\"singularName\":\"orden-compra-estado\",\"pluralName\":\"orden-compra-estados\",\"displayName\":\"orden_compra_estado\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\",\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"orden-compra-estado\",\"connection\":\"default\",\"uid\":\"api::orden-compra-estado.orden-compra-estado\",\"apiName\":\"orden-compra-estado\",\"globalId\":\"OrdenCompraEstado\",\"actions\":{},\"lifecycles\":{}},\"api::orden-compra-recepcion.orden-compra-recepcion\":{\"kind\":\"collectionType\",\"collectionName\":\"orden_compra_recepcions\",\"info\":{\"singularName\":\"orden-compra-recepcion\",\"pluralName\":\"orden-compra-recepcions\",\"displayName\":\"orden_compra_recepcion\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"fecha_creacion\":{\"type\":\"date\"},\"detalle\":{\"type\":\"text\"},\"orden_compra\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::orden-compra.orden-compra\"},\"ord_compra_recepcion_estado\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::orden-compra-recepcion-estado.orden-compra-recepcion-estado\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"orden_compra_recepcions\",\"info\":{\"singularName\":\"orden-compra-recepcion\",\"pluralName\":\"orden-compra-recepcions\",\"displayName\":\"orden_compra_recepcion\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"fecha_creacion\":{\"type\":\"date\"},\"detalle\":{\"type\":\"text\"},\"orden_compra\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::orden-compra.orden-compra\"},\"ord_compra_recepcion_estado\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::orden-compra-recepcion-estado.orden-compra-recepcion-estado\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"orden-compra-recepcion\",\"connection\":\"default\",\"uid\":\"api::orden-compra-recepcion.orden-compra-recepcion\",\"apiName\":\"orden-compra-recepcion\",\"globalId\":\"OrdenCompraRecepcion\",\"actions\":{},\"lifecycles\":{}},\"api::orden-compra-recepcion-estado.orden-compra-recepcion-estado\":{\"kind\":\"collectionType\",\"collectionName\":\"orden_compra_recepcion_estados\",\"info\":{\"singularName\":\"orden-compra-recepcion-estado\",\"pluralName\":\"orden-compra-recepcion-estados\",\"displayName\":\"ord_compra_recepcion_estado\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"orden_compra_recepcion_estados\",\"info\":{\"singularName\":\"orden-compra-recepcion-estado\",\"pluralName\":\"orden-compra-recepcion-estados\",\"displayName\":\"ord_compra_recepcion_estado\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"orden-compra-recepcion-estado\",\"connection\":\"default\",\"uid\":\"api::orden-compra-recepcion-estado.orden-compra-recepcion-estado\",\"apiName\":\"orden-compra-recepcion-estado\",\"globalId\":\"OrdenCompraRecepcionEstado\",\"actions\":{},\"lifecycles\":{}},\"api::producto.producto\":{\"kind\":\"collectionType\",\"collectionName\":\"productos\",\"info\":{\"singularName\":\"producto\",\"pluralName\":\"productos\",\"displayName\":\"producto\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\",\"required\":true},\"marca\":{\"type\":\"string\",\"required\":true},\"producto_categoria\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::producto-categoria.producto-categoria\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"productos\",\"info\":{\"singularName\":\"producto\",\"pluralName\":\"productos\",\"displayName\":\"producto\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\",\"required\":true},\"marca\":{\"type\":\"string\",\"required\":true},\"producto_categoria\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::producto-categoria.producto-categoria\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"producto\",\"connection\":\"default\",\"uid\":\"api::producto.producto\",\"apiName\":\"producto\",\"globalId\":\"Producto\",\"actions\":{},\"lifecycles\":{}},\"api::producto-categoria.producto-categoria\":{\"kind\":\"collectionType\",\"collectionName\":\"producto_categorias\",\"info\":{\"singularName\":\"producto-categoria\",\"pluralName\":\"producto-categorias\",\"displayName\":\"producto_categoria\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\",\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"producto_categorias\",\"info\":{\"singularName\":\"producto-categoria\",\"pluralName\":\"producto-categorias\",\"displayName\":\"producto_categoria\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\",\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"producto-categoria\",\"connection\":\"default\",\"uid\":\"api::producto-categoria.producto-categoria\",\"apiName\":\"producto-categoria\",\"globalId\":\"ProductoCategoria\",\"actions\":{},\"lifecycles\":{}},\"api::proveedor.proveedor\":{\"kind\":\"collectionType\",\"collectionName\":\"proveedors\",\"info\":{\"singularName\":\"proveedor\",\"pluralName\":\"proveedors\",\"displayName\":\"proveedor\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre_fiscal\":{\"type\":\"string\"},\"direccion\":{\"type\":\"string\"},\"nit\":{\"type\":\"string\"},\"telefono\":{\"type\":\"string\"},\"proveedor_categoria\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::proveedor-categoria.proveedor-categoria\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"proveedors\",\"info\":{\"singularName\":\"proveedor\",\"pluralName\":\"proveedors\",\"displayName\":\"proveedor\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre_fiscal\":{\"type\":\"string\"},\"direccion\":{\"type\":\"string\"},\"nit\":{\"type\":\"string\"},\"telefono\":{\"type\":\"string\"},\"proveedor_categoria\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::proveedor-categoria.proveedor-categoria\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"proveedor\",\"connection\":\"default\",\"uid\":\"api::proveedor.proveedor\",\"apiName\":\"proveedor\",\"globalId\":\"Proveedor\",\"actions\":{},\"lifecycles\":{}},\"api::proveedor-categoria.proveedor-categoria\":{\"kind\":\"collectionType\",\"collectionName\":\"proveedor_categorias\",\"info\":{\"singularName\":\"proveedor-categoria\",\"pluralName\":\"proveedor-categorias\",\"displayName\":\"proveedor_categoria\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"proveedor_categorias\",\"info\":{\"singularName\":\"proveedor-categoria\",\"pluralName\":\"proveedor-categorias\",\"displayName\":\"proveedor_categoria\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"proveedor-categoria\",\"connection\":\"default\",\"uid\":\"api::proveedor-categoria.proveedor-categoria\",\"apiName\":\"proveedor-categoria\",\"globalId\":\"ProveedorCategoria\",\"actions\":{},\"lifecycles\":{}},\"api::proveedor-contacto.proveedor-contacto\":{\"kind\":\"collectionType\",\"collectionName\":\"proveedor_contactos\",\"info\":{\"singularName\":\"proveedor-contacto\",\"pluralName\":\"proveedor-contactos\",\"displayName\":\"proveedor_contacto\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\"},\"direccion\":{\"type\":\"string\"},\"cui\":{\"type\":\"string\"},\"telefono\":{\"type\":\"string\"},\"correo\":{\"type\":\"email\"},\"proveedor\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::proveedor.proveedor\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"proveedor_contactos\",\"info\":{\"singularName\":\"proveedor-contacto\",\"pluralName\":\"proveedor-contactos\",\"displayName\":\"proveedor_contacto\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\"},\"direccion\":{\"type\":\"string\"},\"cui\":{\"type\":\"string\"},\"telefono\":{\"type\":\"string\"},\"correo\":{\"type\":\"email\"},\"proveedor\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::proveedor.proveedor\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"proveedor-contacto\",\"connection\":\"default\",\"uid\":\"api::proveedor-contacto.proveedor-contacto\",\"apiName\":\"proveedor-contacto\",\"globalId\":\"ProveedorContacto\",\"actions\":{},\"lifecycles\":{}},\"api::solicitud-compra.solicitud-compra\":{\"kind\":\"collectionType\",\"collectionName\":\"solicitud_compras\",\"info\":{\"singularName\":\"solicitud-compra\",\"pluralName\":\"solicitud-compras\",\"displayName\":\"solicitud_compra\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"solicitante\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::empleado.empleado\"},\"aprobador_jefe\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::empleado.empleado\"},\"aprobador_gerente\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::empleado.empleado\"},\"fecha_creacion\":{\"type\":\"date\"},\"total\":{\"type\":\"decimal\"},\"solicitud_compra_estado\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::solicitud-compra-estado.solicitud-compra-estado\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"solicitud_compras\",\"info\":{\"singularName\":\"solicitud-compra\",\"pluralName\":\"solicitud-compras\",\"displayName\":\"solicitud_compra\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"solicitante\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::empleado.empleado\"},\"aprobador_jefe\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::empleado.empleado\"},\"aprobador_gerente\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::empleado.empleado\"},\"fecha_creacion\":{\"type\":\"date\"},\"total\":{\"type\":\"decimal\"},\"solicitud_compra_estado\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::solicitud-compra-estado.solicitud-compra-estado\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"solicitud-compra\",\"connection\":\"default\",\"uid\":\"api::solicitud-compra.solicitud-compra\",\"apiName\":\"solicitud-compra\",\"globalId\":\"SolicitudCompra\",\"actions\":{},\"lifecycles\":{}},\"api::solicitud-compra-detalle.solicitud-compra-detalle\":{\"kind\":\"collectionType\",\"collectionName\":\"solicitud_compra_detalles\",\"info\":{\"singularName\":\"solicitud-compra-detalle\",\"pluralName\":\"solicitud-compra-detalles\",\"displayName\":\"solicitud_compra_detalle\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"solicitud_compra\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::solicitud-compra.solicitud-compra\"},\"producto\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::producto.producto\"},\"cantidad\":{\"type\":\"integer\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"solicitud_compra_detalles\",\"info\":{\"singularName\":\"solicitud-compra-detalle\",\"pluralName\":\"solicitud-compra-detalles\",\"displayName\":\"solicitud_compra_detalle\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"solicitud_compra\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::solicitud-compra.solicitud-compra\"},\"producto\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::producto.producto\"},\"cantidad\":{\"type\":\"integer\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"solicitud-compra-detalle\",\"connection\":\"default\",\"uid\":\"api::solicitud-compra-detalle.solicitud-compra-detalle\",\"apiName\":\"solicitud-compra-detalle\",\"globalId\":\"SolicitudCompraDetalle\",\"actions\":{},\"lifecycles\":{}},\"api::solicitud-compra-estado.solicitud-compra-estado\":{\"kind\":\"collectionType\",\"collectionName\":\"solicitud_compra_estados\",\"info\":{\"singularName\":\"solicitud-compra-estado\",\"pluralName\":\"solicitud-compra-estados\",\"displayName\":\"solicitud_compra_estado\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\",\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"solicitud_compra_estados\",\"info\":{\"singularName\":\"solicitud-compra-estado\",\"pluralName\":\"solicitud-compra-estados\",\"displayName\":\"solicitud_compra_estado\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nombre\":{\"type\":\"string\",\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"solicitud-compra-estado\",\"connection\":\"default\",\"uid\":\"api::solicitud-compra-estado.solicitud-compra-estado\",\"apiName\":\"solicitud-compra-estado\",\"globalId\":\"SolicitudCompraEstado\",\"actions\":{},\"lifecycles\":{}}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(2, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"actionParameters\":{\"edit\":{\"label\":\"actionParameters\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"actionParameters\",\"searchable\":false,\"sortable\":false}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6}],[{\"name\":\"actionParameters\",\"size\":12}],[{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_content_types::admin::role', '{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]}}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_content_types::admin::user', '{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]}}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{\"uid\":\"admin::api-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_content_types::admin::transfer-token', '{\"uid\":\"admin::transfer-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"accessKey\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"accessKey\",\"size\":6},{\"name\":\"lastUsedAt\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::admin::transfer-token-permission', '{\"uid\":\"admin::transfer-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]}}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"uid\":\"plugin::upload.folder\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]}}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]}}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(13, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL),
(14, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}', 'object', NULL, NULL),
(15, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(16, 'plugin_upload_view_configuration', '{\"pageSize\":10,\"sort\":\"createdAt:DESC\"}', 'object', NULL, NULL),
(17, 'plugin_upload_metrics', '{\"weeklySchedule\":\"42 12 13 * * 0\",\"lastWeeklyUpdate\":1697397162054}', 'object', NULL, NULL),
(18, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"},\"patreon\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/patreon/callback\",\"scope\":[\"identity\",\"identity[email]\"]}}', 'object', NULL, NULL),
(19, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(20, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(21, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL),
(22, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null,\"ssoLockedRoles\":null}}', 'object', NULL, NULL),
(23, 'plugin_content_manager_configuration_content_types::api::departamento.departamento', '{\"uid\":\"api::departamento.departamento\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nombre\",\"defaultSortBy\":\"nombre\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"nombre\":{\"edit\":{\"label\":\"nombre\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nombre\",\"searchable\":true,\"sortable\":true}},\"ubicacion\":{\"edit\":{\"label\":\"ubicacion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ubicacion\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"nombre\",\"ubicacion\",\"createdAt\"],\"edit\":[[{\"name\":\"nombre\",\"size\":6},{\"name\":\"ubicacion\",\"size\":6}]]}}', 'object', NULL, NULL),
(24, 'plugin_content_manager_configuration_content_types::api::empleado.empleado', '{\"uid\":\"api::empleado.empleado\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nombres\",\"defaultSortBy\":\"nombres\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"nombres\":{\"edit\":{\"label\":\"nombres\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nombres\",\"searchable\":true,\"sortable\":true}},\"apellidos\":{\"edit\":{\"label\":\"apellidos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"apellidos\",\"searchable\":true,\"sortable\":true}},\"telefono\":{\"edit\":{\"label\":\"telefono\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"telefono\",\"searchable\":true,\"sortable\":true}},\"correo\":{\"edit\":{\"label\":\"correo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"correo\",\"searchable\":true,\"sortable\":true}},\"departamento\":{\"edit\":{\"label\":\"departamento\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"departamento\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"nombres\",\"apellidos\",\"telefono\"],\"edit\":[[{\"name\":\"nombres\",\"size\":6},{\"name\":\"apellidos\",\"size\":6}],[{\"name\":\"telefono\",\"size\":6},{\"name\":\"correo\",\"size\":6}],[{\"name\":\"departamento\",\"size\":6}]]}}', 'object', NULL, NULL),
(25, 'plugin_content_manager_configuration_content_types::api::producto-categoria.producto-categoria', '{\"uid\":\"api::producto-categoria.producto-categoria\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nombre\",\"defaultSortBy\":\"nombre\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"nombre\":{\"edit\":{\"label\":\"nombre\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nombre\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"nombre\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"nombre\",\"size\":6}]]}}', 'object', NULL, NULL),
(26, 'plugin_content_manager_configuration_content_types::api::producto.producto', '{\"uid\":\"api::producto.producto\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nombre\",\"defaultSortBy\":\"nombre\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"nombre\":{\"edit\":{\"label\":\"nombre\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nombre\",\"searchable\":true,\"sortable\":true}},\"marca\":{\"edit\":{\"label\":\"marca\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"marca\",\"searchable\":true,\"sortable\":true}},\"producto_categoria\":{\"edit\":{\"label\":\"producto_categoria\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"producto_categoria\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"nombre\",\"marca\",\"producto_categoria\"],\"edit\":[[{\"name\":\"nombre\",\"size\":6},{\"name\":\"marca\",\"size\":6}],[{\"name\":\"producto_categoria\",\"size\":6}]]}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(27, 'plugin_content_manager_configuration_content_types::api::solicitud-compra-estado.solicitud-compra-estado', '{\"uid\":\"api::solicitud-compra-estado.solicitud-compra-estado\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nombre\",\"defaultSortBy\":\"nombre\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"nombre\":{\"edit\":{\"label\":\"nombre\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nombre\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"nombre\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"nombre\",\"size\":6}]]}}', 'object', NULL, NULL),
(28, 'plugin_content_manager_configuration_content_types::api::solicitud-compra.solicitud-compra', '{\"uid\":\"api::solicitud-compra.solicitud-compra\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"solicitante\":{\"edit\":{\"label\":\"solicitante\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombres\"},\"list\":{\"label\":\"solicitante\",\"searchable\":true,\"sortable\":true}},\"aprobador_jefe\":{\"edit\":{\"label\":\"aprobador_jefe\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombres\"},\"list\":{\"label\":\"aprobador_jefe\",\"searchable\":true,\"sortable\":true}},\"aprobador_gerente\":{\"edit\":{\"label\":\"aprobador_gerente\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombres\"},\"list\":{\"label\":\"aprobador_gerente\",\"searchable\":true,\"sortable\":true}},\"fecha_creacion\":{\"edit\":{\"label\":\"fecha_creacion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"fecha_creacion\",\"searchable\":true,\"sortable\":true}},\"total\":{\"edit\":{\"label\":\"total\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"total\",\"searchable\":true,\"sortable\":true}},\"solicitud_compra_estado\":{\"edit\":{\"label\":\"solicitud_compra_estado\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"solicitud_compra_estado\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"solicitante\",\"aprobador_jefe\",\"aprobador_gerente\"],\"edit\":[[{\"name\":\"solicitante\",\"size\":6},{\"name\":\"aprobador_jefe\",\"size\":6}],[{\"name\":\"aprobador_gerente\",\"size\":6},{\"name\":\"fecha_creacion\",\"size\":4}],[{\"name\":\"total\",\"size\":4},{\"name\":\"solicitud_compra_estado\",\"size\":6}]]}}', 'object', NULL, NULL),
(29, 'plugin_content_manager_configuration_content_types::api::solicitud-compra-detalle.solicitud-compra-detalle', '{\"uid\":\"api::solicitud-compra-detalle.solicitud-compra-detalle\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"solicitud_compra\":{\"edit\":{\"label\":\"solicitud_compra\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"solicitud_compra\",\"searchable\":true,\"sortable\":true}},\"producto\":{\"edit\":{\"label\":\"producto\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"producto\",\"searchable\":true,\"sortable\":true}},\"cantidad\":{\"edit\":{\"label\":\"cantidad\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"cantidad\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"solicitud_compra\",\"producto\",\"cantidad\"],\"edit\":[[{\"name\":\"solicitud_compra\",\"size\":6},{\"name\":\"producto\",\"size\":6}],[{\"name\":\"cantidad\",\"size\":4}]]}}', 'object', NULL, NULL),
(30, 'plugin_content_manager_configuration_content_types::api::proveedor-categoria.proveedor-categoria', '{\"uid\":\"api::proveedor-categoria.proveedor-categoria\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nombre\",\"defaultSortBy\":\"nombre\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"nombre\":{\"edit\":{\"label\":\"nombre\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nombre\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"nombre\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"nombre\",\"size\":6}]]}}', 'object', NULL, NULL),
(31, 'plugin_content_manager_configuration_content_types::api::proveedor.proveedor', '{\"uid\":\"api::proveedor.proveedor\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nombre_fiscal\",\"defaultSortBy\":\"nombre_fiscal\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"nombre_fiscal\":{\"edit\":{\"label\":\"nombre_fiscal\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nombre_fiscal\",\"searchable\":true,\"sortable\":true}},\"direccion\":{\"edit\":{\"label\":\"direccion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"direccion\",\"searchable\":true,\"sortable\":true}},\"nit\":{\"edit\":{\"label\":\"nit\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nit\",\"searchable\":true,\"sortable\":true}},\"telefono\":{\"edit\":{\"label\":\"telefono\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"telefono\",\"searchable\":true,\"sortable\":true}},\"proveedor_categoria\":{\"edit\":{\"label\":\"proveedor_categoria\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"proveedor_categoria\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"nombre_fiscal\",\"direccion\",\"nit\"],\"edit\":[[{\"name\":\"nombre_fiscal\",\"size\":6},{\"name\":\"direccion\",\"size\":6}],[{\"name\":\"nit\",\"size\":6},{\"name\":\"telefono\",\"size\":6}],[{\"name\":\"proveedor_categoria\",\"size\":6}]]}}', 'object', NULL, NULL),
(32, 'plugin_content_manager_configuration_content_types::api::proveedor-contacto.proveedor-contacto', '{\"uid\":\"api::proveedor-contacto.proveedor-contacto\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nombre\",\"defaultSortBy\":\"nombre\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"nombre\":{\"edit\":{\"label\":\"nombre\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nombre\",\"searchable\":true,\"sortable\":true}},\"direccion\":{\"edit\":{\"label\":\"direccion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"direccion\",\"searchable\":true,\"sortable\":true}},\"cui\":{\"edit\":{\"label\":\"cui\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"cui\",\"searchable\":true,\"sortable\":true}},\"telefono\":{\"edit\":{\"label\":\"telefono\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"telefono\",\"searchable\":true,\"sortable\":true}},\"correo\":{\"edit\":{\"label\":\"correo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"correo\",\"searchable\":true,\"sortable\":true}},\"proveedor\":{\"edit\":{\"label\":\"proveedor\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre_fiscal\"},\"list\":{\"label\":\"proveedor\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"nombre\",\"direccion\",\"cui\"],\"edit\":[[{\"name\":\"nombre\",\"size\":6},{\"name\":\"direccion\",\"size\":6}],[{\"name\":\"cui\",\"size\":6},{\"name\":\"telefono\",\"size\":6}],[{\"name\":\"correo\",\"size\":6},{\"name\":\"proveedor\",\"size\":6}]]}}', 'object', NULL, NULL),
(33, 'plugin_content_manager_configuration_content_types::api::cotizacion-compra.cotizacion-compra', '{\"uid\":\"api::cotizacion-compra.cotizacion-compra\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"fecha_creacion\":{\"edit\":{\"label\":\"fecha_creacion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"fecha_creacion\",\"searchable\":true,\"sortable\":true}},\"adjunto\":{\"edit\":{\"label\":\"adjunto\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"adjunto\",\"searchable\":false,\"sortable\":false}},\"total\":{\"edit\":{\"label\":\"total\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"total\",\"searchable\":true,\"sortable\":true}},\"seleccionada\":{\"edit\":{\"label\":\"seleccionada\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"seleccionada\",\"searchable\":true,\"sortable\":true}},\"solicitud_compra\":{\"edit\":{\"label\":\"solicitud_compra\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"solicitud_compra\",\"searchable\":true,\"sortable\":true}},\"proveedor\":{\"edit\":{\"label\":\"proveedor\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre_fiscal\"},\"list\":{\"label\":\"proveedor\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"fecha_creacion\",\"adjunto\",\"total\"],\"edit\":[[{\"name\":\"fecha_creacion\",\"size\":4},{\"name\":\"adjunto\",\"size\":6}],[{\"name\":\"total\",\"size\":4},{\"name\":\"seleccionada\",\"size\":4}],[{\"name\":\"solicitud_compra\",\"size\":6},{\"name\":\"proveedor\",\"size\":6}]]}}', 'object', NULL, NULL),
(34, 'plugin_content_manager_configuration_content_types::api::orden-compra-estado.orden-compra-estado', '{\"uid\":\"api::orden-compra-estado.orden-compra-estado\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nombre\",\"defaultSortBy\":\"nombre\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"nombre\":{\"edit\":{\"label\":\"nombre\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nombre\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"nombre\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"nombre\",\"size\":6}]]}}', 'object', NULL, NULL),
(35, 'plugin_content_manager_configuration_content_types::api::orden-compra.orden-compra', '{\"uid\":\"api::orden-compra.orden-compra\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"fecha_creacion\":{\"edit\":{\"label\":\"fecha_creacion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"fecha_creacion\",\"searchable\":true,\"sortable\":true}},\"cotizacion_compra\":{\"edit\":{\"label\":\"cotizacion_compra\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"cotizacion_compra\",\"searchable\":true,\"sortable\":true}},\"orden_compra_estado\":{\"edit\":{\"label\":\"orden_compra_estado\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"orden_compra_estado\",\"searchable\":true,\"sortable\":true}},\"monto\":{\"edit\":{\"label\":\"monto\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"monto\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"fecha_creacion\",\"cotizacion_compra\",\"orden_compra_estado\"],\"edit\":[[{\"name\":\"fecha_creacion\",\"size\":4},{\"name\":\"cotizacion_compra\",\"size\":6}],[{\"name\":\"orden_compra_estado\",\"size\":6},{\"name\":\"monto\",\"size\":4}]]}}', 'object', NULL, NULL),
(36, 'plugin_content_manager_configuration_content_types::api::orden-compra-recepcion-estado.orden-compra-recepcion-estado', '{\"uid\":\"api::orden-compra-recepcion-estado.orden-compra-recepcion-estado\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nombre\",\"defaultSortBy\":\"nombre\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"nombre\":{\"edit\":{\"label\":\"nombre\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nombre\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"nombre\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"nombre\",\"size\":6}]]}}', 'object', NULL, NULL),
(37, 'plugin_content_manager_configuration_content_types::api::orden-compra-recepcion.orden-compra-recepcion', '{\"uid\":\"api::orden-compra-recepcion.orden-compra-recepcion\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"fecha_creacion\":{\"edit\":{\"label\":\"fecha_creacion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"fecha_creacion\",\"searchable\":true,\"sortable\":true}},\"detalle\":{\"edit\":{\"label\":\"detalle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"detalle\",\"searchable\":true,\"sortable\":true}},\"orden_compra\":{\"edit\":{\"label\":\"orden_compra\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"orden_compra\",\"searchable\":true,\"sortable\":true}},\"ord_compra_recepcion_estado\":{\"edit\":{\"label\":\"ord_compra_recepcion_estado\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nombre\"},\"list\":{\"label\":\"ord_compra_recepcion_estado\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"fecha_creacion\",\"detalle\",\"orden_compra\"],\"edit\":[[{\"name\":\"fecha_creacion\",\"size\":4},{\"name\":\"detalle\",\"size\":6}],[{\"name\":\"orden_compra\",\"size\":6},{\"name\":\"ord_compra_recepcion_estado\",\"size\":6}]]}}', 'object', NULL, NULL),
(38, 'plugin_content_manager_configuration_content_types::api::orden-compra-devolucion.orden-compra-devolucion', '{\"uid\":\"api::orden-compra-devolucion.orden-compra-devolucion\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"detalle\",\"defaultSortBy\":\"detalle\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"fecha_creacion\":{\"edit\":{\"label\":\"fecha_creacion\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"fecha_creacion\",\"searchable\":true,\"sortable\":true}},\"detalle\":{\"edit\":{\"label\":\"detalle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"detalle\",\"searchable\":true,\"sortable\":true}},\"orden_compra\":{\"edit\":{\"label\":\"orden_compra\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"orden_compra\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"fecha_creacion\",\"detalle\",\"orden_compra\"],\"edit\":[[{\"name\":\"fecha_creacion\",\"size\":4},{\"name\":\"detalle\",\"size\":6}],[{\"name\":\"orden_compra\",\"size\":6}]]}}', 'object', NULL, NULL),
(39, 'plugin_content_manager_configuration_content_types::api::contrasenia-pago.contrasenia-pago', '{\"uid\":\"api::contrasenia-pago.contrasenia-pago\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"factura\",\"defaultSortBy\":\"factura\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"factura\":{\"edit\":{\"label\":\"factura\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"factura\",\"searchable\":true,\"sortable\":true}},\"fecha_factura\":{\"edit\":{\"label\":\"fecha_factura\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"fecha_factura\",\"searchable\":true,\"sortable\":true}},\"cuotas\":{\"edit\":{\"label\":\"cuotas\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"cuotas\",\"searchable\":true,\"sortable\":true}},\"pago\":{\"edit\":{\"label\":\"pago\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pago\",\"searchable\":true,\"sortable\":true}},\"orden_compra\":{\"edit\":{\"label\":\"orden_compra\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"orden_compra\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"factura\",\"fecha_factura\",\"cuotas\"],\"edit\":[[{\"name\":\"factura\",\"size\":6},{\"name\":\"fecha_factura\",\"size\":4}],[{\"name\":\"cuotas\",\"size\":4},{\"name\":\"pago\",\"size\":4}],[{\"name\":\"orden_compra\",\"size\":6}]]}}', 'object', NULL, NULL),
(40, 'plugin_upload_api-folder', '{\"id\":1}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(21, '{\"tables\":[{\"name\":\"strapi_core_store_settings\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"value\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"environment\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tag\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_webhooks\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"headers\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"events\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"enabled\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions\",\"indexes\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action_parameters\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"subject\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"properties\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"conditions\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users\",\"indexes\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"firstname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lastname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"registration_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"prefered_language\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_roles\",\"indexes\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_tokens\",\"indexes\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_tokens\",\"indexes\":[{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_token_permissions\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files\",\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null},{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"alternative_text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"caption\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"width\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"height\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"formats\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"hash\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ext\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mime\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"size\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"preview_url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider_metadata\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"folder_path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders\",\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"},{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"i18n_locale\",\"indexes\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions\",\"indexes\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_roles\",\"indexes\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users\",\"indexes\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmation_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"contrasenia_pagos\",\"indexes\":[{\"name\":\"contrasenia_pagos_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"contrasenia_pagos_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"contrasenia_pagos_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"contrasenia_pagos_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"factura\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"fecha_factura\",\"type\":\"date\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"cuotas\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"pago\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"cotizacion_compras\",\"indexes\":[{\"name\":\"cotizacion_compras_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"cotizacion_compras_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"cotizacion_compras_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"cotizacion_compras_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"fecha_creacion\",\"type\":\"date\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"total\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"seleccionada\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"departamentos\",\"indexes\":[{\"name\":\"departamentos_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"departamentos_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"departamentos_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"departamentos_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"nombre\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ubicacion\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"empleados\",\"indexes\":[{\"name\":\"empleados_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"empleados_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"empleados_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"empleados_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"nombres\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"apellidos\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"telefono\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"correo\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"orden_compras\",\"indexes\":[{\"name\":\"orden_compras_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"orden_compras_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"orden_compras_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"orden_compras_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"fecha_creacion\",\"type\":\"date\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"monto\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"orden_compra_devolucions\",\"indexes\":[{\"name\":\"orden_compra_devolucions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"orden_compra_devolucions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"orden_compra_devolucions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"orden_compra_devolucions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"fecha_creacion\",\"type\":\"date\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"detalle\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"orden_compra_estados\",\"indexes\":[{\"name\":\"orden_compra_estados_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"orden_compra_estados_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"orden_compra_estados_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"orden_compra_estados_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"nombre\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"orden_compra_recepcions\",\"indexes\":[{\"name\":\"orden_compra_recepcions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"orden_compra_recepcions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"orden_compra_recepcions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"orden_compra_recepcions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"fecha_creacion\",\"type\":\"date\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"detalle\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"orden_compra_recepcion_estados\",\"indexes\":[{\"name\":\"orden_compra_recepcion_estados_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"orden_compra_recepcion_estados_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"orden_compra_recepcion_estados_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"orden_compra_recepcion_estados_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"nombre\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"productos\",\"indexes\":[{\"name\":\"productos_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"productos_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"productos_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"productos_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"nombre\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"marca\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"producto_categorias\",\"indexes\":[{\"name\":\"producto_categorias_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"producto_categorias_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"producto_categorias_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"producto_categorias_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"nombre\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"proveedors\",\"indexes\":[{\"name\":\"proveedors_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"proveedors_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"proveedors_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"proveedors_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"nombre_fiscal\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"direccion\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"nit\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"telefono\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"proveedor_categorias\",\"indexes\":[{\"name\":\"proveedor_categorias_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"proveedor_categorias_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"proveedor_categorias_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"proveedor_categorias_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"nombre\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"proveedor_contactos\",\"indexes\":[{\"name\":\"proveedor_contactos_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"proveedor_contactos_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"proveedor_contactos_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"proveedor_contactos_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"nombre\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"direccion\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"cui\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"telefono\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"correo\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"solicitud_compras\",\"indexes\":[{\"name\":\"solicitud_compras_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"solicitud_compras_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"solicitud_compras_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"solicitud_compras_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"fecha_creacion\",\"type\":\"date\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"total\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"solicitud_compra_detalles\",\"indexes\":[{\"name\":\"solicitud_compra_detalles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"solicitud_compra_detalles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"solicitud_compra_detalles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"solicitud_compra_detalles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"cantidad\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"solicitud_compra_estados\",\"indexes\":[{\"name\":\"solicitud_compra_estados_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"solicitud_compra_estados_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"solicitud_compra_estados_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"solicitud_compra_estados_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"nombre\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_permissions_role_links\",\"indexes\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_permissions_role_links_unique\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_permissions_role_links_order_inv_fk\",\"columns\":[\"permission_order\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users_roles_links\",\"indexes\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_users_roles_links_unique\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_users_roles_links_order_fk\",\"columns\":[\"role_order\"]},{\"name\":\"admin_users_roles_links_order_inv_fk\",\"columns\":[\"user_order\"]}],\"foreignKeys\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions_token_links\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_token_links_fk\",\"columns\":[\"api_token_permission_id\"]},{\"name\":\"strapi_api_token_permissions_token_links_inv_fk\",\"columns\":[\"api_token_id\"]},{\"name\":\"strapi_api_token_permissions_token_links_unique\",\"columns\":[\"api_token_permission_id\",\"api_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_api_token_permissions_token_links_order_inv_fk\",\"columns\":[\"api_token_permission_order\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_token_links_fk\",\"columns\":[\"api_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_api_token_permissions_token_links_inv_fk\",\"columns\":[\"api_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"api_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_token_permissions_token_links\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_token_links_fk\",\"columns\":[\"transfer_token_permission_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_links_inv_fk\",\"columns\":[\"transfer_token_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_links_unique\",\"columns\":[\"transfer_token_permission_id\",\"transfer_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_transfer_token_permissions_token_links_order_inv_fk\",\"columns\":[\"transfer_token_permission_order\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_token_links_fk\",\"columns\":[\"transfer_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_transfer_token_permissions_token_links_inv_fk\",\"columns\":[\"transfer_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"transfer_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_related_morphs\",\"indexes\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_related_morphs_order_index\",\"columns\":[\"order\"],\"type\":null},{\"name\":\"files_related_morphs_id_column_index\",\"columns\":[\"related_id\"],\"type\":null}],\"foreignKeys\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_folder_links\",\"indexes\":[{\"name\":\"files_folder_links_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_folder_links_inv_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"files_folder_links_unique\",\"columns\":[\"file_id\",\"folder_id\"],\"type\":\"unique\"},{\"name\":\"files_folder_links_order_inv_fk\",\"columns\":[\"file_order\"]}],\"foreignKeys\":[{\"name\":\"files_folder_links_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"},{\"name\":\"files_folder_links_inv_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"file_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders_parent_links\",\"indexes\":[{\"name\":\"upload_folders_parent_links_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"upload_folders_parent_links_inv_fk\",\"columns\":[\"inv_folder_id\"]},{\"name\":\"upload_folders_parent_links_unique\",\"columns\":[\"folder_id\",\"inv_folder_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_parent_links_order_inv_fk\",\"columns\":[\"folder_order\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_parent_links_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"},{\"name\":\"upload_folders_parent_links_inv_fk\",\"columns\":[\"inv_folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions_role_links\",\"indexes\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"up_permissions_role_links_unique\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_permissions_role_links_order_inv_fk\",\"columns\":[\"permission_order\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users_role_links\",\"indexes\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"up_users_role_links_unique\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_users_role_links_order_inv_fk\",\"columns\":[\"user_order\"]}],\"foreignKeys\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"contrasenia_pagos_orden_compra_links\",\"indexes\":[{\"name\":\"contrasenia_pagos_orden_compra_links_fk\",\"columns\":[\"contrasenia_pago_id\"]},{\"name\":\"contrasenia_pagos_orden_compra_links_inv_fk\",\"columns\":[\"orden_compra_id\"]},{\"name\":\"contrasenia_pagos_orden_compra_links_unique\",\"columns\":[\"contrasenia_pago_id\",\"orden_compra_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"contrasenia_pagos_orden_compra_links_fk\",\"columns\":[\"contrasenia_pago_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"contrasenia_pagos\",\"onDelete\":\"CASCADE\"},{\"name\":\"contrasenia_pagos_orden_compra_links_inv_fk\",\"columns\":[\"orden_compra_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"orden_compras\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"contrasenia_pago_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"orden_compra_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"cotizacion_compras_solicitud_compra_links\",\"indexes\":[{\"name\":\"cotizacion_compras_solicitud_compra_links_fk\",\"columns\":[\"cotizacion_compra_id\"]},{\"name\":\"cotizacion_compras_solicitud_compra_links_inv_fk\",\"columns\":[\"solicitud_compra_id\"]},{\"name\":\"cotizacion_compras_solicitud_compra_links_unique\",\"columns\":[\"cotizacion_compra_id\",\"solicitud_compra_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"cotizacion_compras_solicitud_compra_links_fk\",\"columns\":[\"cotizacion_compra_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"cotizacion_compras\",\"onDelete\":\"CASCADE\"},{\"name\":\"cotizacion_compras_solicitud_compra_links_inv_fk\",\"columns\":[\"solicitud_compra_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"solicitud_compras\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"cotizacion_compra_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"solicitud_compra_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"cotizacion_compras_proveedor_links\",\"indexes\":[{\"name\":\"cotizacion_compras_proveedor_links_fk\",\"columns\":[\"cotizacion_compra_id\"]},{\"name\":\"cotizacion_compras_proveedor_links_inv_fk\",\"columns\":[\"proveedor_id\"]},{\"name\":\"cotizacion_compras_proveedor_links_unique\",\"columns\":[\"cotizacion_compra_id\",\"proveedor_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"cotizacion_compras_proveedor_links_fk\",\"columns\":[\"cotizacion_compra_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"cotizacion_compras\",\"onDelete\":\"CASCADE\"},{\"name\":\"cotizacion_compras_proveedor_links_inv_fk\",\"columns\":[\"proveedor_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"proveedors\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"cotizacion_compra_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"proveedor_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"empleados_departamento_links\",\"indexes\":[{\"name\":\"empleados_departamento_links_fk\",\"columns\":[\"empleado_id\"]},{\"name\":\"empleados_departamento_links_inv_fk\",\"columns\":[\"departamento_id\"]},{\"name\":\"empleados_departamento_links_unique\",\"columns\":[\"empleado_id\",\"departamento_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"empleados_departamento_links_fk\",\"columns\":[\"empleado_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"empleados\",\"onDelete\":\"CASCADE\"},{\"name\":\"empleados_departamento_links_inv_fk\",\"columns\":[\"departamento_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"departamentos\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"empleado_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"departamento_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"orden_compras_cotizacion_compra_links\",\"indexes\":[{\"name\":\"orden_compras_cotizacion_compra_links_fk\",\"columns\":[\"orden_compra_id\"]},{\"name\":\"orden_compras_cotizacion_compra_links_inv_fk\",\"columns\":[\"cotizacion_compra_id\"]},{\"name\":\"orden_compras_cotizacion_compra_links_unique\",\"columns\":[\"orden_compra_id\",\"cotizacion_compra_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"orden_compras_cotizacion_compra_links_fk\",\"columns\":[\"orden_compra_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"orden_compras\",\"onDelete\":\"CASCADE\"},{\"name\":\"orden_compras_cotizacion_compra_links_inv_fk\",\"columns\":[\"cotizacion_compra_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"cotizacion_compras\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"orden_compra_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"cotizacion_compra_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"orden_compras_orden_compra_estado_links\",\"indexes\":[{\"name\":\"orden_compras_orden_compra_estado_links_fk\",\"columns\":[\"orden_compra_id\"]},{\"name\":\"orden_compras_orden_compra_estado_links_inv_fk\",\"columns\":[\"orden_compra_estado_id\"]},{\"name\":\"orden_compras_orden_compra_estado_links_unique\",\"columns\":[\"orden_compra_id\",\"orden_compra_estado_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"orden_compras_orden_compra_estado_links_fk\",\"columns\":[\"orden_compra_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"orden_compras\",\"onDelete\":\"CASCADE\"},{\"name\":\"orden_compras_orden_compra_estado_links_inv_fk\",\"columns\":[\"orden_compra_estado_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"orden_compra_estados\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"orden_compra_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"orden_compra_estado_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"orden_compra_devolucions_orden_compra_links\",\"indexes\":[{\"name\":\"orden_compra_devolucions_orden_compra_links_fk\",\"columns\":[\"orden_compra_devolucion_id\"]},{\"name\":\"orden_compra_devolucions_orden_compra_links_inv_fk\",\"columns\":[\"orden_compra_id\"]},{\"name\":\"orden_compra_devolucions_orden_compra_links_unique\",\"columns\":[\"orden_compra_devolucion_id\",\"orden_compra_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"orden_compra_devolucions_orden_compra_links_fk\",\"columns\":[\"orden_compra_devolucion_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"orden_compra_devolucions\",\"onDelete\":\"CASCADE\"},{\"name\":\"orden_compra_devolucions_orden_compra_links_inv_fk\",\"columns\":[\"orden_compra_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"orden_compras\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"orden_compra_devolucion_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"orden_compra_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"orden_compra_recepcions_orden_compra_links\",\"indexes\":[{\"name\":\"orden_compra_recepcions_orden_compra_links_fk\",\"columns\":[\"orden_compra_recepcion_id\"]},{\"name\":\"orden_compra_recepcions_orden_compra_links_inv_fk\",\"columns\":[\"orden_compra_id\"]},{\"name\":\"orden_compra_recepcions_orden_compra_links_unique\",\"columns\":[\"orden_compra_recepcion_id\",\"orden_compra_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"orden_compra_recepcions_orden_compra_links_fk\",\"columns\":[\"orden_compra_recepcion_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"orden_compra_recepcions\",\"onDelete\":\"CASCADE\"},{\"name\":\"orden_compra_recepcions_orden_compra_links_inv_fk\",\"columns\":[\"orden_compra_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"orden_compras\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"orden_compra_recepcion_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"orden_compra_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"orden_compra_recepcions_ord_compra_recepcion_estado_links\",\"indexes\":[{\"name\":\"orden_compra_recepcions_ord_compra_recepcion_estado_links_fk\",\"columns\":[\"orden_compra_recepcion_id\"]},{\"name\":\"orden_compra_recepcions_ord_compra_recepcion_estado_links_inv_fk\",\"columns\":[\"orden_compra_recepcion_estado_id\"]},{\"name\":\"orden_compra_recepcions_ord_compra_recepcion_estado_links_unique\",\"columns\":[\"orden_compra_recepcion_id\",\"orden_compra_recepcion_estado_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"orden_compra_recepcions_ord_compra_recepcion_estado_links_fk\",\"columns\":[\"orden_compra_recepcion_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"orden_compra_recepcions\",\"onDelete\":\"CASCADE\"},{\"name\":\"orden_compra_recepcions_ord_compra_recepcion_estado_links_inv_fk\",\"columns\":[\"orden_compra_recepcion_estado_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"orden_compra_recepcion_estados\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"orden_compra_recepcion_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"orden_compra_recepcion_estado_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"productos_producto_categoria_links\",\"indexes\":[{\"name\":\"productos_producto_categoria_links_fk\",\"columns\":[\"producto_id\"]},{\"name\":\"productos_producto_categoria_links_inv_fk\",\"columns\":[\"producto_categoria_id\"]},{\"name\":\"productos_producto_categoria_links_unique\",\"columns\":[\"producto_id\",\"producto_categoria_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"productos_producto_categoria_links_fk\",\"columns\":[\"producto_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"productos\",\"onDelete\":\"CASCADE\"},{\"name\":\"productos_producto_categoria_links_inv_fk\",\"columns\":[\"producto_categoria_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"producto_categorias\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"producto_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"producto_categoria_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"proveedors_proveedor_categoria_links\",\"indexes\":[{\"name\":\"proveedors_proveedor_categoria_links_fk\",\"columns\":[\"proveedor_id\"]},{\"name\":\"proveedors_proveedor_categoria_links_inv_fk\",\"columns\":[\"proveedor_categoria_id\"]},{\"name\":\"proveedors_proveedor_categoria_links_unique\",\"columns\":[\"proveedor_id\",\"proveedor_categoria_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"proveedors_proveedor_categoria_links_fk\",\"columns\":[\"proveedor_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"proveedors\",\"onDelete\":\"CASCADE\"},{\"name\":\"proveedors_proveedor_categoria_links_inv_fk\",\"columns\":[\"proveedor_categoria_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"proveedor_categorias\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"proveedor_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"proveedor_categoria_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"proveedor_contactos_proveedor_links\",\"indexes\":[{\"name\":\"proveedor_contactos_proveedor_links_fk\",\"columns\":[\"proveedor_contacto_id\"]},{\"name\":\"proveedor_contactos_proveedor_links_inv_fk\",\"columns\":[\"proveedor_id\"]},{\"name\":\"proveedor_contactos_proveedor_links_unique\",\"columns\":[\"proveedor_contacto_id\",\"proveedor_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"proveedor_contactos_proveedor_links_fk\",\"columns\":[\"proveedor_contacto_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"proveedor_contactos\",\"onDelete\":\"CASCADE\"},{\"name\":\"proveedor_contactos_proveedor_links_inv_fk\",\"columns\":[\"proveedor_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"proveedors\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"proveedor_contacto_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"proveedor_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"solicitud_compras_solicitante_links\",\"indexes\":[{\"name\":\"solicitud_compras_solicitante_links_fk\",\"columns\":[\"solicitud_compra_id\"]},{\"name\":\"solicitud_compras_solicitante_links_inv_fk\",\"columns\":[\"empleado_id\"]},{\"name\":\"solicitud_compras_solicitante_links_unique\",\"columns\":[\"solicitud_compra_id\",\"empleado_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"solicitud_compras_solicitante_links_fk\",\"columns\":[\"solicitud_compra_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"solicitud_compras\",\"onDelete\":\"CASCADE\"},{\"name\":\"solicitud_compras_solicitante_links_inv_fk\",\"columns\":[\"empleado_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"empleados\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"solicitud_compra_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"empleado_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"solicitud_compras_aprobador_jefe_links\",\"indexes\":[{\"name\":\"solicitud_compras_aprobador_jefe_links_fk\",\"columns\":[\"solicitud_compra_id\"]},{\"name\":\"solicitud_compras_aprobador_jefe_links_inv_fk\",\"columns\":[\"empleado_id\"]},{\"name\":\"solicitud_compras_aprobador_jefe_links_unique\",\"columns\":[\"solicitud_compra_id\",\"empleado_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"solicitud_compras_aprobador_jefe_links_fk\",\"columns\":[\"solicitud_compra_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"solicitud_compras\",\"onDelete\":\"CASCADE\"},{\"name\":\"solicitud_compras_aprobador_jefe_links_inv_fk\",\"columns\":[\"empleado_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"empleados\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"solicitud_compra_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"empleado_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"solicitud_compras_aprobador_gerente_links\",\"indexes\":[{\"name\":\"solicitud_compras_aprobador_gerente_links_fk\",\"columns\":[\"solicitud_compra_id\"]},{\"name\":\"solicitud_compras_aprobador_gerente_links_inv_fk\",\"columns\":[\"empleado_id\"]},{\"name\":\"solicitud_compras_aprobador_gerente_links_unique\",\"columns\":[\"solicitud_compra_id\",\"empleado_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"solicitud_compras_aprobador_gerente_links_fk\",\"columns\":[\"solicitud_compra_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"solicitud_compras\",\"onDelete\":\"CASCADE\"},{\"name\":\"solicitud_compras_aprobador_gerente_links_inv_fk\",\"columns\":[\"empleado_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"empleados\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"solicitud_compra_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"empleado_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"solicitud_compras_solicitud_compra_estado_links\",\"indexes\":[{\"name\":\"solicitud_compras_solicitud_compra_estado_links_fk\",\"columns\":[\"solicitud_compra_id\"]},{\"name\":\"solicitud_compras_solicitud_compra_estado_links_inv_fk\",\"columns\":[\"solicitud_compra_estado_id\"]},{\"name\":\"solicitud_compras_solicitud_compra_estado_links_unique\",\"columns\":[\"solicitud_compra_id\",\"solicitud_compra_estado_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"solicitud_compras_solicitud_compra_estado_links_fk\",\"columns\":[\"solicitud_compra_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"solicitud_compras\",\"onDelete\":\"CASCADE\"},{\"name\":\"solicitud_compras_solicitud_compra_estado_links_inv_fk\",\"columns\":[\"solicitud_compra_estado_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"solicitud_compra_estados\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"solicitud_compra_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"solicitud_compra_estado_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"solicitud_compra_detalles_solicitud_compra_links\",\"indexes\":[{\"name\":\"solicitud_compra_detalles_solicitud_compra_links_fk\",\"columns\":[\"solicitud_compra_detalle_id\"]},{\"name\":\"solicitud_compra_detalles_solicitud_compra_links_inv_fk\",\"columns\":[\"solicitud_compra_id\"]},{\"name\":\"solicitud_compra_detalles_solicitud_compra_links_unique\",\"columns\":[\"solicitud_compra_detalle_id\",\"solicitud_compra_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"solicitud_compra_detalles_solicitud_compra_links_fk\",\"columns\":[\"solicitud_compra_detalle_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"solicitud_compra_detalles\",\"onDelete\":\"CASCADE\"},{\"name\":\"solicitud_compra_detalles_solicitud_compra_links_inv_fk\",\"columns\":[\"solicitud_compra_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"solicitud_compras\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"solicitud_compra_detalle_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"solicitud_compra_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"solicitud_compra_detalles_producto_links\",\"indexes\":[{\"name\":\"solicitud_compra_detalles_producto_links_fk\",\"columns\":[\"solicitud_compra_detalle_id\"]},{\"name\":\"solicitud_compra_detalles_producto_links_inv_fk\",\"columns\":[\"producto_id\"]},{\"name\":\"solicitud_compra_detalles_producto_links_unique\",\"columns\":[\"solicitud_compra_detalle_id\",\"producto_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"solicitud_compra_detalles_producto_links_fk\",\"columns\":[\"solicitud_compra_detalle_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"solicitud_compra_detalles\",\"onDelete\":\"CASCADE\"},{\"name\":\"solicitud_compra_detalles_producto_links_inv_fk\",\"columns\":[\"producto_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"productos\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"solicitud_compra_detalle_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"producto_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]}]}', '2023-10-20 22:02:53', '66e2d7e8c503293673cb1fa3b46eaeac');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_transfer_tokens`
--

CREATE TABLE `strapi_transfer_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_transfer_token_permissions`
--

CREATE TABLE `strapi_transfer_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_transfer_token_permissions_token_links`
--

CREATE TABLE `strapi_transfer_token_permissions_token_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headers`)),
  `events` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`events`)),
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `upload_folders`
--

CREATE TABLE `upload_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `upload_folders`
--

INSERT INTO `upload_folders` (`id`, `name`, `path_id`, `path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'API Uploads', 1, '/1', '2023-10-19 22:53:06.799000', '2023-10-19 22:53:06.799000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `upload_folders_parent_links`
--

CREATE TABLE `upload_folders_parent_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_folder_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::users-permissions.user.me', '2023-10-15 12:25:03.254000', '2023-10-15 12:25:03.254000', NULL, NULL),
(2, 'plugin::users-permissions.auth.changePassword', '2023-10-15 12:25:03.254000', '2023-10-15 12:25:03.254000', NULL, NULL),
(3, 'plugin::users-permissions.auth.callback', '2023-10-15 12:25:03.263000', '2023-10-15 12:25:03.263000', NULL, NULL),
(4, 'plugin::users-permissions.auth.connect', '2023-10-15 12:25:03.263000', '2023-10-15 12:25:03.263000', NULL, NULL),
(5, 'plugin::users-permissions.auth.resetPassword', '2023-10-15 12:25:03.264000', '2023-10-15 12:25:03.264000', NULL, NULL),
(6, 'plugin::users-permissions.auth.forgotPassword', '2023-10-15 12:25:03.264000', '2023-10-15 12:25:03.264000', NULL, NULL),
(7, 'plugin::users-permissions.auth.register', '2023-10-15 12:25:03.264000', '2023-10-15 12:25:03.264000', NULL, NULL),
(8, 'plugin::users-permissions.auth.emailConfirmation', '2023-10-15 12:25:03.264000', '2023-10-15 12:25:03.264000', NULL, NULL),
(9, 'plugin::users-permissions.auth.sendEmailConfirmation', '2023-10-15 12:25:03.264000', '2023-10-15 12:25:03.264000', NULL, NULL),
(10, 'api::contrasenia-pago.contrasenia-pago.find', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(11, 'api::contrasenia-pago.contrasenia-pago.findOne', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(12, 'api::contrasenia-pago.contrasenia-pago.create', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(13, 'api::contrasenia-pago.contrasenia-pago.update', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(14, 'api::cotizacion-compra.cotizacion-compra.find', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(15, 'api::contrasenia-pago.contrasenia-pago.delete', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(16, 'api::cotizacion-compra.cotizacion-compra.findOne', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(17, 'api::cotizacion-compra.cotizacion-compra.create', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(18, 'api::cotizacion-compra.cotizacion-compra.update', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(19, 'api::cotizacion-compra.cotizacion-compra.delete', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(20, 'api::departamento.departamento.find', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(21, 'api::departamento.departamento.findOne', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(22, 'api::departamento.departamento.create', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(23, 'api::departamento.departamento.update', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(24, 'api::departamento.departamento.delete', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(25, 'api::empleado.empleado.find', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(26, 'api::empleado.empleado.findOne', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(27, 'api::empleado.empleado.create', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(28, 'api::empleado.empleado.update', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(29, 'api::empleado.empleado.delete', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(30, 'api::orden-compra.orden-compra.find', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(31, 'api::orden-compra.orden-compra.findOne', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(32, 'api::orden-compra.orden-compra.create', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(33, 'api::orden-compra.orden-compra.update', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(34, 'api::orden-compra.orden-compra.delete', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(35, 'api::orden-compra-devolucion.orden-compra-devolucion.find', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(36, 'api::orden-compra-devolucion.orden-compra-devolucion.findOne', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(37, 'api::orden-compra-devolucion.orden-compra-devolucion.create', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(38, 'api::orden-compra-devolucion.orden-compra-devolucion.update', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(39, 'api::orden-compra-devolucion.orden-compra-devolucion.delete', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(40, 'api::orden-compra-estado.orden-compra-estado.find', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(41, 'api::orden-compra-estado.orden-compra-estado.findOne', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(42, 'api::orden-compra-estado.orden-compra-estado.create', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(43, 'api::orden-compra-estado.orden-compra-estado.update', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(44, 'api::orden-compra-estado.orden-compra-estado.delete', '2023-10-15 16:46:44.741000', '2023-10-15 16:46:44.741000', NULL, NULL),
(45, 'api::orden-compra-recepcion.orden-compra-recepcion.find', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(46, 'api::orden-compra-recepcion.orden-compra-recepcion.findOne', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(47, 'api::orden-compra-recepcion.orden-compra-recepcion.create', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(48, 'api::orden-compra-recepcion.orden-compra-recepcion.update', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(49, 'api::orden-compra-recepcion.orden-compra-recepcion.delete', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(50, 'api::orden-compra-recepcion-estado.orden-compra-recepcion-estado.find', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(51, 'api::orden-compra-recepcion-estado.orden-compra-recepcion-estado.findOne', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(52, 'api::orden-compra-recepcion-estado.orden-compra-recepcion-estado.create', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(53, 'api::orden-compra-recepcion-estado.orden-compra-recepcion-estado.update', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(54, 'api::orden-compra-recepcion-estado.orden-compra-recepcion-estado.delete', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(55, 'api::producto.producto.find', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(56, 'api::producto.producto.findOne', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(57, 'api::producto.producto.create', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(58, 'api::producto.producto.update', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(59, 'api::producto.producto.delete', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(60, 'api::producto-categoria.producto-categoria.find', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(61, 'api::producto-categoria.producto-categoria.findOne', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(62, 'api::producto-categoria.producto-categoria.create', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(63, 'api::producto-categoria.producto-categoria.update', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(64, 'api::producto-categoria.producto-categoria.delete', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(65, 'api::proveedor.proveedor.find', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(66, 'api::proveedor.proveedor.findOne', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(67, 'api::proveedor.proveedor.create', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(68, 'api::proveedor.proveedor.update', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(69, 'api::proveedor.proveedor.delete', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(70, 'api::proveedor-categoria.proveedor-categoria.find', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(71, 'api::proveedor-categoria.proveedor-categoria.findOne', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(72, 'api::proveedor-categoria.proveedor-categoria.create', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(73, 'api::proveedor-categoria.proveedor-categoria.update', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(74, 'api::proveedor-categoria.proveedor-categoria.delete', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(75, 'api::proveedor-contacto.proveedor-contacto.find', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(76, 'api::proveedor-contacto.proveedor-contacto.findOne', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(77, 'api::proveedor-contacto.proveedor-contacto.create', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(78, 'api::proveedor-contacto.proveedor-contacto.update', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(79, 'api::proveedor-contacto.proveedor-contacto.delete', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(80, 'api::solicitud-compra.solicitud-compra.find', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(81, 'api::solicitud-compra.solicitud-compra.findOne', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(82, 'api::solicitud-compra.solicitud-compra.create', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(83, 'api::solicitud-compra.solicitud-compra.update', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(84, 'api::solicitud-compra.solicitud-compra.delete', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(85, 'api::solicitud-compra-detalle.solicitud-compra-detalle.find', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(86, 'api::solicitud-compra-detalle.solicitud-compra-detalle.findOne', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(87, 'api::solicitud-compra-detalle.solicitud-compra-detalle.create', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(88, 'api::solicitud-compra-detalle.solicitud-compra-detalle.update', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(89, 'api::solicitud-compra-detalle.solicitud-compra-detalle.delete', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(90, 'api::solicitud-compra-estado.solicitud-compra-estado.find', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(91, 'api::solicitud-compra-estado.solicitud-compra-estado.findOne', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(92, 'api::solicitud-compra-estado.solicitud-compra-estado.create', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(93, 'api::solicitud-compra-estado.solicitud-compra-estado.update', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(94, 'api::solicitud-compra-estado.solicitud-compra-estado.delete', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(95, 'plugin::upload.content-api.find', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(96, 'plugin::upload.content-api.findOne', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(97, 'plugin::upload.content-api.destroy', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL),
(98, 'plugin::upload.content-api.upload', '2023-10-15 16:46:44.742000', '2023-10-15 16:46:44.742000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `up_permissions_role_links`
--

CREATE TABLE `up_permissions_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `up_permissions_role_links`
--

INSERT INTO `up_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 2, 1, 1),
(2, 1, 1, 1),
(3, 3, 2, 1),
(4, 5, 2, 1),
(5, 4, 2, 1),
(6, 6, 2, 1),
(7, 7, 2, 1),
(8, 9, 2, 1),
(9, 8, 2, 1),
(10, 11, 2, 2),
(11, 10, 2, 2),
(12, 12, 2, 2),
(13, 13, 2, 2),
(14, 14, 2, 2),
(15, 18, 2, 2),
(16, 16, 2, 2),
(17, 19, 2, 2),
(18, 17, 2, 2),
(19, 20, 2, 2),
(20, 22, 2, 3),
(21, 15, 2, 3),
(22, 21, 2, 3),
(23, 24, 2, 3),
(24, 23, 2, 3),
(25, 25, 2, 3),
(26, 26, 2, 3),
(27, 30, 2, 3),
(28, 27, 2, 3),
(29, 28, 2, 3),
(30, 29, 2, 4),
(31, 31, 2, 4),
(32, 34, 2, 4),
(33, 32, 2, 4),
(34, 33, 2, 4),
(35, 36, 2, 4),
(36, 35, 2, 4),
(37, 37, 2, 4),
(38, 38, 2, 4),
(39, 40, 2, 5),
(40, 39, 2, 5),
(41, 42, 2, 6),
(42, 41, 2, 6),
(43, 43, 2, 6),
(44, 49, 2, 6),
(45, 44, 2, 6),
(46, 45, 2, 6),
(47, 47, 2, 6),
(48, 46, 2, 6),
(49, 48, 2, 7),
(50, 51, 2, 7),
(51, 50, 2, 7),
(52, 52, 2, 8),
(53, 53, 2, 8),
(54, 54, 2, 8),
(55, 55, 2, 8),
(56, 56, 2, 8),
(57, 57, 2, 8),
(58, 58, 2, 8),
(59, 60, 2, 9),
(60, 59, 2, 9),
(61, 62, 2, 9),
(62, 61, 2, 9),
(63, 64, 2, 10),
(64, 63, 2, 10),
(65, 65, 2, 10),
(66, 66, 2, 10),
(67, 67, 2, 10),
(68, 68, 2, 10),
(69, 70, 2, 10),
(70, 69, 2, 11),
(71, 72, 2, 11),
(72, 71, 2, 11),
(73, 73, 2, 11),
(74, 75, 2, 11),
(75, 74, 2, 11),
(76, 77, 2, 12),
(77, 78, 2, 12),
(78, 76, 2, 12),
(79, 79, 2, 12),
(80, 80, 2, 12),
(81, 81, 2, 13),
(82, 82, 2, 13),
(83, 84, 2, 13),
(84, 83, 2, 13),
(85, 86, 2, 13),
(86, 85, 2, 14),
(87, 87, 2, 14),
(88, 88, 2, 14),
(89, 89, 2, 14),
(90, 90, 2, 14),
(91, 91, 2, 15),
(92, 93, 2, 15),
(93, 92, 2, 15),
(94, 94, 2, 15),
(95, 97, 2, 15),
(96, 95, 2, 15),
(97, 96, 2, 15),
(98, 98, 2, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `up_roles`
--

INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2023-10-15 12:25:03.244000', '2023-10-15 12:25:03.244000', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', '2023-10-15 12:25:03.248000', '2023-10-15 16:46:44.734000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `up_users`
--

CREATE TABLE `up_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `up_users_role_links`
--

CREATE TABLE `up_users_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `admin_permissions_role_links_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `admin_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Indices de la tabla `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_roles_links_unique` (`user_id`,`role_id`),
  ADD KEY `admin_users_roles_links_fk` (`user_id`),
  ADD KEY `admin_users_roles_links_inv_fk` (`role_id`),
  ADD KEY `admin_users_roles_links_order_fk` (`role_order`),
  ADD KEY `admin_users_roles_links_order_inv_fk` (`user_order`);

--
-- Indices de la tabla `contrasenia_pagos`
--
ALTER TABLE `contrasenia_pagos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contrasenia_pagos_created_by_id_fk` (`created_by_id`),
  ADD KEY `contrasenia_pagos_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `contrasenia_pagos_orden_compra_links`
--
ALTER TABLE `contrasenia_pagos_orden_compra_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contrasenia_pagos_orden_compra_links_unique` (`contrasenia_pago_id`,`orden_compra_id`),
  ADD KEY `contrasenia_pagos_orden_compra_links_fk` (`contrasenia_pago_id`),
  ADD KEY `contrasenia_pagos_orden_compra_links_inv_fk` (`orden_compra_id`);

--
-- Indices de la tabla `cotizacion_compras`
--
ALTER TABLE `cotizacion_compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cotizacion_compras_created_by_id_fk` (`created_by_id`),
  ADD KEY `cotizacion_compras_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `cotizacion_compras_proveedor_links`
--
ALTER TABLE `cotizacion_compras_proveedor_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cotizacion_compras_proveedor_links_unique` (`cotizacion_compra_id`,`proveedor_id`),
  ADD KEY `cotizacion_compras_proveedor_links_fk` (`cotizacion_compra_id`),
  ADD KEY `cotizacion_compras_proveedor_links_inv_fk` (`proveedor_id`);

--
-- Indices de la tabla `cotizacion_compras_solicitud_compra_links`
--
ALTER TABLE `cotizacion_compras_solicitud_compra_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cotizacion_compras_solicitud_compra_links_unique` (`cotizacion_compra_id`,`solicitud_compra_id`),
  ADD KEY `cotizacion_compras_solicitud_compra_links_fk` (`cotizacion_compra_id`),
  ADD KEY `cotizacion_compras_solicitud_compra_links_inv_fk` (`solicitud_compra_id`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departamentos_created_by_id_fk` (`created_by_id`),
  ADD KEY `departamentos_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empleados_created_by_id_fk` (`created_by_id`),
  ADD KEY `empleados_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `empleados_departamento_links`
--
ALTER TABLE `empleados_departamento_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `empleados_departamento_links_unique` (`empleado_id`,`departamento_id`),
  ADD KEY `empleados_departamento_links_fk` (`empleado_id`),
  ADD KEY `empleados_departamento_links_inv_fk` (`departamento_id`);

--
-- Indices de la tabla `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_files_folder_path_index` (`folder_path`),
  ADD KEY `upload_files_created_at_index` (`created_at`),
  ADD KEY `upload_files_updated_at_index` (`updated_at`),
  ADD KEY `upload_files_name_index` (`name`),
  ADD KEY `upload_files_size_index` (`size`),
  ADD KEY `upload_files_ext_index` (`ext`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `files_folder_links_unique` (`file_id`,`folder_id`),
  ADD KEY `files_folder_links_fk` (`file_id`),
  ADD KEY `files_folder_links_inv_fk` (`folder_id`),
  ADD KEY `files_folder_links_order_inv_fk` (`file_order`);

--
-- Indices de la tabla `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_related_morphs_fk` (`file_id`),
  ADD KEY `files_related_morphs_order_index` (`order`),
  ADD KEY `files_related_morphs_id_column_index` (`related_id`);

--
-- Indices de la tabla `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `orden_compras`
--
ALTER TABLE `orden_compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orden_compras_created_by_id_fk` (`created_by_id`),
  ADD KEY `orden_compras_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `orden_compras_cotizacion_compra_links`
--
ALTER TABLE `orden_compras_cotizacion_compra_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orden_compras_cotizacion_compra_links_unique` (`orden_compra_id`,`cotizacion_compra_id`),
  ADD KEY `orden_compras_cotizacion_compra_links_fk` (`orden_compra_id`),
  ADD KEY `orden_compras_cotizacion_compra_links_inv_fk` (`cotizacion_compra_id`);

--
-- Indices de la tabla `orden_compras_orden_compra_estado_links`
--
ALTER TABLE `orden_compras_orden_compra_estado_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orden_compras_orden_compra_estado_links_unique` (`orden_compra_id`,`orden_compra_estado_id`),
  ADD KEY `orden_compras_orden_compra_estado_links_fk` (`orden_compra_id`),
  ADD KEY `orden_compras_orden_compra_estado_links_inv_fk` (`orden_compra_estado_id`);

--
-- Indices de la tabla `orden_compra_devolucions`
--
ALTER TABLE `orden_compra_devolucions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orden_compra_devolucions_created_by_id_fk` (`created_by_id`),
  ADD KEY `orden_compra_devolucions_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `orden_compra_devolucions_orden_compra_links`
--
ALTER TABLE `orden_compra_devolucions_orden_compra_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orden_compra_devolucions_orden_compra_links_unique` (`orden_compra_devolucion_id`,`orden_compra_id`),
  ADD KEY `orden_compra_devolucions_orden_compra_links_fk` (`orden_compra_devolucion_id`),
  ADD KEY `orden_compra_devolucions_orden_compra_links_inv_fk` (`orden_compra_id`);

--
-- Indices de la tabla `orden_compra_estados`
--
ALTER TABLE `orden_compra_estados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orden_compra_estados_created_by_id_fk` (`created_by_id`),
  ADD KEY `orden_compra_estados_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `orden_compra_recepcions`
--
ALTER TABLE `orden_compra_recepcions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orden_compra_recepcions_created_by_id_fk` (`created_by_id`),
  ADD KEY `orden_compra_recepcions_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `orden_compra_recepcions_orden_compra_links`
--
ALTER TABLE `orden_compra_recepcions_orden_compra_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orden_compra_recepcions_orden_compra_links_unique` (`orden_compra_recepcion_id`,`orden_compra_id`),
  ADD KEY `orden_compra_recepcions_orden_compra_links_fk` (`orden_compra_recepcion_id`),
  ADD KEY `orden_compra_recepcions_orden_compra_links_inv_fk` (`orden_compra_id`);

--
-- Indices de la tabla `orden_compra_recepcions_ord_compra_recepcion_estado_links`
--
ALTER TABLE `orden_compra_recepcions_ord_compra_recepcion_estado_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orden_compra_recepcions_ord_compra_recepcion_estado_links_unique` (`orden_compra_recepcion_id`,`orden_compra_recepcion_estado_id`),
  ADD KEY `orden_compra_recepcions_ord_compra_recepcion_estado_links_fk` (`orden_compra_recepcion_id`),
  ADD KEY `orden_compra_recepcions_ord_compra_recepcion_estado_links_inv_fk` (`orden_compra_recepcion_estado_id`);

--
-- Indices de la tabla `orden_compra_recepcion_estados`
--
ALTER TABLE `orden_compra_recepcion_estados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orden_compra_recepcion_estados_created_by_id_fk` (`created_by_id`),
  ADD KEY `orden_compra_recepcion_estados_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_created_by_id_fk` (`created_by_id`),
  ADD KEY `productos_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `productos_producto_categoria_links`
--
ALTER TABLE `productos_producto_categoria_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `productos_producto_categoria_links_unique` (`producto_id`,`producto_categoria_id`),
  ADD KEY `productos_producto_categoria_links_fk` (`producto_id`),
  ADD KEY `productos_producto_categoria_links_inv_fk` (`producto_categoria_id`);

--
-- Indices de la tabla `producto_categorias`
--
ALTER TABLE `producto_categorias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_categorias_created_by_id_fk` (`created_by_id`),
  ADD KEY `producto_categorias_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `proveedors`
--
ALTER TABLE `proveedors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proveedors_created_by_id_fk` (`created_by_id`),
  ADD KEY `proveedors_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `proveedors_proveedor_categoria_links`
--
ALTER TABLE `proveedors_proveedor_categoria_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `proveedors_proveedor_categoria_links_unique` (`proveedor_id`,`proveedor_categoria_id`),
  ADD KEY `proveedors_proveedor_categoria_links_fk` (`proveedor_id`),
  ADD KEY `proveedors_proveedor_categoria_links_inv_fk` (`proveedor_categoria_id`);

--
-- Indices de la tabla `proveedor_categorias`
--
ALTER TABLE `proveedor_categorias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proveedor_categorias_created_by_id_fk` (`created_by_id`),
  ADD KEY `proveedor_categorias_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `proveedor_contactos`
--
ALTER TABLE `proveedor_contactos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proveedor_contactos_created_by_id_fk` (`created_by_id`),
  ADD KEY `proveedor_contactos_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `proveedor_contactos_proveedor_links`
--
ALTER TABLE `proveedor_contactos_proveedor_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `proveedor_contactos_proveedor_links_unique` (`proveedor_contacto_id`,`proveedor_id`),
  ADD KEY `proveedor_contactos_proveedor_links_fk` (`proveedor_contacto_id`),
  ADD KEY `proveedor_contactos_proveedor_links_inv_fk` (`proveedor_id`);

--
-- Indices de la tabla `solicitud_compras`
--
ALTER TABLE `solicitud_compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `solicitud_compras_created_by_id_fk` (`created_by_id`),
  ADD KEY `solicitud_compras_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `solicitud_compras_aprobador_gerente_links`
--
ALTER TABLE `solicitud_compras_aprobador_gerente_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `solicitud_compras_aprobador_gerente_links_unique` (`solicitud_compra_id`,`empleado_id`),
  ADD KEY `solicitud_compras_aprobador_gerente_links_fk` (`solicitud_compra_id`),
  ADD KEY `solicitud_compras_aprobador_gerente_links_inv_fk` (`empleado_id`);

--
-- Indices de la tabla `solicitud_compras_aprobador_jefe_links`
--
ALTER TABLE `solicitud_compras_aprobador_jefe_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `solicitud_compras_aprobador_jefe_links_unique` (`solicitud_compra_id`,`empleado_id`),
  ADD KEY `solicitud_compras_aprobador_jefe_links_fk` (`solicitud_compra_id`),
  ADD KEY `solicitud_compras_aprobador_jefe_links_inv_fk` (`empleado_id`);

--
-- Indices de la tabla `solicitud_compras_solicitante_links`
--
ALTER TABLE `solicitud_compras_solicitante_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `solicitud_compras_solicitante_links_unique` (`solicitud_compra_id`,`empleado_id`),
  ADD KEY `solicitud_compras_solicitante_links_fk` (`solicitud_compra_id`),
  ADD KEY `solicitud_compras_solicitante_links_inv_fk` (`empleado_id`);

--
-- Indices de la tabla `solicitud_compras_solicitud_compra_estado_links`
--
ALTER TABLE `solicitud_compras_solicitud_compra_estado_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `solicitud_compras_solicitud_compra_estado_links_unique` (`solicitud_compra_id`,`solicitud_compra_estado_id`),
  ADD KEY `solicitud_compras_solicitud_compra_estado_links_fk` (`solicitud_compra_id`),
  ADD KEY `solicitud_compras_solicitud_compra_estado_links_inv_fk` (`solicitud_compra_estado_id`);

--
-- Indices de la tabla `solicitud_compra_detalles`
--
ALTER TABLE `solicitud_compra_detalles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `solicitud_compra_detalles_created_by_id_fk` (`created_by_id`),
  ADD KEY `solicitud_compra_detalles_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `solicitud_compra_detalles_producto_links`
--
ALTER TABLE `solicitud_compra_detalles_producto_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `solicitud_compra_detalles_producto_links_unique` (`solicitud_compra_detalle_id`,`producto_id`),
  ADD KEY `solicitud_compra_detalles_producto_links_fk` (`solicitud_compra_detalle_id`),
  ADD KEY `solicitud_compra_detalles_producto_links_inv_fk` (`producto_id`);

--
-- Indices de la tabla `solicitud_compra_detalles_solicitud_compra_links`
--
ALTER TABLE `solicitud_compra_detalles_solicitud_compra_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `solicitud_compra_detalles_solicitud_compra_links_unique` (`solicitud_compra_detalle_id`,`solicitud_compra_id`),
  ADD KEY `solicitud_compra_detalles_solicitud_compra_links_fk` (`solicitud_compra_detalle_id`),
  ADD KEY `solicitud_compra_detalles_solicitud_compra_links_inv_fk` (`solicitud_compra_id`);

--
-- Indices de la tabla `solicitud_compra_estados`
--
ALTER TABLE `solicitud_compra_estados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `solicitud_compra_estados_created_by_id_fk` (`created_by_id`),
  ADD KEY `solicitud_compra_estados_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_api_token_permissions_token_links_unique` (`api_token_permission_id`,`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_fk` (`api_token_permission_id`),
  ADD KEY `strapi_api_token_permissions_token_links_inv_fk` (`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_order_inv_fk` (`api_token_permission_order`);

--
-- Indices de la tabla `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_transfer_token_permissions_token_links_unique` (`transfer_token_permission_id`,`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_fk` (`transfer_token_permission_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_inv_fk` (`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_order_inv_fk` (`transfer_token_permission_order`);

--
-- Indices de la tabla `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  ADD UNIQUE KEY `upload_folders_path_index` (`path`),
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_parent_links_unique` (`folder_id`,`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_fk` (`folder_id`),
  ADD KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_order_inv_fk` (`folder_order`);

--
-- Indices de la tabla `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `up_permissions_role_links_fk` (`permission_id`),
  ADD KEY `up_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `up_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Indices de la tabla `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_users_role_links_unique` (`user_id`,`role_id`),
  ADD KEY `up_users_role_links_fk` (`user_id`),
  ADD KEY `up_users_role_links_inv_fk` (`role_id`),
  ADD KEY `up_users_role_links_order_inv_fk` (`user_order`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT de la tabla `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT de la tabla `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `contrasenia_pagos`
--
ALTER TABLE `contrasenia_pagos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contrasenia_pagos_orden_compra_links`
--
ALTER TABLE `contrasenia_pagos_orden_compra_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cotizacion_compras`
--
ALTER TABLE `cotizacion_compras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `cotizacion_compras_proveedor_links`
--
ALTER TABLE `cotizacion_compras_proveedor_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `cotizacion_compras_solicitud_compra_links`
--
ALTER TABLE `cotizacion_compras_solicitud_compra_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `empleados_departamento_links`
--
ALTER TABLE `empleados_departamento_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `files_folder_links`
--
ALTER TABLE `files_folder_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `orden_compras`
--
ALTER TABLE `orden_compras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `orden_compras_cotizacion_compra_links`
--
ALTER TABLE `orden_compras_cotizacion_compra_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `orden_compras_orden_compra_estado_links`
--
ALTER TABLE `orden_compras_orden_compra_estado_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `orden_compra_devolucions`
--
ALTER TABLE `orden_compra_devolucions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `orden_compra_devolucions_orden_compra_links`
--
ALTER TABLE `orden_compra_devolucions_orden_compra_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `orden_compra_estados`
--
ALTER TABLE `orden_compra_estados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `orden_compra_recepcions`
--
ALTER TABLE `orden_compra_recepcions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `orden_compra_recepcions_orden_compra_links`
--
ALTER TABLE `orden_compra_recepcions_orden_compra_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `orden_compra_recepcions_ord_compra_recepcion_estado_links`
--
ALTER TABLE `orden_compra_recepcions_ord_compra_recepcion_estado_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `orden_compra_recepcion_estados`
--
ALTER TABLE `orden_compra_recepcion_estados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos_producto_categoria_links`
--
ALTER TABLE `productos_producto_categoria_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `producto_categorias`
--
ALTER TABLE `producto_categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `proveedors`
--
ALTER TABLE `proveedors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `proveedors_proveedor_categoria_links`
--
ALTER TABLE `proveedors_proveedor_categoria_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `proveedor_categorias`
--
ALTER TABLE `proveedor_categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `proveedor_contactos`
--
ALTER TABLE `proveedor_contactos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `proveedor_contactos_proveedor_links`
--
ALTER TABLE `proveedor_contactos_proveedor_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `solicitud_compras`
--
ALTER TABLE `solicitud_compras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `solicitud_compras_aprobador_gerente_links`
--
ALTER TABLE `solicitud_compras_aprobador_gerente_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitud_compras_aprobador_jefe_links`
--
ALTER TABLE `solicitud_compras_aprobador_jefe_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitud_compras_solicitante_links`
--
ALTER TABLE `solicitud_compras_solicitante_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `solicitud_compras_solicitud_compra_estado_links`
--
ALTER TABLE `solicitud_compras_solicitud_compra_estado_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `solicitud_compra_detalles`
--
ALTER TABLE `solicitud_compra_detalles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `solicitud_compra_detalles_producto_links`
--
ALTER TABLE `solicitud_compra_detalles_producto_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `solicitud_compra_detalles_solicitud_compra_links`
--
ALTER TABLE `solicitud_compra_detalles_solicitud_compra_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `solicitud_compra_estados`
--
ALTER TABLE `solicitud_compra_estados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT de la tabla `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT de la tabla `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `contrasenia_pagos`
--
ALTER TABLE `contrasenia_pagos`
  ADD CONSTRAINT `contrasenia_pagos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `contrasenia_pagos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `contrasenia_pagos_orden_compra_links`
--
ALTER TABLE `contrasenia_pagos_orden_compra_links`
  ADD CONSTRAINT `contrasenia_pagos_orden_compra_links_fk` FOREIGN KEY (`contrasenia_pago_id`) REFERENCES `contrasenia_pagos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contrasenia_pagos_orden_compra_links_inv_fk` FOREIGN KEY (`orden_compra_id`) REFERENCES `orden_compras` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `cotizacion_compras`
--
ALTER TABLE `cotizacion_compras`
  ADD CONSTRAINT `cotizacion_compras_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `cotizacion_compras_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `cotizacion_compras_proveedor_links`
--
ALTER TABLE `cotizacion_compras_proveedor_links`
  ADD CONSTRAINT `cotizacion_compras_proveedor_links_fk` FOREIGN KEY (`cotizacion_compra_id`) REFERENCES `cotizacion_compras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cotizacion_compras_proveedor_links_inv_fk` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedors` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `cotizacion_compras_solicitud_compra_links`
--
ALTER TABLE `cotizacion_compras_solicitud_compra_links`
  ADD CONSTRAINT `cotizacion_compras_solicitud_compra_links_fk` FOREIGN KEY (`cotizacion_compra_id`) REFERENCES `cotizacion_compras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cotizacion_compras_solicitud_compra_links_inv_fk` FOREIGN KEY (`solicitud_compra_id`) REFERENCES `solicitud_compras` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD CONSTRAINT `departamentos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `departamentos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `empleados_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `empleados_departamento_links`
--
ALTER TABLE `empleados_departamento_links`
  ADD CONSTRAINT `empleados_departamento_links_fk` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `empleados_departamento_links_inv_fk` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `orden_compras`
--
ALTER TABLE `orden_compras`
  ADD CONSTRAINT `orden_compras_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orden_compras_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `orden_compras_cotizacion_compra_links`
--
ALTER TABLE `orden_compras_cotizacion_compra_links`
  ADD CONSTRAINT `orden_compras_cotizacion_compra_links_fk` FOREIGN KEY (`orden_compra_id`) REFERENCES `orden_compras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orden_compras_cotizacion_compra_links_inv_fk` FOREIGN KEY (`cotizacion_compra_id`) REFERENCES `cotizacion_compras` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `orden_compras_orden_compra_estado_links`
--
ALTER TABLE `orden_compras_orden_compra_estado_links`
  ADD CONSTRAINT `orden_compras_orden_compra_estado_links_fk` FOREIGN KEY (`orden_compra_id`) REFERENCES `orden_compras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orden_compras_orden_compra_estado_links_inv_fk` FOREIGN KEY (`orden_compra_estado_id`) REFERENCES `orden_compra_estados` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `orden_compra_devolucions`
--
ALTER TABLE `orden_compra_devolucions`
  ADD CONSTRAINT `orden_compra_devolucions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orden_compra_devolucions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `orden_compra_devolucions_orden_compra_links`
--
ALTER TABLE `orden_compra_devolucions_orden_compra_links`
  ADD CONSTRAINT `orden_compra_devolucions_orden_compra_links_fk` FOREIGN KEY (`orden_compra_devolucion_id`) REFERENCES `orden_compra_devolucions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orden_compra_devolucions_orden_compra_links_inv_fk` FOREIGN KEY (`orden_compra_id`) REFERENCES `orden_compras` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `orden_compra_estados`
--
ALTER TABLE `orden_compra_estados`
  ADD CONSTRAINT `orden_compra_estados_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orden_compra_estados_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `orden_compra_recepcions`
--
ALTER TABLE `orden_compra_recepcions`
  ADD CONSTRAINT `orden_compra_recepcions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orden_compra_recepcions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `orden_compra_recepcions_orden_compra_links`
--
ALTER TABLE `orden_compra_recepcions_orden_compra_links`
  ADD CONSTRAINT `orden_compra_recepcions_orden_compra_links_fk` FOREIGN KEY (`orden_compra_recepcion_id`) REFERENCES `orden_compra_recepcions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orden_compra_recepcions_orden_compra_links_inv_fk` FOREIGN KEY (`orden_compra_id`) REFERENCES `orden_compras` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `orden_compra_recepcions_ord_compra_recepcion_estado_links`
--
ALTER TABLE `orden_compra_recepcions_ord_compra_recepcion_estado_links`
  ADD CONSTRAINT `orden_compra_recepcions_ord_compra_recepcion_estado_links_fk` FOREIGN KEY (`orden_compra_recepcion_id`) REFERENCES `orden_compra_recepcions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orden_compra_recepcions_ord_compra_recepcion_estado_links_inv_fk` FOREIGN KEY (`orden_compra_recepcion_estado_id`) REFERENCES `orden_compra_recepcion_estados` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `orden_compra_recepcion_estados`
--
ALTER TABLE `orden_compra_recepcion_estados`
  ADD CONSTRAINT `orden_compra_recepcion_estados_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orden_compra_recepcion_estados_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `productos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `productos_producto_categoria_links`
--
ALTER TABLE `productos_producto_categoria_links`
  ADD CONSTRAINT `productos_producto_categoria_links_fk` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `productos_producto_categoria_links_inv_fk` FOREIGN KEY (`producto_categoria_id`) REFERENCES `producto_categorias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `producto_categorias`
--
ALTER TABLE `producto_categorias`
  ADD CONSTRAINT `producto_categorias_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `producto_categorias_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `proveedors`
--
ALTER TABLE `proveedors`
  ADD CONSTRAINT `proveedors_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `proveedors_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `proveedors_proveedor_categoria_links`
--
ALTER TABLE `proveedors_proveedor_categoria_links`
  ADD CONSTRAINT `proveedors_proveedor_categoria_links_fk` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `proveedors_proveedor_categoria_links_inv_fk` FOREIGN KEY (`proveedor_categoria_id`) REFERENCES `proveedor_categorias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `proveedor_categorias`
--
ALTER TABLE `proveedor_categorias`
  ADD CONSTRAINT `proveedor_categorias_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `proveedor_categorias_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `proveedor_contactos`
--
ALTER TABLE `proveedor_contactos`
  ADD CONSTRAINT `proveedor_contactos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `proveedor_contactos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `proveedor_contactos_proveedor_links`
--
ALTER TABLE `proveedor_contactos_proveedor_links`
  ADD CONSTRAINT `proveedor_contactos_proveedor_links_fk` FOREIGN KEY (`proveedor_contacto_id`) REFERENCES `proveedor_contactos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `proveedor_contactos_proveedor_links_inv_fk` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedors` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `solicitud_compras`
--
ALTER TABLE `solicitud_compras`
  ADD CONSTRAINT `solicitud_compras_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `solicitud_compras_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `solicitud_compras_aprobador_gerente_links`
--
ALTER TABLE `solicitud_compras_aprobador_gerente_links`
  ADD CONSTRAINT `solicitud_compras_aprobador_gerente_links_fk` FOREIGN KEY (`solicitud_compra_id`) REFERENCES `solicitud_compras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `solicitud_compras_aprobador_gerente_links_inv_fk` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `solicitud_compras_aprobador_jefe_links`
--
ALTER TABLE `solicitud_compras_aprobador_jefe_links`
  ADD CONSTRAINT `solicitud_compras_aprobador_jefe_links_fk` FOREIGN KEY (`solicitud_compra_id`) REFERENCES `solicitud_compras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `solicitud_compras_aprobador_jefe_links_inv_fk` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `solicitud_compras_solicitante_links`
--
ALTER TABLE `solicitud_compras_solicitante_links`
  ADD CONSTRAINT `solicitud_compras_solicitante_links_fk` FOREIGN KEY (`solicitud_compra_id`) REFERENCES `solicitud_compras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `solicitud_compras_solicitante_links_inv_fk` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `solicitud_compras_solicitud_compra_estado_links`
--
ALTER TABLE `solicitud_compras_solicitud_compra_estado_links`
  ADD CONSTRAINT `solicitud_compras_solicitud_compra_estado_links_fk` FOREIGN KEY (`solicitud_compra_id`) REFERENCES `solicitud_compras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `solicitud_compras_solicitud_compra_estado_links_inv_fk` FOREIGN KEY (`solicitud_compra_estado_id`) REFERENCES `solicitud_compra_estados` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `solicitud_compra_detalles`
--
ALTER TABLE `solicitud_compra_detalles`
  ADD CONSTRAINT `solicitud_compra_detalles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `solicitud_compra_detalles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `solicitud_compra_detalles_producto_links`
--
ALTER TABLE `solicitud_compra_detalles_producto_links`
  ADD CONSTRAINT `solicitud_compra_detalles_producto_links_fk` FOREIGN KEY (`solicitud_compra_detalle_id`) REFERENCES `solicitud_compra_detalles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `solicitud_compra_detalles_producto_links_inv_fk` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `solicitud_compra_detalles_solicitud_compra_links`
--
ALTER TABLE `solicitud_compra_detalles_solicitud_compra_links`
  ADD CONSTRAINT `solicitud_compra_detalles_solicitud_compra_links_fk` FOREIGN KEY (`solicitud_compra_detalle_id`) REFERENCES `solicitud_compra_detalles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `solicitud_compra_detalles_solicitud_compra_links_inv_fk` FOREIGN KEY (`solicitud_compra_id`) REFERENCES `solicitud_compras` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `solicitud_compra_estados`
--
ALTER TABLE `solicitud_compra_estados`
  ADD CONSTRAINT `solicitud_compra_estados_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `solicitud_compra_estados_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_inv_fk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD CONSTRAINT `strapi_transfer_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD CONSTRAINT `strapi_transfer_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_fk` FOREIGN KEY (`transfer_token_permission_id`) REFERENCES `strapi_transfer_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_inv_fk` FOREIGN KEY (`transfer_token_id`) REFERENCES `strapi_transfer_tokens` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
