-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2022 a las 15:33:42
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
-- Base de datos: `labti2`
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
-- Estructura de tabla para la tabla `administrador_evento_historico`
--

CREATE TABLE `administrador_evento_historico` (
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
(15, NULL),
(16, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_estancia_profesional`
--

CREATE TABLE `alumno_estancia_profesional` (
  `Id_usuario` int(11) NOT NULL,
  `Semestre` int(11) DEFAULT NULL,
  `Carrera` int(11) DEFAULT NULL,
  `Institucion_procedencia` int(11) DEFAULT NULL,
  `Id_profesor_invg` int(11) DEFAULT NULL,
  `Id_proyecto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumno_estancia_profesional`
--

INSERT INTO `alumno_estancia_profesional` (`Id_usuario`, `Semestre`, `Carrera`, `Institucion_procedencia`, `Id_profesor_invg`, `Id_proyecto`) VALUES
(13, NULL, NULL, NULL, NULL, NULL),
(14, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_servicio_social`
--

CREATE TABLE `alumno_servicio_social` (
  `Id_usuario` int(11) NOT NULL,
  `Semestre` int(11) DEFAULT NULL,
  `Carrera` int(11) DEFAULT NULL,
  `Institucion_procedencia` int(11) DEFAULT NULL,
  `Id_profesor_invg` int(11) DEFAULT NULL,
  `Id_proyecto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumno_servicio_social`
--

INSERT INTO `alumno_servicio_social` (`Id_usuario`, `Semestre`, `Carrera`, `Institucion_procedencia`, `Id_profesor_invg`, `Id_proyecto`) VALUES
(11, NULL, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL, NULL);

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
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Acronimo` varchar(255) NOT NULL,
  `Objetivo` text DEFAULT NULL,
  `Id_laboratorio` int(11) DEFAULT NULL,
  `Id_pi_encargado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`Id`, `Nombre`, `Acronimo`, `Objetivo`, `Id_laboratorio`, `Id_pi_encargado`) VALUES
(1, 'Sitemas Inteligentes y distriguidos', 'SIyD', 'Los objetivos de las empresas son los pasos definidos para alcanzar los resultados que un negocio espera. Estos objetivos deben ser medibles para que sea posible evaluar su desempeño y, así, tomar las medidas necesarias para redefinir las estrategias si se requiere.', 1, 1),
(2, 'Electronica', 'EL', 'Los objetivos de las empresas son los pasos definidos para alcanzar los resultados que un negocio espera. Estos objetivos deben ser medibles para que sea posible evaluar su desempeño y, así, tomar las medidas necesarias para redefinir las estrategias si se requiere.', 1, 2),
(3, 'Investigación y desarrollo de software', 'IDSoft', 'Los objetivos de las empresas son los pasos definidos para alcanzar los resultados que un negocio espera. Estos objetivos deben ser medibles para que sea posible evaluar su desempeño y, así, tomar las medidas necesarias para redefinir las estrategias si se requiere.', 1, 3),
(4, 'Esperiencia de usuario UX', 'EU-UX', 'Los objetivos de las empresas son los pasos definidos para alcanzar los resultados que un negocio espera. Estos objetivos deben ser medibles para que sea posible evaluar su desempeño y, así, tomar las medidas necesarias para redefinir las estrategias si se requiere.', 1, 4),
(5, 'Redes', 'Redes', 'Los objetivos de las empresas son los pasos definidos para alcanzar los resultados que un negocio espera. Estos objetivos deben ser medibles para que sea posible evaluar su desempeño y, así, tomar las medidas necesarias para redefinir las estrategias si se requiere.', 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `Id_publicacion` int(11) NOT NULL,
  `ISNN` varchar(255) NOT NULL,
  `No_pag` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`Id_publicacion`, `ISNN`, `No_pag`) VALUES
(1, 'e332rt3tgss', NULL),
(2, '3r3efvd2e2', NULL),
(3, 'wdwd34rfxr4', NULL),
(4, '3rc3r4t3', NULL),
(5, '3cr4t3t435t3y', NULL),
(6, 'y3c54ty', NULL),
(7, 'c2tc54t1t', NULL),
(8, 'cg2tc2t5', NULL),
(9, 'c2tt134', NULL),
(10, '2ct5ty5y6vyt4cgt', NULL),
(11, '243ct5t5', NULL),
(12, 'c2t5t255t5', NULL),
(14, 'c2ttt5', NULL),
(16, 'c2rr4rctr', NULL),
(17, '2crt533', NULL),
(18, 'c523tt52', NULL),
(19, 'c25t5t2', NULL),
(20, 'c24t5', NULL),
(21, '978-3-659-03977-5\r\n', NULL),
(22, 'ct52ty45t4', NULL),
(23, '234yhcgtvefwn78', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cap_libro`
--

CREATE TABLE `cap_libro` (
  `Id_publicacion` int(11) NOT NULL,
  `ISBN` varchar(255) NOT NULL,
  `DOI` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cap_libro`
--

INSERT INTO `cap_libro` (`Id_publicacion`, `ISBN`, `DOI`) VALUES
(15, '9.78E+12\r\n', 'dwdw');

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
  `Institucion_procedencia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `colaborador_externo`
--

INSERT INTO `colaborador_externo` (`Id_usuario`, `Grado_actual`, `Institucion_procedencia`) VALUES
(9, 3, NULL),
(10, 4, NULL);

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
-- Estructura de tabla para la tabla `cuerpo_academico`
--

CREATE TABLE `cuerpo_academico` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `PRODEP` varchar(255) NOT NULL,
  `Estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cuerpo_academico`
--

INSERT INTO `cuerpo_academico` (`Id`, `Nombre`, `PRODEP`, `Estado`) VALUES
(7, 'Cuerpo académico 01', '2e8y3u9jdwkdns', 1),
(8, 'Cuerpo académico 02', '2e8y3u9jdwkdns', 2),
(9, 'Cuerpo académico 03', '2e8y3u9jdwkdns', 1),
(10, 'Cuerpo académico 04', '2e8y3u9jdwkdns', 2),
(11, 'Cuerpo académico 05', '2e8y3u9jdwkdns', 1),
(12, 'Cuerpo académico 06', '2e8y3u9jdwkdns', 1);

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
(7, 1),
(7, 7),
(8, 2),
(8, 8),
(9, 3),
(9, 9),
(10, 4),
(10, 10),
(11, 5),
(12, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distincion_academica`
--

CREATE TABLE `distincion_academica` (
  `Id` int(11) NOT NULL,
  `Distincion` varchar(255) NOT NULL,
  `Institucion` varchar(255) NOT NULL,
  `Fecha_inicio` date DEFAULT NULL,
  `Fecha_fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distincion_academica_usuario`
--

CREATE TABLE `distincion_academica_usuario` (
  `Id_formacion_academica` int(11) NOT NULL,
  `Id_usuario` int(11) NOT NULL
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
  `Descripcion` mediumtext NOT NULL,
  `Telefono` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Hipervinculo` varchar(255) NOT NULL,
  `Fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_historico`
--

CREATE TABLE `evento_historico` (
  `Id` int(11) NOT NULL,
  `Nombre_evento` varchar(255) NOT NULL,
  `Descripcion` mediumtext NOT NULL,
  `Fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia_laboral`
--

CREATE TABLE `experiencia_laboral` (
  `Id` int(11) NOT NULL,
  `Puesto` varchar(255) NOT NULL,
  `Institucion` varchar(255) NOT NULL,
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
-- Estructura de tabla para la tabla `formacion_academica`
--

CREATE TABLE `formacion_academica` (
  `Id` int(11) NOT NULL,
  `Grado` varchar(255) NOT NULL,
  `Area_especialidad` varchar(255) NOT NULL,
  `Institucion` int(11) DEFAULT NULL,
  `Fecha_inicio` date NOT NULL,
  `Fecha_fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `formacion_academica`
--

INSERT INTO `formacion_academica` (`Id`, `Grado`, `Area_especialidad`, `Institucion`, `Fecha_inicio`, `Fecha_fin`) VALUES
(1, 'Doctor en Ciencias Fisiológicas', 'Neurofisiología Integrativa, Bioelectrónica', NULL, '0000-00-00', '0000-00-00'),
(2, 'M. en C. en Ingeniería Electrónica', 'Sistemas Digitales', NULL, '0000-00-00', '0000-00-00'),
(3, 'Lic. en Ciencias de la Electrónica', 'Sistemas Digitales y Sistemas de Control', NULL, '0000-00-00', '0000-00-00'),
(4, 'Maestro en Ciencias con Especialidad en Ingeniería Eléctrica', '', NULL, '0000-00-00', '0000-00-00'),
(5, 'Ingeniero en Sistemas Computacionales', '', NULL, '0000-00-00', '0000-00-00'),
(6, 'Doctorado en Ciencias de la Computación', '', NULL, '0000-00-00', '0000-00-00'),
(7, 'Maestría en Ciencias de la Computación', '', NULL, '0000-00-00', '0000-00-00'),
(8, 'Licenciatura en Ciencias de la Computación', '', NULL, '0000-00-00', '0000-00-00'),
(9, 'Doctor en ciencia con la especialidad en óptica', '', NULL, '0000-00-00', '0000-00-00'),
(10, 'Maestro en ciencias con la especialidad en óptica ', '', NULL, '0000-00-00', '0000-00-00'),
(11, 'Ingeniero en electrónica y comunicaciones ', '', NULL, '0000-00-00', '0000-00-00'),
(12, 'Maestría en Ciencias de la Computación', '', NULL, '2006-10-02', '2008-05-04'),
(13, 'Licenciatura en Ciencias de la Computación', '', NULL, '1997-09-05', '2003-11-28'),
(14, 'Maestría en Ciencias de la Computación', '', NULL, '0000-00-00', '2008-10-05'),
(15, 'Ingeniería en Ciencias de la Computación', '', NULL, '0000-00-00', '2006-09-04'),
(16, 'Maestría en Ciencias Computacionales ', '', NULL, '2005-10-03', '2008-11-08'),
(17, 'Ingeniería en Computación ', '', NULL, '1997-10-03', '2002-06-25'),
(18, 'Maestría en Tecnologías de Información ', '', NULL, '2009-01-07', '2010-12-20'),
(19, 'Ingeniero en Computación ', '', NULL, '1999-10-04', '2004-06-29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formacion_acad_usuario`
--

CREATE TABLE `formacion_acad_usuario` (
  `Id_formacion_academica` int(11) NOT NULL,
  `Id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `form_acad_grado`
--

CREATE TABLE `form_acad_grado` (
  `Id` int(11) NOT NULL,
  `Grado` varchar(255) NOT NULL,
  `Abreviarura` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `form_acad_grado`
--

INSERT INTO `form_acad_grado` (`Id`, `Grado`, `Abreviarura`) VALUES
(1, 'Licenciado', 'Lido.'),
(2, 'Licenciada', 'Lida.'),
(3, 'Doctor', 'Dr.'),
(4, 'Doctora', 'Dra.'),
(5, 'Maestra', 'Mtra'),
(6, 'Maestro', 'Mtro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE `imagen` (
  `Id_multimedia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informacion_personal`
--

CREATE TABLE `informacion_personal` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Apellido` varchar(255) NOT NULL,
  `Fotografia` int(11) DEFAULT NULL,
  `Telefono` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `informacion_personal`
--

INSERT INTO `informacion_personal` (`Id`, `Nombre`, `Apellido`, `Fotografia`, `Telefono`, `Email`, `Id_usuario`) VALUES
(9, 'ZULMA JANET', 'HERNANDEZ PAXTIAN', 1, '2342345678', 'jpaxtian@unca.edu.mx', 1),
(10, 'MIGUEL ANGEL', 'SÁNCHEZ ACEVEDO', 2, '2342345678', 'masanchez@unca.edu.mx', 2),
(11, 'CARMEN CARLOTA', 'MARTÍNEZ GIL', 3, '2342345678', 'cmartinez@unca.edu.mx', 3),
(12, 'MARÍA DEL ROSARIO', 'PERALTA CALVO', 4, '2342345678', 'mperalta@unca.edu.mx', 4),
(13, 'JOSÉ ALBERTO', 'MÁRQUEZ DOMINGUEZ', 5, '2342345678', 'albertomarquez@unca.edu.mx', 5),
(14, 'BEATRIZ ADRIANA', 'SABINO MOXO', 6, '2342345678', 'beatriz_sabino@unca.edu.mx', 6),
(15, 'ISRAEL JESÚS', 'ORLANDO GUERRERO', 7, '2342345678', 'iorlando@unca.edu.mx', 7),
(16, 'CARLOS MANUEL', 'SANTIBÁÑEZ CAMARILLO', 8, '2342345678', 'carlosmsc@unca.edu.mx', 8),
(17, 'Colavorador 01 ', 'Colavorador apellido', 9, '234234567', 'Colaborador1@col.edu.mx', 9),
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
  `Telefono` varchar(255) NOT NULL,
  `Direccion` varchar(255) NOT NULL,
  `Mision` text DEFAULT NULL,
  `Vision` text DEFAULT NULL,
  `Definicion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `laboratorio`
--

INSERT INTO `laboratorio` (`Id`, `Nombre`, `Email`, `Telefono`, `Direccion`, `Mision`, `Vision`, `Definicion`) VALUES
(1, 'Laboratorio de Tecnologias de la infoemacion', 'escolares@unca.edu.mx', '(236) 3 72 07 47', 'Carr. Teotitlán-San Antonio Nanahuatipan km 1.7 CP. 68540 Teotitlán de Flores Magon, Oaxaca.', 'La misión empresarial es el conjunto de objetivos generales y principios de trabajos para avanzar en una organización, que se expresa por medio de una declaración de la misión, que resume la misión empresarial en una sola frase, con el objetivo de comunicar la misión a todos los miembros de la organización.\r\n\r\nLos miembros de la organización son comúnmente conocidos como stakeholder o accionistas en la bibliografía estratégica, y comprende a los empleados, dueños, inversionistas o interesados, proveedores, clientes y a la comunidad.\r\n\r\nLa misión empresarial tiene sentido en tanto sea conocida por los stakeholders, pues proporciona un marco objetivo, sin ambigüedades ni malentendidos, para entender qué esperar de la compañía, y qué espera la compañía de cada uno.\r\n\r\nLa declaración de la misión es una forma muy difundida y efectiva de comunicarles la misión. Su efectividad depende de dos aspectos principales:\r\n\r\nEl método de formulación de la declaración, que no deje fuera ningún aspecto esencial de la misión de la compañía\r\nLa síntesis de la declaración a una frase única\r\nEsta última característica es muy importante para una rápida y efectiva difusión y absorción del concepto. La única contra que se le atribuye es la forma antiestética, complicada y antinatural que suele adoptar la frase, que puede producir aversión, por lo menos la primera vez que se lee. A veces las compañías usan su declaración de misión como un eslogan publicitario, pero esto es una desviación del verdadero propósito.', 'La visión permite definir el camino que se debe seguir para alcanzar las metas propuestas. Para ello, debe representar de una forma clara y realista los principios que dan una identidad a esta empresa y responder a cuestiones como: ¿qué se desea lograr?, ¿hacia dónde nos dirigimos?, ¿dónde queremos estar en un futuro?', 'El laboratorio es un lugar dotado de los medios necesarios para realizar investigaciones, experimentos, prácticas y trabajos de carácter científico, tecnológico o técnico; está equipado con instrumentos de medida o equipos con los que se realizan experimentos, investigaciones y prácticas diversas, según la rama de la ciencia a la que se dedique. También puede ser un aula o dependencia de cualquier centro docente. Es obligatorio el uso de equipos de protección como guantes, lentes protectores y bata; así como del seguimiento de unas estrictas normas de seguridad.\n\nSu importancia, sea en investigaciones o a escala industrial y en cualquiera de sus especialidades (química, dimensional, electricidad, biología, etc.), radica en el hecho de que las condiciones ambientales están controladas y normalizadas, de modo que:\n\nSe puede asegurar que no se producen influencias extrañas (a las conocidas o previstas) que alteren el resultado del experimento o medición: control.\nSe garantiza que el experimento o medición es repetible, es decir, cualquier otro laboratorio podría repetir el proceso y obtener el mismo resultado: normalización.\nLa historia de los laboratorios está influida por la historia de la medicina, ya que el hombre, al profundizar acerca de cómo es su organismo, ha requerido el uso de laboratorios cada vez más especializados.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `Id_publicacion` int(11) NOT NULL,
  `ISBN` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`Id_publicacion`, `ISBN`) VALUES
(13, '978-3-659-03977-5\r\n');

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
(10, 'Lineas de Investigacion 10');

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
  `Hipervinculo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_ues`
--

CREATE TABLE `lista_ues` (
  `Id` int(11) NOT NULL,
  `Universidad` varchar(255) NOT NULL,
  `Hipervinculo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multimedia`
--

CREATE TABLE `multimedia` (
  `Id` int(11) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `Nombre_archivo` varchar(255) NOT NULL,
  `Fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `multimedia`
--

INSERT INTO `multimedia` (`Id`, `Titulo`, `Descripcion`, `Nombre_archivo`, `Fecha`) VALUES
(1, 'perfil', 'Imagen de perfil', 'perfil.png', '1000-01-01 00:00:00'),
(2, 'perfil', 'Imagen de perfil', 'perfil.png', '1000-01-01 00:00:00'),
(3, 'perfil', 'Imagen de perfil', 'perfil.png', '1000-01-01 00:00:00'),
(4, 'perfil', 'Imagen de perfil', 'perfil.png', '1000-01-01 00:00:00'),
(5, 'perfil', 'Imagen de perfil', 'perfil.png', '1000-01-01 00:00:00'),
(6, 'perfil', 'Imagen de perfil', 'perfil.png', '1000-01-01 00:00:00'),
(7, 'perfil', 'Imagen de perfil', 'perfil.png', '1000-01-01 00:00:00'),
(8, 'perfil', 'Imagen de perfil', 'perfil.png', '1000-01-01 00:00:00'),
(9, 'perfil', 'Imagen de perfil', 'perfil.png', '1000-01-01 00:00:00'),
(10, 'Perfil', 'Fotografia de perfil', 'perfil.png', '0000-00-00 00:00:00'),
(11, 'Perfil', 'Fotografia de perfil', 'perfil.png', '0000-00-00 00:00:00'),
(12, 'Perfil', 'Fotografia de perfil', 'perfil.png', '0000-00-00 00:00:00'),
(13, 'Perfil', 'Fotografia de perfil', 'perfil.png', '0000-00-00 00:00:00'),
(14, 'Perfil', 'Fotografia de perfil', 'perfil.png', '0000-00-00 00:00:00'),
(15, 'Perfil', 'Fotografia de perfil', 'perfil.png', '0000-00-00 00:00:00'),
(16, 'Perfil', 'Fotografia de perfil', 'perfil.png', '0000-00-00 00:00:00'),
(17, 'Perfil', 'Fotografia de perfil', 'perfil.png', '0000-00-00 00:00:00');

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
-- Estructura de tabla para la tabla `multimedia_evento_historico`
--

CREATE TABLE `multimedia_evento_historico` (
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
-- Estructura de tabla para la tabla `posision_trabajo`
--

CREATE TABLE `posision_trabajo` (
  `Id` int(11) NOT NULL,
  `Puesto` varchar(255) NOT NULL,
  `Institucion` varchar(255) NOT NULL,
  `Id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor_investigador`
--

CREATE TABLE `profesor_investigador` (
  `Id_usuario` int(11) NOT NULL,
  `Grado_actual` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `profesor_investigador`
--

INSERT INTO `profesor_investigador` (`Id_usuario`, `Grado_actual`) VALUES
(1, 3),
(2, 3),
(3, 3),
(7, 3),
(4, 5),
(6, 5),
(5, 6),
(8, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor_investigador_area`
--

CREATE TABLE `profesor_investigador_area` (
  `Id_profesor_investigador` int(11) NOT NULL,
  `Id_area_laboratorio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `profesor_investigador_area`
--

INSERT INTO `profesor_investigador_area` (`Id_profesor_investigador`, `Id_area_laboratorio`) VALUES
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

--
-- Volcado de datos para la tabla `profesor_invg_cuerpo_acad`
--

INSERT INTO `profesor_invg_cuerpo_acad` (`Id_usuario`, `Id_cuerpo_acad`) VALUES
(1, 7),
(2, 8),
(3, 9),
(4, 10),
(5, 11),
(6, 12);

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
  `Problematica` mediumtext NOT NULL,
  `Solucion_propuesta` mediumtext NOT NULL,
  `Objetivos` mediumtext NOT NULL,
  `Resultados` mediumtext NOT NULL,
  `Informe_tecnico` varchar(255) NOT NULL,
  `Id_profesor_invg` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`Id`, `Estatus`, `Nombre_proyecto`, `Problematica`, `Solucion_propuesta`, `Objetivos`, `Resultados`, `Informe_tecnico`, `Id_profesor_invg`) VALUES
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
-- Estructura de tabla para la tabla `publicacion`
--

CREATE TABLE `publicacion` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `publicacion`
--

INSERT INTO `publicacion` (`Id`, `Nombre`) VALUES
(1, 'Microscopio como Lector de Absorbancia con Utilidad en Análisis Clínicos '),
(2, 'Máquina de Visión Accesible para el Proceso de Clasificación de Hortalizas'),
(3, 'Factibilidad Económica y Financiera de las Tioureas Quirales para la Transmisión de Información'),
(4, 'Columnar cactus recognition in aerial images using a deep learning approach'),
(5, 'Indigenous languages learning through serious games based on second language acquisition theories'),
(6, 'Generación automática de mapas de baches a partir de imágenes capturadas mediante dispositivos móviles'),
(7, ' Una Herramienta de Auditoría para un Ambiente de Aprendizaje 3D'),
(8, 'Usability Test on the Development of SIMACAE System'),
(9, 'Computer Systems for Analysis of Nahuatl'),
(10, 'Designing Interaction in a Speaking System for the Blind and Low Vision: Case Study'),
(11, 'La Investigación Dirigida como Estrategia Didáctica Enfocada al Ciclo de Vida del Servlet'),
(12, 'SAMM: System Designed to Help, Motivate and Improve the Experience of Visually Impaired People with Technology'),
(13, 'Recuperación de Información en paralelo sobre documentos bilingües '),
(14, 'Digitalización de mastografías con corrección de luz'),
(15, 'Chapter:	Mobile	Augmented	Reality:	Envolving	Human-Computer Interaction'),
(16, 'Rural Economy Activation Through E-Commerce: Challenges and Opportunities. En Mobile Platforms, Design, and Apps for Social Commerce'),
(17, 'Libro interactivo para la enseñanza de la lengua Mazateca de Huautla de Jiménez, Oaxaca'),
(18, 'Big Data Analysis for Cardiovascular Diseases: Detection, Prevention, and Management: Big Data Analysis for Cardiovascular Diseases: Detection, Prevention, and Management (102-119)'),
(19, '.-The use of the Wigner distribution function for defining the concept of quasi-point source, and the application of this concept to the restoration of defocused images'),
(20, 'Máquina de Visión Accesible para el Proceso de Clasificación de Hortalizas'),
(21, 'Microscopio como Lector de Absorbancia con Utilidad en Análisis Clínicos'),
(22, '“La Investigación Dirigida como Estrategia Didáctica Enfocada al Ciclo de Vida del Servlet”'),
(23, '“Potenciando las competencias mediante la implementación de TI en educación media superior”');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion_coautor`
--

CREATE TABLE `publicacion_coautor` (
  `Id_publicacion` int(11) NOT NULL,
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
  `Contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id`, `Nombre_usuario`, `Contrasena`) VALUES
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
-- Estructura de tabla para la tabla `usuario_publicacion`
--

CREATE TABLE `usuario_publicacion` (
  `Id_usuario` int(11) NOT NULL,
  `Id_publicacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `video`
--

CREATE TABLE `video` (
  `Id_multimedia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indices de la tabla `administrador_evento_historico`
--
ALTER TABLE `administrador_evento_historico`
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
  ADD KEY `Institucion_procedencia` (`Institucion_procedencia`),
  ADD KEY `Id_profesor_invg` (`Id_profesor_invg`),
  ADD KEY `Id_proyecto` (`Id_proyecto`);

--
-- Indices de la tabla `alumno_servicio_social`
--
ALTER TABLE `alumno_servicio_social`
  ADD PRIMARY KEY (`Id_usuario`),
  ADD KEY `Semestre` (`Semestre`),
  ADD KEY `Carrera` (`Carrera`),
  ADD KEY `Institucion_procedencia` (`Institucion_procedencia`),
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
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_laboratorio` (`Id_laboratorio`),
  ADD KEY `Id_pi_encargado` (`Id_pi_encargado`);

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`Id_publicacion`);

--
-- Indices de la tabla `cap_libro`
--
ALTER TABLE `cap_libro`
  ADD PRIMARY KEY (`Id_publicacion`);

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
  ADD KEY `Grado_actual` (`Grado_actual`),
  ADD KEY `Institucion_procedencia` (`Institucion_procedencia`);

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
-- Indices de la tabla `cuerpo_academico`
--
ALTER TABLE `cuerpo_academico`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Estado` (`Estado`);

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
-- Indices de la tabla `distincion_academica`
--
ALTER TABLE `distincion_academica`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `distincion_academica_usuario`
--
ALTER TABLE `distincion_academica_usuario`
  ADD PRIMARY KEY (`Id_formacion_academica`,`Id_usuario`),
  ADD KEY `Id_usuario` (`Id_usuario`);

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
-- Indices de la tabla `evento_historico`
--
ALTER TABLE `evento_historico`
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
-- Indices de la tabla `formacion_academica`
--
ALTER TABLE `formacion_academica`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Institucion` (`Institucion`);

--
-- Indices de la tabla `formacion_acad_usuario`
--
ALTER TABLE `formacion_acad_usuario`
  ADD PRIMARY KEY (`Id_formacion_academica`,`Id_usuario`),
  ADD KEY `Id_usuario` (`Id_usuario`);

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
-- Indices de la tabla `informacion_personal`
--
ALTER TABLE `informacion_personal`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_usuario` (`Id_usuario`),
  ADD KEY `Fotografia` (`Fotografia`);

--
-- Indices de la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`Id_publicacion`);

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
-- Indices de la tabla `multimedia_evento_historico`
--
ALTER TABLE `multimedia_evento_historico`
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
-- Indices de la tabla `posision_trabajo`
--
ALTER TABLE `posision_trabajo`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_usuario` (`Id_usuario`);

--
-- Indices de la tabla `profesor_investigador`
--
ALTER TABLE `profesor_investigador`
  ADD PRIMARY KEY (`Id_usuario`),
  ADD KEY `Grado_actual` (`Grado_actual`);

--
-- Indices de la tabla `profesor_investigador_area`
--
ALTER TABLE `profesor_investigador_area`
  ADD PRIMARY KEY (`Id_profesor_investigador`,`Id_area_laboratorio`),
  ADD KEY `Id_area_laboratorio` (`Id_area_laboratorio`);

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
-- Indices de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `publicacion_coautor`
--
ALTER TABLE `publicacion_coautor`
  ADD PRIMARY KEY (`Id_publicacion`,`Id_coautor`),
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
-- Indices de la tabla `usuario_publicacion`
--
ALTER TABLE `usuario_publicacion`
  ADD PRIMARY KEY (`Id_usuario`,`Id_publicacion`),
  ADD KEY `Id_publicacion` (`Id_publicacion`);

--
-- Indices de la tabla `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`Id_multimedia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT de la tabla `cuerpo_academico`
--
ALTER TABLE `cuerpo_academico`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `cuerpo_acad_estado`
--
ALTER TABLE `cuerpo_acad_estado`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `distincion_academica`
--
ALTER TABLE `distincion_academica`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `evento_historico`
--
ALTER TABLE `evento_historico`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `formacion_academica`
--
ALTER TABLE `formacion_academica`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `form_acad_grado`
--
ALTER TABLE `form_acad_grado`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `informacion_personal`
--
ALTER TABLE `informacion_personal`
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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `noticia`
--
ALTER TABLE `noticia`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posision_trabajo`
--
ALTER TABLE `posision_trabajo`
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
-- AUTO_INCREMENT de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `semestre`
--
ALTER TABLE `semestre`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

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
-- Filtros para la tabla `administrador_evento_historico`
--
ALTER TABLE `administrador_evento_historico`
  ADD CONSTRAINT `administrador_evento_historico_ibfk_1` FOREIGN KEY (`Id_evento_historico`) REFERENCES `evento_historico` (`Id`),
  ADD CONSTRAINT `administrador_evento_historico_ibfk_2` FOREIGN KEY (`Id_administrador`) REFERENCES `administrador` (`Id_usuario`);

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
  ADD CONSTRAINT `alumno_estancia_profesional_ibfk_4` FOREIGN KEY (`Institucion_procedencia`) REFERENCES `lista_ues` (`Id`),
  ADD CONSTRAINT `alumno_estancia_profesional_ibfk_5` FOREIGN KEY (`Id_profesor_invg`) REFERENCES `profesor_investigador` (`Id_usuario`),
  ADD CONSTRAINT `alumno_estancia_profesional_ibfk_6` FOREIGN KEY (`Id_proyecto`) REFERENCES `proyecto` (`Id`);

--
-- Filtros para la tabla `alumno_servicio_social`
--
ALTER TABLE `alumno_servicio_social`
  ADD CONSTRAINT `alumno_servicio_social_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id`),
  ADD CONSTRAINT `alumno_servicio_social_ibfk_2` FOREIGN KEY (`Semestre`) REFERENCES `semestre` (`Id`),
  ADD CONSTRAINT `alumno_servicio_social_ibfk_3` FOREIGN KEY (`Carrera`) REFERENCES `lista_carrera` (`Id`),
  ADD CONSTRAINT `alumno_servicio_social_ibfk_4` FOREIGN KEY (`Institucion_procedencia`) REFERENCES `lista_ues` (`Id`),
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
-- Filtros para la tabla `area`
--
ALTER TABLE `area`
  ADD CONSTRAINT `area_ibfk_1` FOREIGN KEY (`Id_laboratorio`) REFERENCES `laboratorio` (`Id`),
  ADD CONSTRAINT `area_ibfk_2` FOREIGN KEY (`Id_pi_encargado`) REFERENCES `profesor_investigador` (`Id_usuario`);

--
-- Filtros para la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD CONSTRAINT `articulo_ibfk_1` FOREIGN KEY (`Id_publicacion`) REFERENCES `publicacion` (`Id`);

--
-- Filtros para la tabla `cap_libro`
--
ALTER TABLE `cap_libro`
  ADD CONSTRAINT `cap_libro_ibfk_1` FOREIGN KEY (`Id_publicacion`) REFERENCES `publicacion` (`Id`);

--
-- Filtros para la tabla `colaborador_externo`
--
ALTER TABLE `colaborador_externo`
  ADD CONSTRAINT `colaborador_externo_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id`),
  ADD CONSTRAINT `colaborador_externo_ibfk_2` FOREIGN KEY (`Grado_actual`) REFERENCES `form_acad_grado` (`Id`),
  ADD CONSTRAINT `colaborador_externo_ibfk_3` FOREIGN KEY (`Institucion_procedencia`) REFERENCES `lista_emp_ues` (`Id`);

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
-- Filtros para la tabla `cuerpo_academico`
--
ALTER TABLE `cuerpo_academico`
  ADD CONSTRAINT `cuerpo_academico_ibfk_1` FOREIGN KEY (`Estado`) REFERENCES `cuerpo_acad_estado` (`Id`);

--
-- Filtros para la tabla `cuerpo_acad_lineas_invg`
--
ALTER TABLE `cuerpo_acad_lineas_invg`
  ADD CONSTRAINT `cuerpo_acad_lineas_invg_ibfk_1` FOREIGN KEY (`Id_cuerpo_acad`) REFERENCES `cuerpo_academico` (`Id`),
  ADD CONSTRAINT `cuerpo_acad_lineas_invg_ibfk_2` FOREIGN KEY (`Id_lineas_invg`) REFERENCES `lineas_investigacion` (`Id`);

--
-- Filtros para la tabla `distincion_academica_usuario`
--
ALTER TABLE `distincion_academica_usuario`
  ADD CONSTRAINT `distincion_academica_usuario_ibfk_1` FOREIGN KEY (`Id_formacion_academica`) REFERENCES `formacion_academica` (`Id`),
  ADD CONSTRAINT `distincion_academica_usuario_ibfk_2` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id`);

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
-- Filtros para la tabla `formacion_academica`
--
ALTER TABLE `formacion_academica`
  ADD CONSTRAINT `formacion_academica_ibfk_1` FOREIGN KEY (`Institucion`) REFERENCES `lista_ues` (`Id`);

--
-- Filtros para la tabla `formacion_acad_usuario`
--
ALTER TABLE `formacion_acad_usuario`
  ADD CONSTRAINT `formacion_acad_usuario_ibfk_1` FOREIGN KEY (`Id_formacion_academica`) REFERENCES `formacion_academica` (`Id`),
  ADD CONSTRAINT `formacion_acad_usuario_ibfk_2` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id`);

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`Id_multimedia`) REFERENCES `multimedia` (`Id`);

--
-- Filtros para la tabla `informacion_personal`
--
ALTER TABLE `informacion_personal`
  ADD CONSTRAINT `informacion_personal_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id`),
  ADD CONSTRAINT `informacion_personal_ibfk_2` FOREIGN KEY (`Fotografia`) REFERENCES `multimedia` (`Id`);

--
-- Filtros para la tabla `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`Id_publicacion`) REFERENCES `publicacion` (`Id`);

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
-- Filtros para la tabla `multimedia_evento_historico`
--
ALTER TABLE `multimedia_evento_historico`
  ADD CONSTRAINT `multimedia_evento_historico_ibfk_1` FOREIGN KEY (`Id_multimedia`) REFERENCES `multimedia` (`Id`),
  ADD CONSTRAINT `multimedia_evento_historico_ibfk_2` FOREIGN KEY (`Id_evento_historico`) REFERENCES `evento_historico` (`Id`);

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
-- Filtros para la tabla `posision_trabajo`
--
ALTER TABLE `posision_trabajo`
  ADD CONSTRAINT `posision_trabajo_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id`);

--
-- Filtros para la tabla `profesor_investigador`
--
ALTER TABLE `profesor_investigador`
  ADD CONSTRAINT `profesor_investigador_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id`),
  ADD CONSTRAINT `profesor_investigador_ibfk_2` FOREIGN KEY (`Grado_actual`) REFERENCES `form_acad_grado` (`Id`);

--
-- Filtros para la tabla `profesor_investigador_area`
--
ALTER TABLE `profesor_investigador_area`
  ADD CONSTRAINT `profesor_investigador_area_ibfk_1` FOREIGN KEY (`Id_profesor_investigador`) REFERENCES `profesor_investigador` (`Id_usuario`),
  ADD CONSTRAINT `profesor_investigador_area_ibfk_2` FOREIGN KEY (`Id_area_laboratorio`) REFERENCES `area` (`Id`);

--
-- Filtros para la tabla `profesor_invg_cuerpo_acad`
--
ALTER TABLE `profesor_invg_cuerpo_acad`
  ADD CONSTRAINT `profesor_invg_cuerpo_acad_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `profesor_investigador` (`Id_usuario`),
  ADD CONSTRAINT `profesor_invg_cuerpo_acad_ibfk_2` FOREIGN KEY (`Id_cuerpo_acad`) REFERENCES `cuerpo_academico` (`Id`);

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
-- Filtros para la tabla `publicacion_coautor`
--
ALTER TABLE `publicacion_coautor`
  ADD CONSTRAINT `publicacion_coautor_ibfk_1` FOREIGN KEY (`Id_publicacion`) REFERENCES `publicacion` (`Id`),
  ADD CONSTRAINT `publicacion_coautor_ibfk_2` FOREIGN KEY (`Id_coautor`) REFERENCES `coautor` (`Id`);

--
-- Filtros para la tabla `usuario_publicacion`
--
ALTER TABLE `usuario_publicacion`
  ADD CONSTRAINT `usuario_publicacion_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id`),
  ADD CONSTRAINT `usuario_publicacion_ibfk_2` FOREIGN KEY (`Id_publicacion`) REFERENCES `publicacion` (`Id`);

--
-- Filtros para la tabla `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `video_ibfk_1` FOREIGN KEY (`Id_multimedia`) REFERENCES `multimedia` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
