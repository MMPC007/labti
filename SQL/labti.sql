-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2022 a las 11:57:17
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `labti`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `Id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador_eventos`
--

CREATE TABLE `administrador_eventos` (
  `Id_administrador` int(11) NOT NULL,
  `Id_eventos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador_evento_histórico`
--

CREATE TABLE `administrador_evento_histórico` (
  `Id_evento_historico` int(11) NOT NULL,
  `Id_administrador` int(11) NOT NULL,
  `Fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador_noticia`
--

CREATE TABLE `administrador_noticia` (
  `Id_noticia` int(11) NOT NULL,
  `Id_administrador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumni`
--

CREATE TABLE `alumni` (
  `Id_usuario` int(11) NOT NULL,
  `Grado_actual` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumni`
--

INSERT INTO `alumni` (`Id_usuario`, `Grado_actual`) VALUES
(15, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_estancia_profesional`
--

CREATE TABLE `alumno_estancia_profesional` (
  `Id_usuario` int(11) NOT NULL,
  `Semestre` int(11) DEFAULT NULL,
  `Carrera` int(11) DEFAULT NULL,
  `Institución_procedencia` int(11) DEFAULT NULL,
  `Id_profesor_invg` int(11) DEFAULT NULL,
  `Id_proyecto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumno_estancia_profesional`
--

INSERT INTO `alumno_estancia_profesional` (`Id_usuario`, `Semestre`, `Carrera`, `Institución_procedencia`, `Id_profesor_invg`, `Id_proyecto`) VALUES
(13, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_servicio_social`
--

CREATE TABLE `alumno_servicio_social` (
  `Id_usuario` int(11) NOT NULL,
  `Semestre` int(11) DEFAULT NULL,
  `Carrera` int(11) DEFAULT NULL,
  `Institución_procedencia` int(11) DEFAULT NULL,
  `Id_profesor_invg` int(11) DEFAULT NULL,
  `Id_proyecto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumno_servicio_social`
--

INSERT INTO `alumno_servicio_social` (`Id_usuario`, `Semestre`, `Carrera`, `Institución_procedencia`, `Id_profesor_invg`, `Id_proyecto`) VALUES
(11, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_tesista`
--

CREATE TABLE `alumno_tesista` (
  `Id_usuario` int(11) NOT NULL,
  `Carrera` int(11) DEFAULT NULL,
  `Tesis` varchar(255) NOT NULL,
  `Estado` int(11) DEFAULT NULL,
  `Id_profesor_invg` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `Id_publicación` int(11) NOT NULL,
  `ISNN` varchar(255) NOT NULL,
  `No_pag` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cap_libro`
--

CREATE TABLE `cap_libro` (
  `Id_publicación` int(11) NOT NULL,
  `ISBN` varchar(255) NOT NULL,
  `DOI` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coautor`
--

CREATE TABLE `coautor` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colaborador_externo`
--

CREATE TABLE `colaborador_externo` (
  `Id_usuario` int(11) NOT NULL,
  `Grado_actual` int(11) DEFAULT NULL,
  `Institución_procedencia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `colaborador_externo`
--

INSERT INTO `colaborador_externo` (`Id_usuario`, `Grado_actual`, `Institución_procedencia`) VALUES
(9, NULL, NULL),
(10, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colaborador_profesor_investigador`
--

CREATE TABLE `colaborador_profesor_investigador` (
  `Id_colaborador_externo` int(11) NOT NULL,
  `Id_profesor_investigador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colaborador_proyecto`
--

CREATE TABLE `colaborador_proyecto` (
  `Id_colaborador_externo` int(11) NOT NULL,
  `Id_proyecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conferencia`
--

CREATE TABLE `conferencia` (
  `Id` int(11) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Evento` varchar(255) NOT NULL,
  `Lugar` varchar(255) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conferencia_usuario`
--

CREATE TABLE `conferencia_usuario` (
  `Id_conferencia` int(11) NOT NULL,
  `Id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conferencia_vts`
--

CREATE TABLE `conferencia_vts` (
  `Id_eventos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `congreso`
--

CREATE TABLE `congreso` (
  `Id_eventos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuerpo_acad_estado`
--

CREATE TABLE `cuerpo_acad_estado` (
  `Id` int(11) NOT NULL,
  `Estado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cuerpo_acad_estado`
--

INSERT INTO `cuerpo_acad_estado` (`Id`, `Estado`) VALUES
(1, 'En fomacion'),
(2, 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuerpo_acad_lineas_invg`
--

CREATE TABLE `cuerpo_acad_lineas_invg` (
  `Id_cuerpo_acad` int(11) NOT NULL,
  `Id_lineas_invg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cuerpo_acad_lineas_invg`
--

INSERT INTO `cuerpo_acad_lineas_invg` (`Id_cuerpo_acad`, `Id_lineas_invg`) VALUES
(1, 1),
(1, 11),
(2, 2),
(2, 12),
(3, 3),
(3, 13),
(4, 4),
(4, 14),
(5, 5),
(5, 15),
(6, 6),
(6, 16),
(7, 7),
(7, 17),
(8, 8),
(8, 18),
(9, 9),
(9, 19),
(10, 10),
(10, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuerpo_académico`
--

CREATE TABLE `cuerpo_académico` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `PRODEP` varchar(255) NOT NULL,
  `Estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cuerpo_académico`
--

INSERT INTO `cuerpo_académico` (`Id`, `Nombre`, `PRODEP`, `Estado`) VALUES
(1, 'Cuerpo académico 01', '2e8y3u9jdwkdns', 1),
(2, 'Cuerpo académico 02', '2e8y3u9jdwkdns', 2),
(3, 'Cuerpo académico 03', '2e8y3u9jdwkdns', 1),
(4, 'Cuerpo académico 04', '2e8y3u9jdwkdns', 2),
(5, 'Cuerpo académico 05', '2e8y3u9jdwkdns', 1),
(6, 'Cuerpo académico 06', '2e8y3u9jdwkdns', 1),
(7, 'Cuerpo académico 07', '2e8y3u9jdwkdns', 2),
(8, 'Cuerpo académico 08', '2e8y3u9jdwkdns', 1),
(9, 'Cuerpo académico 09', '2e8y3u9jdwkdns', 2),
(10, 'Cuerpo académico 10', '2e8y3u9jdwkdns', 1),
(11, 'Cuerpo académico 11', '2e8y3u9jdwkdns', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distinción_academica_usuario`
--

CREATE TABLE `distinción_academica_usuario` (
  `Id_formación_academica` int(11) NOT NULL,
  `Id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distinción_académica`
--

CREATE TABLE `distinción_académica` (
  `Id` int(11) NOT NULL,
  `Distinción` varchar(255) NOT NULL,
  `Institución` varchar(255) NOT NULL,
  `Fecha_inicio` date DEFAULT NULL,
  `Fecha_fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `Id_eventos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `Id` int(11) NOT NULL,
  `Nombre_evento` varchar(255) NOT NULL,
  `Descripción` mediumtext NOT NULL,
  `Teléfono` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Hipervínculo` varchar(255) NOT NULL,
  `Fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_histórico`
--

CREATE TABLE `evento_histórico` (
  `Id` int(11) NOT NULL,
  `Nombre_evento` varchar(255) NOT NULL,
  `Descripción` mediumtext NOT NULL,
  `Fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia_laboral`
--

CREATE TABLE `experiencia_laboral` (
  `Id` int(11) NOT NULL,
  `Puesto` varchar(255) NOT NULL,
  `Institución` varchar(255) NOT NULL,
  `Fecha_inicio` date NOT NULL,
  `Fecha_fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia_lab_usuario`
--

CREATE TABLE `experiencia_lab_usuario` (
  `Id_experiencia_laboral` int(11) NOT NULL,
  `Id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formación_acad_usuario`
--

CREATE TABLE `formación_acad_usuario` (
  `Id_formación_academica` int(11) NOT NULL,
  `Id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formación_académica`
--

CREATE TABLE `formación_académica` (
  `Id` int(11) NOT NULL,
  `Grado` varchar(255) NOT NULL,
  `Área_especialidad` varchar(255) NOT NULL,
  `Institución` int(11) DEFAULT NULL,
  `Fecha_inicio` date NOT NULL,
  `Fecha_fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `form_acad_grado`
--

CREATE TABLE `form_acad_grado` (
  `Id` int(11) NOT NULL,
  `Grado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE `imagen` (
  `Id_multimedia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `información_personal`
--

CREATE TABLE `información_personal` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Apellido` varchar(255) NOT NULL,
  `Imagen` int(11) DEFAULT NULL,
  `Teléfono` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `información_personal`
--

INSERT INTO `información_personal` (`Id`, `Nombre`, `Apellido`, `Imagen`, `Teléfono`, `Email`, `Id_usuario`) VALUES
(1, 'ZULMA JANET', 'HERNANDEZ PAXTIAN', 1, '2342345678', 'jpaxtian@unca.edu.mx', 1),
(2, 'MIGUEL ANGEL', 'SÁNCHEZ ACEVEDO', 2, '2342345678', 'masanchez@unca.edu.mx', 2),
(3, 'CARMEN CARLOTA', 'MARTÍNEZ GIL', 3, '2342345678', 'cmartinez@unca.edu.mx', 3),
(4, 'MARÍA DEL ROSARIO', 'PERALTA CALVO', 4, '2342345678', 'mperalta@unca.edu.mx', 4),
(5, 'JOSÉ ALBERTO', 'MÁRQUEZ DOMINGUEZ', 5, '2342345678', 'albertomarquez@unca.edu.mx', 5),
(6, 'BEATRIZ ADRIANA', 'SABINO MOXO', 6, '2342345678', 'beatriz_sabino@unca.edu.mx', 6),
(7, 'ISRAEL JESÚS', 'ORLANDO GUERRERO', 7, '2342345678', 'iorlando@unca.edu.mx', 7),
(8, 'CARLOS MANUEL', 'SANTIBÁÑEZ CAMARILLO', 8, '2342345678', 'carlosmsc@unca.edu.mx', 8),
(17, 'Colavorador 01 ', 'Colavorador apellido', 8, '234234567', 'Colaborador1@col.edu.mx', 9),
(18, 'Colavorador 02 ', 'Colavorador apellido', 10, '234234567', 'Colaborador2@col.edu.mx', 10),
(19, 'Servicio 01 ', 'Servicio apellido', 11, '234234567', 'Servicios1@ss.edu.mx', 11),
(20, 'Servicio 02 ', 'Servicio apellido', 12, '234234567', 'Servicios2@ss.edu.mx', 12),
(21, 'Estancia 01 ', 'Estancia apellido', 13, '234234567', 'Estancia1@es.edu.mx', 13),
(22, 'Estancia 02 ', 'Estancia apellido', 14, '234234567', 'Estancia2@es.edu.mx', 14),
(23, 'Egresado 01 ', 'Egresado apellido', 15, '234234567', 'Egresado1@es.edu.mx', 15),
(24, 'Egresado 02 ', 'Egresado apellido', 16, '234234567', 'Egresado2@es.edu.mx', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laboratorio`
--

CREATE TABLE `laboratorio` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Teléfono` varchar(255) NOT NULL,
  `Dirección` varchar(255) NOT NULL,
  `Misión` text DEFAULT NULL,
  `Visión` text DEFAULT NULL,
  `Definición` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `laboratorio`
--

INSERT INTO `laboratorio` (`Id`, `Nombre`, `Email`, `Teléfono`, `Dirección`, `Misión`, `Visión`, `Definición`) VALUES
(1, 'Laboratorio de Tecnologias de la infoemacion', 'escolares@unca.edu.mx', '(236) 3 72 07 47', 'Carr. Teotitlán-San Antonio Nanahuatipan km 1.7 CP. 68540 Teotitlán de Flores Magon, Oaxaca.', 'La misión empresarial es el conjunto de objetivos generales y principios de trabajos para avanzar en una organización, que se expresa por medio de una declaración de la misión, que resume la misión empresarial en una sola frase, con el objetivo de comunicar la misión a todos los miembros de la organización.\r\n\r\nLos miembros de la organización son comúnmente conocidos como stakeholder o accionistas en la bibliografía estratégica, y comprende a los empleados, dueños, inversionistas o interesados, proveedores, clientes y a la comunidad.\r\n\r\nLa misión empresarial tiene sentido en tanto sea conocida por los stakeholders, pues proporciona un marco objetivo, sin ambigüedades ni malentendidos, para entender qué esperar de la compañía, y qué espera la compañía de cada uno.\r\n\r\nLa declaración de la misión es una forma muy difundida y efectiva de comunicarles la misión. Su efectividad depende de dos aspectos principales:\r\n\r\nEl método de formulación de la declaración, que no deje fuera ningún aspecto esencial de la misión de la compañía\r\nLa síntesis de la declaración a una frase única\r\nEsta última característica es muy importante para una rápida y efectiva difusión y absorción del concepto. La única contra que se le atribuye es la forma antiestética, complicada y antinatural que suele adoptar la frase, que puede producir aversión, por lo menos la primera vez que se lee. A veces las compañías usan su declaración de misión como un eslogan publicitario, pero esto es una desviación del verdadero propósito.', 'La visión permite definir el camino que se debe seguir para alcanzar las metas propuestas. Para ello, debe representar de una forma clara y realista los principios que dan una identidad a esta empresa y responder a cuestiones como: ¿qué se desea lograr?, ¿hacia dónde nos dirigimos?, ¿dónde queremos estar en un futuro?', 'El laboratorio es un lugar dotado de los medios necesarios para realizar investigaciones, experimentos, prácticas y trabajos de carácter científico, tecnológico o técnico; está equipado con instrumentos de medida o equipos con los que se realizan experimentos, investigaciones y prácticas diversas, según la rama de la ciencia a la que se dedique. También puede ser un aula o dependencia de cualquier centro docente. Es obligatorio el uso de equipos de protección como guantes, lentes protectores y bata; así como del seguimiento de unas estrictas normas de seguridad.\n\nSu importancia, sea en investigaciones o a escala industrial y en cualquiera de sus especialidades (química, dimensional, electricidad, biología, etc.), radica en el hecho de que las condiciones ambientales están controladas y normalizadas, de modo que:\n\nSe puede asegurar que no se producen influencias extrañas (a las conocidas o previstas) que alteren el resultado del experimento o medición: control.\nSe garantiza que el experimento o medición es repetible, es decir, cualquier otro laboratorio podría repetir el proceso y obtener el mismo resultado: normalización.\nLa historia de los laboratorios está influida por la historia de la medicina, ya que el hombre, al profundizar acerca de cómo es su organismo, ha requerido el uso de laboratorios cada vez más especializados.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `Id_publicación` int(11) NOT NULL,
  `ISBN` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineas_investigacion`
--

CREATE TABLE `lineas_investigacion` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `lineas_investigacion`
--

INSERT INTO `lineas_investigacion` (`Id`, `Nombre`) VALUES
(1, 'Lineas de Investigacion 01'),
(2, 'Lineas de Investigacion 02'),
(3, 'Lineas de Investigacion 03'),
(4, 'Lineas de Investigacion 04'),
(5, 'Lineas de Investigacion 05'),
(6, 'Lineas de Investigacion 06'),
(7, 'Lineas de Investigacion 07'),
(8, 'Lineas de Investigacion 08'),
(9, 'Lineas de Investigacion 09'),
(10, 'Lineas de Investigacion 10'),
(11, 'Lineas de Investigacion 11'),
(12, 'Lineas de Investigacion 12'),
(13, 'Lineas de Investigacion 13'),
(14, 'Lineas de Investigacion 14'),
(15, 'Lineas de Investigacion 15'),
(16, 'Lineas de Investigacion 16'),
(17, 'Lineas de Investigacion 17'),
(18, 'Lineas de Investigacion 18'),
(19, 'Lineas de Investigacion 19'),
(20, 'Lineas de Investigacion 20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_carrera`
--

CREATE TABLE `lista_carrera` (
  `Id` int(11) NOT NULL,
  `Nombre_carrera` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_emp_ues`
--

CREATE TABLE `lista_emp_ues` (
  `Id` int(11) NOT NULL,
  `Nombre_emp_ins` varchar(255) NOT NULL,
  `Hipervínculo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_ues`
--

CREATE TABLE `lista_ues` (
  `Id` int(11) NOT NULL,
  `Universidad` varchar(255) NOT NULL,
  `Hipervínculo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multimedia`
--

CREATE TABLE `multimedia` (
  `Id` int(11) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Descripción` varchar(255) NOT NULL,
  `Nombre_archivo` varchar(255) NOT NULL,
  `Fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `multimedia`
--

INSERT INTO `multimedia` (`Id`, `Titulo`, `Descripción`, `Nombre_archivo`, `Fecha`) VALUES
(1, 'Perfil', 'Fotografia de perfil', 'perfil.png', '0000-00-00 00:00:00'),
(2, 'Perfil', 'Fotografia de perfil', 'perfil.png', '0000-00-00 00:00:00'),
(3, 'Perfil', 'Fotografia de perfil', 'perfil.png', '0000-00-00 00:00:00'),
(4, 'Perfil', 'Fotografia de perfil', 'perfil.png', '0000-00-00 00:00:00'),
(5, 'Perfil', 'Fotografia de perfil', 'perfil.png', '0000-00-00 00:00:00'),
(6, 'Perfil', 'Fotografia de perfil', 'perfil.png', '0000-00-00 00:00:00'),
(7, 'Perfil', 'Fotografia de perfil', 'perfil.png', '0000-00-00 00:00:00'),
(8, 'Perfil', 'Fotografia de perfil', 'perfil.png', '0000-00-00 00:00:00'),
(9, 'Perfil', 'Fotografia de perfil', 'perfil.png', '0000-00-00 00:00:00'),
(10, 'Perfil', 'Fotografia de perfil', 'perfil.png', '0000-00-00 00:00:00'),
(11, 'Perfil', 'Fotografia de perfil', 'perfil.png', '0000-00-00 00:00:00'),
(12, 'Perfil', 'Fotografia de perfil', 'perfil.png', '0000-00-00 00:00:00'),
(13, 'Perfil', 'Fotografia de perfil', 'perfil.png', '0000-00-00 00:00:00'),
(14, 'Perfil', 'Fotografia de perfil', 'perfil.png', '0000-00-00 00:00:00'),
(15, 'Perfil', 'Fotografia de perfil', 'perfil.png', '0000-00-00 00:00:00'),
(16, 'Perfil', 'Fotografia de perfil', 'perfil.png', '0000-00-00 00:00:00'),
(17, 'Perfil', 'Fotografia de perfil', 'perfil.png', '0000-00-00 00:00:00'),
(18, 'Perfil', 'Fotografia de perfil', 'perfil.png', '0000-00-00 00:00:00'),
(19, 'Perfil', 'Fotografia de perfil', 'perfil.png', '0000-00-00 00:00:00'),
(20, 'Perfil', 'Fotografia de perfil', 'perfil.png', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multimedia_administrador`
--

CREATE TABLE `multimedia_administrador` (
  `Id_multimedia` int(11) NOT NULL,
  `Id_administrador` int(11) NOT NULL,
  `Fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multimedia_eventos`
--

CREATE TABLE `multimedia_eventos` (
  `Id_multimedia` int(11) NOT NULL,
  `Id_eventos` int(11) NOT NULL,
  `Fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multimedia_evento_histórico`
--

CREATE TABLE `multimedia_evento_histórico` (
  `Id_multimedia` int(11) NOT NULL,
  `Id_evento_historico` int(11) NOT NULL,
  `Fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multimedia_noticia`
--

CREATE TABLE `multimedia_noticia` (
  `Id_multimedia` int(11) NOT NULL,
  `Id_noticia` int(11) NOT NULL,
  `Fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multimedia_profesor_investigador`
--

CREATE TABLE `multimedia_profesor_investigador` (
  `Id_multimedia` int(11) NOT NULL,
  `Id_profesor_investigador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multimedia_proyecto`
--

CREATE TABLE `multimedia_proyecto` (
  `Id_multimedia` int(11) NOT NULL,
  `Id_proyecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticia`
--

CREATE TABLE `noticia` (
  `Id` int(11) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Entrada` text DEFAULT NULL,
  `Cuerpo` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posisión_trabajo`
--

CREATE TABLE `posisión_trabajo` (
  `Id` int(11) NOT NULL,
  `Puesto` varchar(255) NOT NULL,
  `Institución` varchar(255) NOT NULL,
  `Id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor_investigador`
--

CREATE TABLE `profesor_investigador` (
  `Id_usuario` int(11) NOT NULL,
  `Grado_actual` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `profesor_investigador`
--

INSERT INTO `profesor_investigador` (`Id_usuario`, `Grado_actual`) VALUES
(1, 'Doctor'),
(2, 'Doctor'),
(3, 'Doctor'),
(4, 'Doctor'),
(5, 'Doctor'),
(6, 'Doctor'),
(7, 'Doctor'),
(8, 'Doctor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor_investigador_área`
--

CREATE TABLE `profesor_investigador_área` (
  `Id_profesor_investigador` int(11) NOT NULL,
  `Id_área_laboratorio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `profesor_investigador_área`
--

INSERT INTO `profesor_investigador_área` (`Id_profesor_investigador`, `Id_área_laboratorio`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 3),
(7, 4),
(8, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor_invg_cuerpo_acad`
--

CREATE TABLE `profesor_invg_cuerpo_acad` (
  `Id_usuario` int(11) NOT NULL,
  `Id_cuerpo_acad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor_invg_lineas_invg`
--

CREATE TABLE `profesor_invg_lineas_invg` (
  `Id_usuario` int(11) NOT NULL,
  `Id_lineas_invg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `Id` int(11) NOT NULL,
  `Estatus` int(11) DEFAULT NULL,
  `Nombre_proyecto` varchar(255) NOT NULL,
  `Problemática` mediumtext NOT NULL,
  `Solución_propuesta` mediumtext NOT NULL,
  `Objetivos` mediumtext NOT NULL,
  `Resultados` mediumtext NOT NULL,
  `Informe_técnico` varchar(255) NOT NULL,
  `Id_profesor_invg` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`Id`, `Estatus`, `Nombre_proyecto`, `Problemática`, `Solución_propuesta`, `Objetivos`, `Resultados`, `Informe_técnico`, `Id_profesor_invg`) VALUES
(1, 1, 'Proyecto 01', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 1),
(2, 1, 'Proyecto 02', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 1),
(3, 2, 'Proyecto 02', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 1),
(4, 2, 'Proyecto 02', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 1),
(5, 1, 'Proyecto 01', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 2),
(6, 1, 'Proyecto 02', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 2),
(7, 2, 'Proyecto 02', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 2),
(8, 2, 'Proyecto 02', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 2),
(9, 1, 'Proyecto 01', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 3),
(10, 1, 'Proyecto 02', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 3),
(11, 2, 'Proyecto 02', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 3),
(12, 2, 'Proyecto 02', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 3),
(13, 1, 'Proyecto 01', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 4),
(14, 1, 'Proyecto 02', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 4),
(15, 2, 'Proyecto 02', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 4),
(16, 2, 'Proyecto 02', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 4),
(17, 1, 'Proyecto 01', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 5),
(18, 1, 'Proyecto 02', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 5),
(19, 2, 'Proyecto 02', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 5),
(20, 2, 'Proyecto 02', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 5),
(21, 1, 'Proyecto 01', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 6),
(22, 1, 'Proyecto 02', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 6),
(23, 2, 'Proyecto 02', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 6),
(24, 2, 'Proyecto 02', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 6),
(25, 1, 'Proyecto 01', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 7),
(26, 1, 'Proyecto 02', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 7),
(27, 2, 'Proyecto 02', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 7),
(28, 2, 'Proyecto 02', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 7),
(29, 1, 'Proyecto 01', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 8),
(30, 1, 'Proyecto 02', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 8),
(31, 2, 'Proyecto 02', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 8),
(32, 2, 'Proyecto 02', 'Proematica', 'Solucion propuesta', 'Objetivos', 'Resulrados', 'Informe tecnico', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto_estado`
--

CREATE TABLE `proyecto_estado` (
  `Id` int(11) NOT NULL,
  `Estado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proyecto_estado`
--

INSERT INTO `proyecto_estado` (`Id`, `Estado`) VALUES
(1, 'Encurso'),
(2, 'Finalizado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicación`
--

CREATE TABLE `publicación` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicación_coautor`
--

CREATE TABLE `publicación_coautor` (
  `Id_publicación` int(11) NOT NULL,
  `Id_coautor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semestre`
--

CREATE TABLE `semestre` (
  `Id` int(11) NOT NULL,
  `Semestre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `semestre`
--

INSERT INTO `semestre` (`Id`, `Semestre`) VALUES
(1, 'Primer'),
(2, 'Segundo'),
(3, 'Tercero'),
(4, 'Cuarto'),
(5, 'Quinto'),
(6, 'Sexto'),
(7, 'Séptimo'),
(8, 'Octavo'),
(9, 'Noveno'),
(10, 'Decimo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tesis_estado`
--

CREATE TABLE `tesis_estado` (
  `Id` int(11) NOT NULL,
  `Estado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id` int(11) NOT NULL,
  `Nombre_usuario` varchar(255) NOT NULL,
  `Contraseña` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id`, `Nombre_usuario`, `Contraseña`) VALUES
(1, 'jpaxtian@unca.edu.mx', '$2y$10$cRtv1hEFNQ2bb.CqbWHkzeRbKQCtdLj7.D4mDU192eRverkFXzZgq'),
(2, 'masanchez@unca.edu.mx', '$2y$10$cRtv1hEFNQ2bb.CqbWHkzeRbKQCtdLj7.D4mDU192eRverkFXzZgq'),
(3, 'cmartinez@unca.edu.mx', '$2y$10$cRtv1hEFNQ2bb.CqbWHkzeRbKQCtdLj7.D4mDU192eRverkFXzZgq'),
(4, 'mperalta@unca.edu.mx', '$2y$10$cRtv1hEFNQ2bb.CqbWHkzeRbKQCtdLj7.D4mDU192eRverkFXzZgq'),
(5, 'albertomarquez@unca.edu.mx', '$2y$10$cRtv1hEFNQ2bb.CqbWHkzeRbKQCtdLj7.D4mDU192eRverkFXzZgq'),
(6, 'beatriz_sabino@unca.edu.mx', '$2y$10$cRtv1hEFNQ2bb.CqbWHkzeRbKQCtdLj7.D4mDU192eRverkFXzZgq'),
(7, 'iorlando@unca.edu.mx', '$2y$10$cRtv1hEFNQ2bb.CqbWHkzeRbKQCtdLj7.D4mDU192eRverkFXzZgq'),
(8, 'carlosmsc@unca.edu.mx', '$2y$10$cRtv1hEFNQ2bb.CqbWHkzeRbKQCtdLj7.D4mDU192eRverkFXzZgq'),
(9, 'Colaborador1@col.edu.mx', '$2y$10$5Pr1RrhNLup.zVYrKKLpfuNTO85SqHwJHnOxMKV1Z/jGqyLZIFaCi'),
(10, 'Colaborador2@col.edu.mx', '$2y$10$5Pr1RrhNLup.zVYrKKLpfuNTO85SqHwJHnOxMKV1Z/jGqyLZIFaCi'),
(11, 'Servicios1@ss.edu.mx', '$2y$10$5Pr1RrhNLup.zVYrKKLpfuNTO85SqHwJHnOxMKV1Z/jGqyLZIFaCi'),
(12, 'Servicios2@ss.edu.mx', '$2y$10$5Pr1RrhNLup.zVYrKKLpfuNTO85SqHwJHnOxMKV1Z/jGqyLZIFaCi'),
(13, 'Estancia1@es.edu.mx', '$2y$10$5Pr1RrhNLup.zVYrKKLpfuNTO85SqHwJHnOxMKV1Z/jGqyLZIFaCi'),
(14, 'Estancia2@es.edu.mx', '$2y$10$5Pr1RrhNLup.zVYrKKLpfuNTO85SqHwJHnOxMKV1Z/jGqyLZIFaCi'),
(15, 'Egresado1@eg.edu.mx', '$2y$10$5Pr1RrhNLup.zVYrKKLpfuNTO85SqHwJHnOxMKV1Z/jGqyLZIFaCi'),
(16, 'Egresado2@eg.edu.mx', '$2y$10$5Pr1RrhNLup.zVYrKKLpfuNTO85SqHwJHnOxMKV1Z/jGqyLZIFaCi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_publicación`
--

CREATE TABLE `usuario_publicación` (
  `Id_usuario` int(11) NOT NULL,
  `Id_publicación` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `video`
--

CREATE TABLE `video` (
  `Id_multimedia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `área`
--

CREATE TABLE `área` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Acrónimo` varchar(255) NOT NULL,
  `Objetivo` text DEFAULT NULL,
  `Id_laboratorio` int(11) DEFAULT NULL,
  `Id_pi_encargado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `área`
--

INSERT INTO `área` (`Id`, `Nombre`, `Acrónimo`, `Objetivo`, `Id_laboratorio`, `Id_pi_encargado`) VALUES
(1, 'Sitemas Inteligentes y distriguidos', 'SIyD', 'Los objetivos de las empresas son los pasos definidos para alcanzar los resultados que un negocio espera. Estos objetivos deben ser medibles para que sea posible evaluar su desempeño y, así, tomar las medidas necesarias para redefinir las estrategias si se requiere.', 1, 1),
(2, 'Electronica', 'EL', 'Los objetivos de las empresas son los pasos definidos para alcanzar los resultados que un negocio espera. Estos objetivos deben ser medibles para que sea posible evaluar su desempeño y, así, tomar las medidas necesarias para redefinir las estrategias si se requiere.', 1, 2),
(3, 'Investigación y desarrollo de software', 'IDSoft', 'Los objetivos de las empresas son los pasos definidos para alcanzar los resultados que un negocio espera. Estos objetivos deben ser medibles para que sea posible evaluar su desempeño y, así, tomar las medidas necesarias para redefinir las estrategias si se requiere.', 1, 3),
(4, 'Esperiencia de usuario UX', 'EU-UX', 'Los objetivos de las empresas son los pasos definidos para alcanzar los resultados que un negocio espera. Estos objetivos deben ser medibles para que sea posible evaluar su desempeño y, así, tomar las medidas necesarias para redefinir las estrategias si se requiere.', 1, 3),
(5, 'Redes', 'Redes', 'Los objetivos de las empresas son los pasos definidos para alcanzar los resultados que un negocio espera. Estos objetivos deben ser medibles para que sea posible evaluar su desempeño y, así, tomar las medidas necesarias para redefinir las estrategias si se requiere.', 1, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`Id_usuario`);

--
-- Indices de la tabla `administrador_eventos`
--
ALTER TABLE `administrador_eventos`
  ADD PRIMARY KEY (`Id_administrador`,`Id_eventos`),
  ADD KEY `Id_eventos` (`Id_eventos`);

--
-- Indices de la tabla `administrador_evento_histórico`
--
ALTER TABLE `administrador_evento_histórico`
  ADD PRIMARY KEY (`Id_evento_historico`,`Id_administrador`),
  ADD KEY `Id_administrador` (`Id_administrador`);

--
-- Indices de la tabla `administrador_noticia`
--
ALTER TABLE `administrador_noticia`
  ADD PRIMARY KEY (`Id_noticia`,`Id_administrador`),
  ADD KEY `Id_administrador` (`Id_administrador`);

--
-- Indices de la tabla `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`Id_usuario`),
  ADD KEY `Grado_actual` (`Grado_actual`);

--
-- Indices de la tabla `alumno_estancia_profesional`
--
ALTER TABLE `alumno_estancia_profesional`
  ADD PRIMARY KEY (`Id_usuario`),
  ADD KEY `Semestre` (`Semestre`),
  ADD KEY `Carrera` (`Carrera`),
  ADD KEY `Institución_procedencia` (`Institución_procedencia`),
  ADD KEY `Id_profesor_invg` (`Id_profesor_invg`),
  ADD KEY `Id_proyecto` (`Id_proyecto`);

--
-- Indices de la tabla `alumno_servicio_social`
--
ALTER TABLE `alumno_servicio_social`
  ADD PRIMARY KEY (`Id_usuario`),
  ADD KEY `Semestre` (`Semestre`),
  ADD KEY `Carrera` (`Carrera`),
  ADD KEY `Institución_procedencia` (`Institución_procedencia`),
  ADD KEY `Id_profesor_invg` (`Id_profesor_invg`),
  ADD KEY `Id_proyecto` (`Id_proyecto`);

--
-- Indices de la tabla `alumno_tesista`
--
ALTER TABLE `alumno_tesista`
  ADD PRIMARY KEY (`Id_usuario`),
  ADD KEY `Carrera` (`Carrera`),
  ADD KEY `Estado` (`Estado`),
  ADD KEY `Id_profesor_invg` (`Id_profesor_invg`);

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`Id_publicación`);

--
-- Indices de la tabla `cap_libro`
--
ALTER TABLE `cap_libro`
  ADD PRIMARY KEY (`Id_publicación`);

--
-- Indices de la tabla `coautor`
--
ALTER TABLE `coautor`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `colaborador_externo`
--
ALTER TABLE `colaborador_externo`
  ADD PRIMARY KEY (`Id_usuario`),
  ADD KEY `Institución_procedencia` (`Institución_procedencia`);

--
-- Indices de la tabla `colaborador_profesor_investigador`
--
ALTER TABLE `colaborador_profesor_investigador`
  ADD PRIMARY KEY (`Id_colaborador_externo`,`Id_profesor_investigador`),
  ADD KEY `Id_profesor_investigador` (`Id_profesor_investigador`);

--
-- Indices de la tabla `colaborador_proyecto`
--
ALTER TABLE `colaborador_proyecto`
  ADD PRIMARY KEY (`Id_colaborador_externo`,`Id_proyecto`),
  ADD KEY `Id_proyecto` (`Id_proyecto`);

--
-- Indices de la tabla `conferencia`
--
ALTER TABLE `conferencia`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `conferencia_usuario`
--
ALTER TABLE `conferencia_usuario`
  ADD PRIMARY KEY (`Id_conferencia`,`Id_usuario`),
  ADD KEY `Id_usuario` (`Id_usuario`);

--
-- Indices de la tabla `conferencia_vts`
--
ALTER TABLE `conferencia_vts`
  ADD PRIMARY KEY (`Id_eventos`);

--
-- Indices de la tabla `congreso`
--
ALTER TABLE `congreso`
  ADD PRIMARY KEY (`Id_eventos`);

--
-- Indices de la tabla `cuerpo_acad_estado`
--
ALTER TABLE `cuerpo_acad_estado`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `cuerpo_acad_lineas_invg`
--
ALTER TABLE `cuerpo_acad_lineas_invg`
  ADD PRIMARY KEY (`Id_cuerpo_acad`,`Id_lineas_invg`),
  ADD KEY `Id_lineas_invg` (`Id_lineas_invg`);

--
-- Indices de la tabla `cuerpo_académico`
--
ALTER TABLE `cuerpo_académico`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Estado` (`Estado`);

--
-- Indices de la tabla `distinción_academica_usuario`
--
ALTER TABLE `distinción_academica_usuario`
  ADD PRIMARY KEY (`Id_formación_academica`,`Id_usuario`),
  ADD KEY `Id_usuario` (`Id_usuario`);

--
-- Indices de la tabla `distinción_académica`
--
ALTER TABLE `distinción_académica`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`Id_eventos`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `evento_histórico`
--
ALTER TABLE `evento_histórico`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `experiencia_lab_usuario`
--
ALTER TABLE `experiencia_lab_usuario`
  ADD PRIMARY KEY (`Id_experiencia_laboral`,`Id_usuario`),
  ADD KEY `Id_usuario` (`Id_usuario`);

--
-- Indices de la tabla `formación_acad_usuario`
--
ALTER TABLE `formación_acad_usuario`
  ADD PRIMARY KEY (`Id_formación_academica`,`Id_usuario`),
  ADD KEY `Id_usuario` (`Id_usuario`);

--
-- Indices de la tabla `formación_académica`
--
ALTER TABLE `formación_académica`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Institución` (`Institución`);

--
-- Indices de la tabla `form_acad_grado`
--
ALTER TABLE `form_acad_grado`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD PRIMARY KEY (`Id_multimedia`);

--
-- Indices de la tabla `información_personal`
--
ALTER TABLE `información_personal`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_usuario` (`Id_usuario`),
  ADD KEY `Imagen` (`Imagen`);

--
-- Indices de la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`Id_publicación`);

--
-- Indices de la tabla `lineas_investigacion`
--
ALTER TABLE `lineas_investigacion`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `lista_carrera`
--
ALTER TABLE `lista_carrera`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `lista_emp_ues`
--
ALTER TABLE `lista_emp_ues`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `lista_ues`
--
ALTER TABLE `lista_ues`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `multimedia`
--
ALTER TABLE `multimedia`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `multimedia_administrador`
--
ALTER TABLE `multimedia_administrador`
  ADD PRIMARY KEY (`Id_multimedia`,`Id_administrador`),
  ADD KEY `Id_administrador` (`Id_administrador`);

--
-- Indices de la tabla `multimedia_eventos`
--
ALTER TABLE `multimedia_eventos`
  ADD PRIMARY KEY (`Id_multimedia`,`Id_eventos`),
  ADD KEY `Id_eventos` (`Id_eventos`);

--
-- Indices de la tabla `multimedia_evento_histórico`
--
ALTER TABLE `multimedia_evento_histórico`
  ADD PRIMARY KEY (`Id_multimedia`,`Id_evento_historico`),
  ADD KEY `Id_evento_historico` (`Id_evento_historico`);

--
-- Indices de la tabla `multimedia_noticia`
--
ALTER TABLE `multimedia_noticia`
  ADD PRIMARY KEY (`Id_multimedia`,`Id_noticia`),
  ADD KEY `Id_noticia` (`Id_noticia`);

--
-- Indices de la tabla `multimedia_profesor_investigador`
--
ALTER TABLE `multimedia_profesor_investigador`
  ADD PRIMARY KEY (`Id_multimedia`,`Id_profesor_investigador`),
  ADD KEY `Id_profesor_investigador` (`Id_profesor_investigador`);

--
-- Indices de la tabla `multimedia_proyecto`
--
ALTER TABLE `multimedia_proyecto`
  ADD PRIMARY KEY (`Id_multimedia`,`Id_proyecto`),
  ADD KEY `Id_proyecto` (`Id_proyecto`);

--
-- Indices de la tabla `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `posisión_trabajo`
--
ALTER TABLE `posisión_trabajo`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_usuario` (`Id_usuario`);

--
-- Indices de la tabla `profesor_investigador`
--
ALTER TABLE `profesor_investigador`
  ADD PRIMARY KEY (`Id_usuario`);

--
-- Indices de la tabla `profesor_investigador_área`
--
ALTER TABLE `profesor_investigador_área`
  ADD PRIMARY KEY (`Id_profesor_investigador`,`Id_área_laboratorio`),
  ADD KEY `Id_área_laboratorio` (`Id_área_laboratorio`);

--
-- Indices de la tabla `profesor_invg_cuerpo_acad`
--
ALTER TABLE `profesor_invg_cuerpo_acad`
  ADD PRIMARY KEY (`Id_usuario`,`Id_cuerpo_acad`),
  ADD KEY `Id_cuerpo_acad` (`Id_cuerpo_acad`);

--
-- Indices de la tabla `profesor_invg_lineas_invg`
--
ALTER TABLE `profesor_invg_lineas_invg`
  ADD PRIMARY KEY (`Id_usuario`,`Id_lineas_invg`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_profesor_invg` (`Id_profesor_invg`),
  ADD KEY `Estatus` (`Estatus`);

--
-- Indices de la tabla `proyecto_estado`
--
ALTER TABLE `proyecto_estado`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `publicación`
--
ALTER TABLE `publicación`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `publicación_coautor`
--
ALTER TABLE `publicación_coautor`
  ADD PRIMARY KEY (`Id_publicación`,`Id_coautor`),
  ADD KEY `Id_coautor` (`Id_coautor`);

--
-- Indices de la tabla `semestre`
--
ALTER TABLE `semestre`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tesis_estado`
--
ALTER TABLE `tesis_estado`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `usuario_publicación`
--
ALTER TABLE `usuario_publicación`
  ADD PRIMARY KEY (`Id_usuario`,`Id_publicación`),
  ADD KEY `Id_publicación` (`Id_publicación`);

--
-- Indices de la tabla `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`Id_multimedia`);

--
-- Indices de la tabla `área`
--
ALTER TABLE `área`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_laboratorio` (`Id_laboratorio`),
  ADD KEY `Id_pi_encargado` (`Id_pi_encargado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `coautor`
--
ALTER TABLE `coautor`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `conferencia`
--
ALTER TABLE `conferencia`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuerpo_acad_estado`
--
ALTER TABLE `cuerpo_acad_estado`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cuerpo_académico`
--
ALTER TABLE `cuerpo_académico`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `distinción_académica`
--
ALTER TABLE `distinción_académica`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `evento_histórico`
--
ALTER TABLE `evento_histórico`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `formación_académica`
--
ALTER TABLE `formación_académica`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `form_acad_grado`
--
ALTER TABLE `form_acad_grado`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `información_personal`
--
ALTER TABLE `información_personal`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `lineas_investigacion`
--
ALTER TABLE `lineas_investigacion`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `lista_carrera`
--
ALTER TABLE `lista_carrera`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lista_emp_ues`
--
ALTER TABLE `lista_emp_ues`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lista_ues`
--
ALTER TABLE `lista_ues`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `multimedia`
--
ALTER TABLE `multimedia`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `noticia`
--
ALTER TABLE `noticia`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posisión_trabajo`
--
ALTER TABLE `posisión_trabajo`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `proyecto_estado`
--
ALTER TABLE `proyecto_estado`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `publicación`
--
ALTER TABLE `publicación`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `semestre`
--
ALTER TABLE `semestre`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tesis_estado`
--
ALTER TABLE `tesis_estado`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `área`
--
ALTER TABLE `área`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD CONSTRAINT `administrador_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id`);

--
-- Filtros para la tabla `administrador_eventos`
--
ALTER TABLE `administrador_eventos`
  ADD CONSTRAINT `administrador_eventos_ibfk_1` FOREIGN KEY (`Id_administrador`) REFERENCES `administrador` (`Id_usuario`),
  ADD CONSTRAINT `administrador_eventos_ibfk_2` FOREIGN KEY (`Id_eventos`) REFERENCES `eventos` (`Id`);

--
-- Filtros para la tabla `administrador_evento_histórico`
--
ALTER TABLE `administrador_evento_histórico`
  ADD CONSTRAINT `administrador_evento_histórico_ibfk_1` FOREIGN KEY (`Id_evento_historico`) REFERENCES `evento_histórico` (`Id`),
  ADD CONSTRAINT `administrador_evento_histórico_ibfk_2` FOREIGN KEY (`Id_administrador`) REFERENCES `administrador` (`Id_usuario`);

--
-- Filtros para la tabla `administrador_noticia`
--
ALTER TABLE `administrador_noticia`
  ADD CONSTRAINT `administrador_noticia_ibfk_1` FOREIGN KEY (`Id_noticia`) REFERENCES `noticia` (`Id`),
  ADD CONSTRAINT `administrador_noticia_ibfk_2` FOREIGN KEY (`Id_administrador`) REFERENCES `administrador` (`Id_usuario`);

--
-- Filtros para la tabla `alumni`
--
ALTER TABLE `alumni`
  ADD CONSTRAINT `alumni_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id`),
  ADD CONSTRAINT `alumni_ibfk_2` FOREIGN KEY (`Grado_actual`) REFERENCES `form_acad_grado` (`Id`);

--
-- Filtros para la tabla `alumno_estancia_profesional`
--
ALTER TABLE `alumno_estancia_profesional`
  ADD CONSTRAINT `alumno_estancia_profesional_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id`),
  ADD CONSTRAINT `alumno_estancia_profesional_ibfk_2` FOREIGN KEY (`Semestre`) REFERENCES `semestre` (`Id`),
  ADD CONSTRAINT `alumno_estancia_profesional_ibfk_3` FOREIGN KEY (`Carrera`) REFERENCES `lista_carrera` (`Id`),
  ADD CONSTRAINT `alumno_estancia_profesional_ibfk_4` FOREIGN KEY (`Institución_procedencia`) REFERENCES `lista_ues` (`Id`),
  ADD CONSTRAINT `alumno_estancia_profesional_ibfk_5` FOREIGN KEY (`Id_profesor_invg`) REFERENCES `profesor_investigador` (`Id_usuario`),
  ADD CONSTRAINT `alumno_estancia_profesional_ibfk_6` FOREIGN KEY (`Id_proyecto`) REFERENCES `proyecto` (`Id`);

--
-- Filtros para la tabla `alumno_servicio_social`
--
ALTER TABLE `alumno_servicio_social`
  ADD CONSTRAINT `alumno_servicio_social_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id`),
  ADD CONSTRAINT `alumno_servicio_social_ibfk_2` FOREIGN KEY (`Semestre`) REFERENCES `semestre` (`Id`),
  ADD CONSTRAINT `alumno_servicio_social_ibfk_3` FOREIGN KEY (`Carrera`) REFERENCES `lista_carrera` (`Id`),
  ADD CONSTRAINT `alumno_servicio_social_ibfk_4` FOREIGN KEY (`Institución_procedencia`) REFERENCES `lista_ues` (`Id`),
  ADD CONSTRAINT `alumno_servicio_social_ibfk_5` FOREIGN KEY (`Id_profesor_invg`) REFERENCES `profesor_investigador` (`Id_usuario`),
  ADD CONSTRAINT `alumno_servicio_social_ibfk_6` FOREIGN KEY (`Id_proyecto`) REFERENCES `proyecto` (`Id`);

--
-- Filtros para la tabla `alumno_tesista`
--
ALTER TABLE `alumno_tesista`
  ADD CONSTRAINT `alumno_tesista_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id`),
  ADD CONSTRAINT `alumno_tesista_ibfk_2` FOREIGN KEY (`Carrera`) REFERENCES `lista_carrera` (`Id`),
  ADD CONSTRAINT `alumno_tesista_ibfk_3` FOREIGN KEY (`Estado`) REFERENCES `tesis_estado` (`Id`),
  ADD CONSTRAINT `alumno_tesista_ibfk_4` FOREIGN KEY (`Id_profesor_invg`) REFERENCES `profesor_investigador` (`Id_usuario`);

--
-- Filtros para la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD CONSTRAINT `articulo_ibfk_1` FOREIGN KEY (`Id_publicación`) REFERENCES `publicación` (`Id`);

--
-- Filtros para la tabla `cap_libro`
--
ALTER TABLE `cap_libro`
  ADD CONSTRAINT `cap_libro_ibfk_1` FOREIGN KEY (`Id_publicación`) REFERENCES `publicación` (`Id`);

--
-- Filtros para la tabla `colaborador_externo`
--
ALTER TABLE `colaborador_externo`
  ADD CONSTRAINT `colaborador_externo_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id`),
  ADD CONSTRAINT `colaborador_externo_ibfk_2` FOREIGN KEY (`Grado_actual`) REFERENCES `form_acad_grado` (`Id`),
  ADD CONSTRAINT `colaborador_externo_ibfk_3` FOREIGN KEY (`Institución_procedencia`) REFERENCES `lista_emp_ues` (`Id`);

--
-- Filtros para la tabla `colaborador_profesor_investigador`
--
ALTER TABLE `colaborador_profesor_investigador`
  ADD CONSTRAINT `colaborador_profesor_investigador_ibfk_1` FOREIGN KEY (`Id_colaborador_externo`) REFERENCES `colaborador_externo` (`Id_usuario`),
  ADD CONSTRAINT `colaborador_profesor_investigador_ibfk_2` FOREIGN KEY (`Id_profesor_investigador`) REFERENCES `profesor_investigador` (`Id_usuario`);

--
-- Filtros para la tabla `colaborador_proyecto`
--
ALTER TABLE `colaborador_proyecto`
  ADD CONSTRAINT `colaborador_proyecto_ibfk_1` FOREIGN KEY (`Id_colaborador_externo`) REFERENCES `colaborador_externo` (`Id_usuario`),
  ADD CONSTRAINT `colaborador_proyecto_ibfk_2` FOREIGN KEY (`Id_proyecto`) REFERENCES `proyecto` (`Id`);

--
-- Filtros para la tabla `conferencia_usuario`
--
ALTER TABLE `conferencia_usuario`
  ADD CONSTRAINT `conferencia_usuario_ibfk_1` FOREIGN KEY (`Id_conferencia`) REFERENCES `conferencia` (`Id`),
  ADD CONSTRAINT `conferencia_usuario_ibfk_2` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id`);

--
-- Filtros para la tabla `conferencia_vts`
--
ALTER TABLE `conferencia_vts`
  ADD CONSTRAINT `conferencia_vts_ibfk_1` FOREIGN KEY (`Id_eventos`) REFERENCES `eventos` (`Id`);

--
-- Filtros para la tabla `congreso`
--
ALTER TABLE `congreso`
  ADD CONSTRAINT `congreso_ibfk_1` FOREIGN KEY (`Id_eventos`) REFERENCES `eventos` (`Id`);

--
-- Filtros para la tabla `cuerpo_acad_lineas_invg`
--
ALTER TABLE `cuerpo_acad_lineas_invg`
  ADD CONSTRAINT `cuerpo_acad_lineas_invg_ibfk_1` FOREIGN KEY (`Id_cuerpo_acad`) REFERENCES `cuerpo_académico` (`Id`),
  ADD CONSTRAINT `cuerpo_acad_lineas_invg_ibfk_2` FOREIGN KEY (`Id_lineas_invg`) REFERENCES `lineas_investigacion` (`Id`);

--
-- Filtros para la tabla `cuerpo_académico`
--
ALTER TABLE `cuerpo_académico`
  ADD CONSTRAINT `cuerpo_académico_ibfk_1` FOREIGN KEY (`Estado`) REFERENCES `cuerpo_acad_estado` (`Id`);

--
-- Filtros para la tabla `distinción_academica_usuario`
--
ALTER TABLE `distinción_academica_usuario`
  ADD CONSTRAINT `distinción_academica_usuario_ibfk_1` FOREIGN KEY (`Id_formación_academica`) REFERENCES `formación_académica` (`Id`),
  ADD CONSTRAINT `distinción_academica_usuario_ibfk_2` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id`);

--
-- Filtros para la tabla `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`Id_eventos`) REFERENCES `eventos` (`Id`);

--
-- Filtros para la tabla `experiencia_lab_usuario`
--
ALTER TABLE `experiencia_lab_usuario`
  ADD CONSTRAINT `experiencia_lab_usuario_ibfk_1` FOREIGN KEY (`Id_experiencia_laboral`) REFERENCES `experiencia_laboral` (`Id`),
  ADD CONSTRAINT `experiencia_lab_usuario_ibfk_2` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id`);

--
-- Filtros para la tabla `formación_acad_usuario`
--
ALTER TABLE `formación_acad_usuario`
  ADD CONSTRAINT `formación_acad_usuario_ibfk_1` FOREIGN KEY (`Id_formación_academica`) REFERENCES `formación_académica` (`Id`),
  ADD CONSTRAINT `formación_acad_usuario_ibfk_2` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id`);

--
-- Filtros para la tabla `formación_académica`
--
ALTER TABLE `formación_académica`
  ADD CONSTRAINT `formación_académica_ibfk_1` FOREIGN KEY (`Institución`) REFERENCES `lista_ues` (`Id`);

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`Id_multimedia`) REFERENCES `multimedia` (`Id`);

--
-- Filtros para la tabla `información_personal`
--
ALTER TABLE `información_personal`
  ADD CONSTRAINT `Imagen` FOREIGN KEY (`Imagen`) REFERENCES `multimedia` (`Id`),
  ADD CONSTRAINT `información_personal_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id`);

--
-- Filtros para la tabla `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`Id_publicación`) REFERENCES `publicación` (`Id`);

--
-- Filtros para la tabla `multimedia_administrador`
--
ALTER TABLE `multimedia_administrador`
  ADD CONSTRAINT `multimedia_administrador_ibfk_1` FOREIGN KEY (`Id_multimedia`) REFERENCES `multimedia` (`Id`),
  ADD CONSTRAINT `multimedia_administrador_ibfk_2` FOREIGN KEY (`Id_administrador`) REFERENCES `administrador` (`Id_usuario`);

--
-- Filtros para la tabla `multimedia_eventos`
--
ALTER TABLE `multimedia_eventos`
  ADD CONSTRAINT `multimedia_eventos_ibfk_1` FOREIGN KEY (`Id_multimedia`) REFERENCES `multimedia` (`Id`),
  ADD CONSTRAINT `multimedia_eventos_ibfk_2` FOREIGN KEY (`Id_eventos`) REFERENCES `eventos` (`Id`);

--
-- Filtros para la tabla `multimedia_evento_histórico`
--
ALTER TABLE `multimedia_evento_histórico`
  ADD CONSTRAINT `multimedia_evento_histórico_ibfk_1` FOREIGN KEY (`Id_multimedia`) REFERENCES `multimedia` (`Id`),
  ADD CONSTRAINT `multimedia_evento_histórico_ibfk_2` FOREIGN KEY (`Id_evento_historico`) REFERENCES `evento_histórico` (`Id`);

--
-- Filtros para la tabla `multimedia_noticia`
--
ALTER TABLE `multimedia_noticia`
  ADD CONSTRAINT `multimedia_noticia_ibfk_1` FOREIGN KEY (`Id_multimedia`) REFERENCES `multimedia` (`Id`),
  ADD CONSTRAINT `multimedia_noticia_ibfk_2` FOREIGN KEY (`Id_noticia`) REFERENCES `noticia` (`Id`);

--
-- Filtros para la tabla `multimedia_profesor_investigador`
--
ALTER TABLE `multimedia_profesor_investigador`
  ADD CONSTRAINT `multimedia_profesor_investigador_ibfk_1` FOREIGN KEY (`Id_multimedia`) REFERENCES `multimedia` (`Id`),
  ADD CONSTRAINT `multimedia_profesor_investigador_ibfk_2` FOREIGN KEY (`Id_profesor_investigador`) REFERENCES `profesor_investigador` (`Id_usuario`);

--
-- Filtros para la tabla `multimedia_proyecto`
--
ALTER TABLE `multimedia_proyecto`
  ADD CONSTRAINT `multimedia_proyecto_ibfk_1` FOREIGN KEY (`Id_multimedia`) REFERENCES `multimedia` (`Id`),
  ADD CONSTRAINT `multimedia_proyecto_ibfk_2` FOREIGN KEY (`Id_proyecto`) REFERENCES `proyecto` (`Id`);

--
-- Filtros para la tabla `posisión_trabajo`
--
ALTER TABLE `posisión_trabajo`
  ADD CONSTRAINT `posisión_trabajo_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id`);

--
-- Filtros para la tabla `profesor_investigador`
--
ALTER TABLE `profesor_investigador`
  ADD CONSTRAINT `profesor_investigador_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id`);

--
-- Filtros para la tabla `profesor_investigador_área`
--
ALTER TABLE `profesor_investigador_área`
  ADD CONSTRAINT `profesor_investigador_área_ibfk_1` FOREIGN KEY (`Id_profesor_investigador`) REFERENCES `profesor_investigador` (`Id_usuario`),
  ADD CONSTRAINT `profesor_investigador_área_ibfk_2` FOREIGN KEY (`Id_área_laboratorio`) REFERENCES `área` (`Id`);

--
-- Filtros para la tabla `profesor_invg_cuerpo_acad`
--
ALTER TABLE `profesor_invg_cuerpo_acad`
  ADD CONSTRAINT `profesor_invg_cuerpo_acad_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `profesor_investigador` (`Id_usuario`),
  ADD CONSTRAINT `profesor_invg_cuerpo_acad_ibfk_2` FOREIGN KEY (`Id_cuerpo_acad`) REFERENCES `cuerpo_académico` (`Id`);

--
-- Filtros para la tabla `profesor_invg_lineas_invg`
--
ALTER TABLE `profesor_invg_lineas_invg`
  ADD CONSTRAINT `profesor_invg_lineas_invg_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `profesor_investigador` (`Id_usuario`);

--
-- Filtros para la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD CONSTRAINT `proyecto_ibfk_1` FOREIGN KEY (`Id_profesor_invg`) REFERENCES `profesor_investigador` (`Id_usuario`),
  ADD CONSTRAINT `proyecto_ibfk_2` FOREIGN KEY (`Estatus`) REFERENCES `proyecto_estado` (`Id`);

--
-- Filtros para la tabla `publicación_coautor`
--
ALTER TABLE `publicación_coautor`
  ADD CONSTRAINT `publicación_coautor_ibfk_1` FOREIGN KEY (`Id_publicación`) REFERENCES `publicación` (`Id`),
  ADD CONSTRAINT `publicación_coautor_ibfk_2` FOREIGN KEY (`Id_coautor`) REFERENCES `coautor` (`Id`);

--
-- Filtros para la tabla `usuario_publicación`
--
ALTER TABLE `usuario_publicación`
  ADD CONSTRAINT `usuario_publicación_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id`),
  ADD CONSTRAINT `usuario_publicación_ibfk_2` FOREIGN KEY (`Id_publicación`) REFERENCES `publicación` (`Id`);

--
-- Filtros para la tabla `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `video_ibfk_1` FOREIGN KEY (`Id_multimedia`) REFERENCES `multimedia` (`Id`);

--
-- Filtros para la tabla `área`
--
ALTER TABLE `área`
  ADD CONSTRAINT `área_ibfk_1` FOREIGN KEY (`Id_laboratorio`) REFERENCES `laboratorio` (`Id`),
  ADD CONSTRAINT `área_ibfk_2` FOREIGN KEY (`Id_pi_encargado`) REFERENCES `profesor_investigador` (`Id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
