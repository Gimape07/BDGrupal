-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-03-2018 a las 05:06:01
-- Versión del servidor: 5.5.57-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Articulos`
--

CREATE TABLE IF NOT EXISTS `Articulos` (
  `idArticulo` int(20) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`idArticulo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `Articulos`
--

INSERT INTO `Articulos` (`idArticulo`, `titulo`, `fecha`, `descripcion`) VALUES
(1, 'LA PANTALLA DEL SMARTPHONE DEL FUTURO SE ARREGLARÁ SOLA', '0000-00-00 00:00:00', 'Las Maldivas son uno de los paraísos del turismo, uno de esos lugares a los que todo el mundo querría escapar alguna vez. Solo hay que buscar en cualquier herramienta online fotos del lugar para...,,'),
(2, 'EL HOTEL PARADISIACO DE MALDIVAS QUE SE HA LANZADO A RECUPERAR EL PLÁSTICO DEL OCÉANO', '0000-00-00 00:00:00', 'Las Maldivas son uno de los paraísos del turismo, uno de esos lugares a los que todo el mundo querría escapar alguna vez. Solo hay que buscar en cualquier herramienta online fotos del lugar para...,,'),
(3, '¿QUÉ TENGO QUE ESTUDIAR SI QUIERO ESTAR MÁS CERCA DE LA NATURALEZA?', '0000-00-00 00:00:00', 'Las botellas con filtro de carbono son una opción ideal para librarte de olores e impurezas a la hora de beber agua del grifo, sobre todo en lugares donde su ingesta, por la dureza y...,'),
(4, 'BOTELLAS CON FILTRO DE CARBONO PARA EL AGUA: LA SALUD VA CONTIGO.', '0000-00-00 00:00:00', 'Un buen propósito para empezar el año es comenzar un curso nuevo. Si tu motivación es estar más cerca de la naturaleza o hacer algo por su conservación, hay muchos programas formativos que se...,,'),
(5, '¿QUÉ NECESITAS PARA MONTAR TU HUERTO URBANO?', '0000-00-00 00:00:00', 'Montar tu huerto urbano parece una tarea sencilla, pero... ¿qué necesitas exactamente para empezar a montarlo en tu propia casa?,,'),
(6, 'EL COSTE MEDIOAMBIENTAL DEL COMERCIO ELECTRÓNICO', '0000-00-00 00:00:00', 'El comercio electrónico se ha convertido en una parte muy importante de nuestro día a día. Cada vez compramos más online y además lo hacemos cada vez desde más lugares y desde más dispositivos....,,,'),
(7, 'TOALLITAS HÚMEDAS EN EL WC: EL GRAN ENEMIGO DE NUESTRAS TUBERÍAS Y ALCANTARILLADO.', '0000-00-00 00:00:00', 'Años atrás comenzó a popularizarse el uso de las denominadas toallitas húmedas que están causando verdaderos estragos allá por donde son utilizadas por los atascos que producen. Además de generar...,,,'),
(8, 'EMPRESAS RESPONSABLES EN ARGENTINA', '0000-00-00 00:00:00', 'Hay empresas argentinas que no paran de dar pasos en materia de sostenibilidad y medio ambiente. Es el caso de Cervecería y Maltería Quilmes, que en noviembre de 2017 ha inaugurado su primer...,,'),
(9, 'EKO-REC', '0000-00-00 00:00:00', '¿Gafas de sol o ropa procedentes del mar? Esto es posible gracias a la startup EKO-REC, que lidera varios proyectos en los que se utilizan redes de pesca para crear nuevos productos.,,'),
(10, 'CÓMO LA ROPA NO USADA DE H&M SE CONVIERTE EN ENERGÍA', '0000-00-00 00:00:00', '¿Qué ocurre con la ropa que las grandes cadenas de la industria de la moda producen pero que, por unas razones o por otras, no puede llegar al mercado? Por unas razones o por otras, no toda la ropa...'),
(11, 'CÓMO LA INDUSTRIA DE LA MODA EN ESPAÑA SE ESTÁ VOLVIENDO SOSTENIBLE', '0000-00-00 00:00:00', 'A primera vista es probable que cuando pensemos en contaminación, en experiencias poco respetuosas con el entorno o en escasa sostenibilidad, pensemos en muchos sectores y en muchas actividades...,'),
(12, 'UN CIERRE DE 2017 POCO PROMETEDOR EN TÉRMINOS DE POLUCIÓN', '0000-00-00 00:00:00', 'Muy pocos eran conscientes, mientras se tomaban las uvas con las que cerraban 2016 y daban la bienvenida a 2017, de que acababan de cerrar un año de cifras record en lo que a contaminación se...,'),
(13, 'SUIZA PRUEBA CON LA EXTRACCIÓN DE CO2 DEL AIRE', '0000-00-00 00:00:00', 'La concentración de CO2 en la atmósfera está alcanzando unos niveles muy preocupantes que ponen en riesgo el objetivo de calentamiento global establecido en las cumbres del Clima. Es necesario...,,,'),
(14, 'REFORESTANDO LA AMAZONIA CON 73 MILLONES DE ÁRBOLES', '0000-00-00 00:00:00', 'Es una de esas afirmaciones que se podría decir que ya son frases hechas: el Amazonas es el pulmón verde de la tierra, una de las áreas...,,'),
(15, 'LA SOSTENIBILIDAD DEBE SER EL OBJETIVO FINAL DE CUALQUIER EMPRESA', '0000-00-00 00:00:00', 'Nuestro mundo está cambiando muy rápidamente. Antes de 2050 más de 2.500 millones de personas vivirán en ciudades y solo con el crecimiento de la industrialización, la demanda de energía subirá un...,,'),
(16, 'EL PLANETA ACABA DE BATIR EL RECORD DE CONCENTRACIÓN DE DIÓXIDO DE CARBONO EN LA ATMÓSFERA', '0000-00-00 00:00:00', 'Una de esas cosas que suelen gustar a todo el mundo y que se convierten en curiosidades interesan son los records. Lograr cifras nunca conseguidas antes suele dar...,,,'),
(17, 'SISTEMAS DE MOVILIDAD DE EMPRESAS', '0000-00-00 00:00:00', 'Actualmente, las empresas pueden adoptar sistemas de movilidad más sostenibles facilitados por las soluciones que ofrecen startups de carsharing, motos eléctricas y otras basadas en la economía...,'),
(18, 'ARGENTINA: HACIA EL COMPROMISO DEL 20% DE RENOVABLES PARA 2025', '0000-00-00 00:00:00', 'Las energías renovables cuentan con un gran potencial para las inversiones en Argentina que avanza como uno de los países más atractivos de la...,,,'),
(19, '¿CUÁLES SON LOS PROTOCOLOS EN CASO DE CONTAMINACIÓN?', '0000-00-00 00:00:00', 'Parece una noticia casi imposible y, sin embargo, es la que ha protagonizado los titulares en el arranque del otoño. La España Verde, el norte...'),
(20, 'NORMATIVA EURO VI', '0000-00-00 00:00:00', 'La contaminación atmosférica es un serio problema, que se convierte en una preocupación máxima para las autoridades de ciertas...,,');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `BannerE`
--

CREATE TABLE IF NOT EXISTS `BannerE` (
  `rfc` varchar(20) NOT NULL,
  `idEvento` int(20) NOT NULL,
  PRIMARY KEY (`rfc`,`idEvento`),
  KEY `rfc` (`rfc`),
  KEY `idEvento` (`idEvento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `BannerE`
--

INSERT INTO `BannerE` (`rfc`, `idEvento`) VALUES
('CASJ830601NS7', 7),
('MASL7408081R1', 21),
('MOBP88120292A', 22),
('PEGR620311G98', 23),
('AOCT760409D30', 46),
('MOLE6009226I7', 88),
('PACA631101FA9', 114),
('CUDE700820P27', 135),
('CAMC840419KF7', 154),
('AUSN6409083P3', 167),
('EISH580111FL9', 180),
('GULB820902R5A', 203),
('PEGR620211G98', 228),
('PEGF630518KC6', 230),
('OAVM730208D52', 234),
('PASJ660308IE9', 234),
('CAGJ680431787', 259),
('AAGA631005CTA', 289),
('RATL621008LC1', 290),
('MAGE750817646', 338),
('LOLN720902VC3', 346),
('AAOC6707165W5', 400),
('DEBG700510MK3', 403),
('GOMO6005084U9', 407),
('MAMX780102TN0', 449);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Banner_cv`
--

CREATE TABLE IF NOT EXISTS `Banner_cv` (
  `idCV` int(20) NOT NULL AUTO_INCREMENT,
  `compra_venta` varchar(10) NOT NULL,
  `datosContacto` text NOT NULL,
  `material` varchar(20) NOT NULL,
  `enlaceImagen` varchar(50) NOT NULL,
  PRIMARY KEY (`idCV`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `Banner_cv`
--

INSERT INTO `Banner_cv` (`idCV`, `compra_venta`, `datosContacto`, `material`, `enlaceImagen`) VALUES
(1, 'compra', 'telefono: (+52) 984 206 4100 fax: (+52) 984 206 4110 email: reservas.bbdiamond@bluebayresorts.com', 'PET', '/localhost/img/img1'),
(2, 'venta', 'telefono: (+52) 984 877 4500 fax: (+52) 984 877 4512 email: reservas2.bbge@bluebayresorts.com', 'Vidrio', '/localhost/img/img2'),
(3, 'compra', 'telefono: (+34) 952 811 517 fax: (+34) 952 814 180  email: reservas.bbbanus@bluebayresorts.com', 'Papel', '/localhost/img/img3'),
(4, 'venta', 'telefono: (+507) 240 4444', 'Carton', '/localhost/img/img4'),
(5, 'compra', 'telefono: (+34) 91 452 05 29 fax: (+34) 914 42 53 20', 'Aluminio', '/localhost/img/img5'),
(6, 'venta', 'telefono: (+39) 075 517 2048', 'PET', '/localhost/img/img6'),
(7, 'compra', 'telefono: (+591) 2 5210671', 'Vidrio', '/localhost/img/img7'),
(8, 'venta', 'telefono: (+971) 4 395 8888', 'Papel', '/localhost/img/img8'),
(9, 'compra', 'telefono: (+971) 4 2944464 fax: (+971) 4 2944426', 'Carton', '/localhost/img/img9'),
(10, 'venta', 'telefono: (+34) 971 824 090 fax: (+34) 971 824 159 email: jrecep.belsana@bellevue-resorts.com', 'Aluminio', '/localhost/img/img10'),
(11, 'compra', 'telefono: (+1) 809 412 2001 fax: (+1) 809 412 0687 email: reservas.dominicanbay@bellevue-resorts.com', 'PET', '/localhost/img/img11'),
(12, 'venta', 'telefono: (+34) 971 892 000 fax: (+34) 971 892 173 email: jrecep.lagomonte@bellevue-resorts.com', 'Vidrio', '/localhost/img/img12'),
(13, 'compra', 'telefono: (+34) 928 514 940 fax: (+34) 928 514 949 email: booking.aquarius@grupobluebay.com', 'Papel', '/localhost/img/img13'),
(14, 'venta', 'telefono: (+33) 04 67 29 00 00', 'Carton', '/localhost/img/img14'),
(15, 'compra', 'telefono: (+33) 04 93 06 50 00', 'PET', '/localhost/img/img15'),
(16, 'venta', 'telefono: (+961) 4 555 555', 'Vidrio', '/localhost/img/img16'),
(17, 'compra', 'telefono: (+212) 5393 33111', 'Papel', '/localhost/img/img17'),
(18, 'venta', 'telefono: (+216) 72 244 999 fax: (+216) 72 244 966', 'Carton', '/localhost/img/img18'),
(19, 'compra', 'telefono: (+34) 971 892 600 fax: (+34) 971 892 800 email: reservas.bellevue@bellevue-resorts.com', 'PET', '/localhost/img/img19'),
(20, 'compra', 'telefono: (+1) 809 412 2001 fax: (+1) 809 412 0687 email: reservas.dominicanbay@bellevue-resorts.com', 'Vidrio', '/localhost/img/img20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Capsula`
--

CREATE TABLE IF NOT EXISTS `Capsula` (
  `idCapsula` int(20) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `enlaceCapsula` varchar(50) NOT NULL,
  PRIMARY KEY (`idCapsula`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9987 ;

--
-- Volcado de datos para la tabla `Capsula`
--

INSERT INTO `Capsula` (`idCapsula`, `titulo`, `descripcion`, `fecha`, `enlaceCapsula`) VALUES
(537, 'Pinturas Ecologicas', '9vgqgv9Mv94LjStc9RweQPTSgFaa3P', '0000-00-00 00:00:00', '/capsula20'),
(853, 'Desarrollo Ambiental y Social', '6H46D2UBxdMnj54ndxVicYjBw4fEmB', '0000-00-00 00:00:00', '/capsula21'),
(2074, 'Formas De Reciclar en tu casa', 'wDLdGpm3dprRUT3S6nwDiFGBcXywhW', '0000-00-00 00:00:00', '/capsula15'),
(2573, 'Como Reciclar Profesionalmente', 'cKGVZHgwy3zEcrdHbC6eUwvcZGYCWu', '0000-00-00 00:00:00', '/capsula8'),
(2860, 'Capañas De Reciclaje', 'TBqQr9jfc27atEk9MzcWcp7RpAhUVz', '0000-00-00 00:00:00', '/capsula23'),
(2861, 'Queretareciclaje', 'rchQhPCUDxXFN4iQWudUKNqAQHtaLc', '0000-00-00 00:00:00', '/capsula25'),
(3023, 'Robots Ecologicos', 'ta98Q34W7Nf6ibhnf97kr5HQycGg6u', '0000-00-00 00:00:00', '/capsula13'),
(3250, 'Reciclaje Escolar', 'vF7WJCbcLwTxRYhSrNSG4gvxJ9yJEt', '0000-00-00 00:00:00', '/capsula3'),
(4187, 'Rescate Del Medio Ambiente', 'EuczPjFQK9GFVUUhfZE4ryjmPcyXin', '0000-00-00 00:00:00', '/capsula17'),
(4318, 'Reciclaje Estatal', '3PvAFfcynqCRzUqeer8Hh4gF7Vh6w4', '0000-00-00 00:00:00', '/capsula2'),
(4446, 'El Proceso Del Reciclaje', 'rcWaeJzYLBeCYkRwJdVSHdAmmjF74V', '0000-00-00 00:00:00', '/capsula9'),
(4566, 'Como Reciclar Baterias', 'atR8hVRCy3cm6h7dXabANht6Ke6beS', '0000-00-00 00:00:00', '/capsula19'),
(4657, 'Arte Reciclado', 'fB7dwgRecvFnkibZpiFXBZnDRAKYWB', '0000-00-00 00:00:00', '/capsula24'),
(5067, 'Beneficios Del Reciclaje', 'GFHbaVPqTHMjqtnHTgiGXCYqzug8eQ', '0000-00-00 00:00:00', '/capsula18'),
(5840, 'Reciclaje Foraneo', 'a3UvJdKpWv47FEaLKwyZ6zTjw6dcCx', '0000-00-00 00:00:00', '/capsula1'),
(6026, 'Cambio Ambiental', 'AYUKQ8TXTARUQ6S98iyFrFdy32g2Cg', '0000-00-00 00:00:00', '/capsula16'),
(6416, 'Huella Ecologica', '2pPzibckdpKx6d4WmqSzHEdazYFxpJ', '0000-00-00 00:00:00', '/capsula10'),
(6683, 'Reciclaje Para El Mundo', 'q6bkq3QUSDDG49pZxEwnWGxkuYQpyx', '0000-00-00 00:00:00', '/capsula5'),
(7340, 'Botes Inteligentes', 'D5DwvFxpSxwrBccdHYVYCwNACiLDRm', '0000-00-00 00:00:00', '/capsula4'),
(7351, 'Reciclaje Ambiental', 'keQugy6mV47JYTaYFKM8KRjjVRpBiV', '0000-00-00 00:00:00', '/capsula6'),
(7786, 'El Albedo En Dias Soleados', 'myR6fk9QKu4KMW5tuNZJAGRniuDkt6', '0000-00-00 00:00:00', '/capsula11'),
(8905, 'La evolucion del pet', 'XRkzGtZbC8NJHWdBXUfjRDPdZqpLzW', '0000-00-00 00:00:00', '/capsula14'),
(9306, 'Como Crear un Robot', '76fWpNw4Gf78v5JarKNARCd3nyqQfA', '0000-00-00 00:00:00', '/capsula12'),
(9521, 'Reciclando Ando', 'y3FpCu9WAbkwDrZET5WgVegBJ6ZHdY', '0000-00-00 00:00:00', '/capsula7'),
(9986, 'Reciclar Objetos', 'fNCAybzVBjXhmH8cQLdtf7j8DfWemN', '0000-00-00 00:00:00', '/capsula22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Certificado`
--

CREATE TABLE IF NOT EXISTS `Certificado` (
  `idCertificado` int(20) NOT NULL AUTO_INCREMENT,
  `rfc` varchar(20) NOT NULL,
  `porcentaje` double(5,2) NOT NULL,
  `Fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idCertificado`),
  KEY `rfc` (`rfc`),
  KEY `rfc_2` (`rfc`),
  KEY `rfc_3` (`rfc`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4708 ;

--
-- Volcado de datos para la tabla `Certificado`
--

INSERT INTO `Certificado` (`idCertificado`, `rfc`, `porcentaje`, `Fecha`) VALUES
(23, 'PASJ660308IE9', 50.00, '0000-00-00 00:00:00'),
(67, 'MAMX780102TN0', 60.00, '0000-00-00 00:00:00'),
(235, 'RATL621008LC1', 10.00, '0000-00-00 00:00:00'),
(373, 'CUDE700820P27', 55.00, '0000-00-00 00:00:00'),
(532, 'AAGA631005CTA', 5.00, '0000-00-00 00:00:00'),
(602, 'MASL7408081R1 ', 55.00, '0000-00-00 00:00:00'),
(758, 'MOLE6009226I7', 20.00, '0000-00-00 00:00:00'),
(821, 'CAMC840419KF7', 35.00, '0000-00-00 00:00:00'),
(922, 'GULB820902R5A', 75.00, '0000-00-00 00:00:00'),
(1285, 'LOLN720902VC3 ', 80.00, '0000-00-00 00:00:00'),
(1320, 'AOCT760409D30', 40.00, '0000-00-00 00:00:00'),
(1504, 'DEBG700510MK3 ', 20.00, '0000-00-00 00:00:00'),
(2455, 'MAGE750817646', 70.00, '0000-00-00 00:00:00'),
(2484, 'MOBP88120292A', 45.00, '0000-00-00 00:00:00'),
(2520, 'CASJ830601NS7 ', 65.00, '0000-00-00 00:00:00'),
(2686, 'AAOC6707165W5', 25.00, '0000-00-00 00:00:00'),
(2804, 'PEGR620311G98 ', 15.00, '0000-00-00 00:00:00'),
(3192, 'PACA631101FA9 ', 35.00, '0000-00-00 00:00:00'),
(3243, 'CAGJ680431787 ', 30.00, '0000-00-00 00:00:00'),
(3835, 'EISH580111FL9 ', 25.00, '0000-00-00 00:00:00'),
(3841, 'PEGF630518KC6 ', 75.00, '0000-00-00 00:00:00'),
(4008, 'OAVM730208D52', 25.00, '0000-00-00 00:00:00'),
(4033, 'AUSN6409083P3 ', 95.00, '0000-00-00 00:00:00'),
(4707, 'GOMO6005084U9', 35.00, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Comentario`
--

CREATE TABLE IF NOT EXISTS `Comentario` (
  `idComentario` int(20) NOT NULL AUTO_INCREMENT,
  `nUser` varchar(20) NOT NULL,
  `idPost` int(20) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idComentario`),
  KEY `nUser` (`nUser`),
  KEY `idPost` (`idPost`),
  KEY `idPost_2` (`idPost`),
  KEY `nUser_2` (`nUser`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13888 ;

--
-- Volcado de datos para la tabla `Comentario`
--

INSERT INTO `Comentario` (`idComentario`, `nUser`, `idPost`, `fecha`) VALUES
(38, 'Misnove', 4, '0000-00-00 00:00:00'),
(88, 'Twile', 9, '0000-00-00 00:00:00'),
(133, 'Awauty', 19, '0000-00-00 00:00:00'),
(145, 'Daise', 24, '0000-00-00 00:00:00'),
(146, 'Sille', 25, '0000-00-00 00:00:00'),
(156, 'Whiorm', 16, '0000-00-00 00:00:00'),
(163, 'Sugae', 15, '0000-00-00 00:00:00'),
(174, 'zinderly', 22, '0000-00-00 00:00:00'),
(301, 'Yorist', 17, '0000-00-00 00:00:00'),
(453, 'SgtPepper', 6, '0000-00-00 00:00:00'),
(513, 'TrassyLiv', 7, '0000-00-00 00:00:00'),
(516, 'Angeie', 2, '0000-00-00 00:00:00'),
(573, 'Anakes', 21, '0000-00-00 00:00:00'),
(821, 'Faair', 3, '0000-00-00 00:00:00'),
(887, 'Foxy', 20, '0000-00-00 00:00:00'),
(889, 'Pead', 13, '0000-00-00 00:00:00'),
(1010, 'paigum', 12, '0000-00-00 00:00:00'),
(1011, 'JRyno', 5, '0000-00-00 00:00:00'),
(1037, 'Winler', 8, '0000-00-00 00:00:00'),
(1088, 'Colly', 18, '0000-00-00 00:00:00'),
(1107, 'mrer', 23, '0000-00-00 00:00:00'),
(1282, 'Felora', 14, '0000-00-00 00:00:00'),
(1359, 'Sanirl', 11, '0000-00-00 00:00:00'),
(1417, 'None', 10, '0000-00-00 00:00:00'),
(13887, 'pedro', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Curso`
--

CREATE TABLE IF NOT EXISTS `Curso` (
  `idCurso` int(20) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `enlaceCurso` varchar(50) NOT NULL,
  PRIMARY KEY (`idCurso`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Volcado de datos para la tabla `Curso`
--

INSERT INTO `Curso` (`idCurso`, `titulo`, `descripcion`, `fecha`, `enlaceCurso`) VALUES
(1, '¿Que es el Reciclaje?', 'G4tKDAimRyghunGE5VfY5abPjgRyXu', '0000-00-00 00:00:00', '/cursos/curso1'),
(2, 'Historia del Reciclaje', 'RZ2pCQxb2r8Z2uYcfnUA89D7fe5VFi', '0000-00-00 00:00:00', '/cursos/curso2'),
(3, '¿Cuales son los Objetivos del Reciclaje?', 'LkWdJHydWi9fuRAiNvRqSjcV4uFBaY', '0000-00-00 00:00:00', '/cursos/curso3'),
(4, '¿Cuales son las características del Reciclaje?', 'HuA9gD3FdREzzZuPpuCAY78FdXTZC4', '0000-00-00 00:00:00', '/cursos/curso4'),
(5, 'Símbolo del Reciclaje', 'vLgDgp6XGjdbLGTniuqTfMfdEqSS6c', '0000-00-00 00:00:00', '/cursos/curso5'),
(6, '¿Cuales son los Colores del Reciclaje?', 'RMfZhtVByCYRzmdj5GjGraqy3yqjZm', '0000-00-00 00:00:00', '/cursos/curso6'),
(7, 'Categoría del Reciclaje', 'SgkRLpETK5Zrcgcqbbq4dbmgP9iSGE', '0000-00-00 00:00:00', '/cursos/curso7'),
(8, '¿Que materiales se pueden Reciclar?', 'G2cPpBJz7DVFHbHbqC34KvuUG8n8v9', '0000-00-00 00:00:00', '/cursos/curso8'),
(9, 'Importancia del Reciclaje', '7ttvHLH6yPWnzGQC4MvzF7idyryDQK', '0000-00-00 00:00:00', '/cursos/curso9'),
(10, 'Razones para reciclar', 'kQzW2JzFaAzZPwtRHWvGpw5GNJt9P4', '0000-00-00 00:00:00', '/cursos/curso10'),
(11, 'Beneficios del Reciclaje', '9ERCwBWUTk5ngMnFDTDXDz6F57KZQB', '0000-00-00 00:00:00', '/cursos/curso11'),
(12, 'Proceso del Reciclaje', 'tSXREFZc2An96C7jVfptuatc7mdK4E', '0000-00-00 00:00:00', '/cursos/curso12'),
(13, 'Estrategia del Reciclaje', 'DLmt5SzQHU4fu2bQEiWLxKKc3rwxjd', '0000-00-00 00:00:00', '/cursos/curso13'),
(14, 'Día del Reciclaje', 'ZHDKMASrfNAbyfFGuyyeJkv9V49uAq', '0000-00-00 00:00:00', '/cursos/curso14'),
(15, 'DIFERENTES TIPOS DE RECICLAJE', 'G3BVySGFMMY7tFNQBkcTef8CHZQt6M', '0000-00-00 00:00:00', '/cursos/curso15'),
(16, 'Fabricamos nuevos productos', 'zvgim9inVHBqiNm2tYaL2F3uEqN3x8', '0000-00-00 00:00:00', '/cursos/curso16'),
(17, 'Preservamos el medio ambiente', 'Y3qB66DBPtmXK92tjdbHhYHCCqScb8', '0000-00-00 00:00:00', '/cursos/curso17'),
(18, 'Ahorramos energía y luchamos contra el cambio', '8e9jS8evy6Dz6qvTEGHArqPpA2397z', '0000-00-00 00:00:00', '/cursos/curso18'),
(19, 'Consumo Responsable', 'LZQxx7dh5rBgCmfqE7CSQUeGRdkbhX', '0000-00-00 00:00:00', '/cursos/curso19'),
(20, 'Habitos Saludables', 'fbPG768W85qMhXieCrzWzHjwbKebpY', '0000-00-00 00:00:00', '/cursos/curso20'),
(21, 'Jardin Vertical', 'GS93ixUe5ttCkibKadHT9X4t8bMdqZ', '0000-00-00 00:00:00', '/cursos/curso21'),
(22, 'Frescura Para Tu Hogar', 'ibMRYvcUJWAaakXJXhaJRXj5U9nWkp', '0000-00-00 00:00:00', '/cursos/curso22'),
(23, 'Manualidades Recicladas', '7YhRM2U8mjn64RVKTuSyerTB72NuZD', '0000-00-00 00:00:00', '/cursos/curso23'),
(24, 'Contaminantes Nocivos', 'RyETcxFJKSYXZAJmiYVg5LqiTvTJFJ', '0000-00-00 00:00:00', '/cursos/curso24'),
(25, 'Mercado De Segunda Mano', 'erLeyR33umJNGCbucqyEBSmiaNMuRW', '0000-00-00 00:00:00', '/cursos/curso25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Estado`
--

CREATE TABLE IF NOT EXISTS `Estado` (
  `idEstado` int(20) NOT NULL AUTO_INCREMENT,
  `idPais` int(20) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`idEstado`),
  KEY `idPais` (`idPais`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Volcado de datos para la tabla `Estado`
--

INSERT INTO `Estado` (`idEstado`, `idPais`, `Nombre`) VALUES
(1, 1, 'Aguascalientes'),
(2, 1, 'Baja California'),
(3, 1, 'Baja California Sur'),
(4, 1, 'Campeche'),
(5, 1, 'Chiapas'),
(6, 1, 'Chihuahua'),
(7, 1, 'Ciudad de México'),
(8, 1, 'Coahuila'),
(9, 1, 'Colima'),
(10, 1, 'Durango'),
(11, 1, 'Guanajuato'),
(12, 1, 'Guerrero'),
(13, 1, 'Hidalgo'),
(14, 1, 'Jalisco'),
(15, 1, 'México'),
(16, 1, 'Michoacán'),
(17, 1, 'Morelos'),
(18, 1, 'Nayarit'),
(19, 1, 'Nuevo León'),
(20, 1, 'Oaxaca'),
(21, 1, 'Puebla'),
(22, 1, 'Querétaro'),
(23, 1, 'Quintana Roo'),
(24, 1, 'San Luis Potosí'),
(25, 1, 'Sinaloa'),
(26, 1, 'Sonora'),
(27, 1, 'Tabasco'),
(28, 1, 'Tamaulipas'),
(29, 1, 'Tlaxcala'),
(30, 1, 'Veracruz'),
(31, 1, 'Yucatán'),
(32, 1, 'Zacatecas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Evento`
--

CREATE TABLE IF NOT EXISTS `Evento` (
  `idEvento` int(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `idEstado` int(20) NOT NULL,
  `codigoPostal` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  PRIMARY KEY (`idEvento`),
  KEY `idEstado` (`idEstado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Volcado de datos para la tabla `Evento`
--

INSERT INTO `Evento` (`idEvento`, `nombre`, `idEstado`, `codigoPostal`, `descripcion`, `direccion`) VALUES
(1, 'ECOCLEAN', 24, 4854, 'nFE5g7GJhiAdWjGDDefQG3mkq8iU6K', 'CALLE AGUSTIN LARA NO. 69-B'),
(2, 'ECOSER', 18, 3361, 'ZRM6irhgf3xVqWccQwwQJcdTMbyRdz', 'AV. INDEPENDENCIA NO. 241'),
(3, 'ECOLIVE', 19, 6864, 'FpXQZJBeJ2gY5n6ep7RnuhaAekFC3C', 'AV. INDEPENDENCIA NO. 779'),
(4, 'ECORES', 7, 7172, 'ZX2S4uNtFjGFnVMKHkjWi2ahUBVHTN', 'AV. 20 DE NOVIEMBRE NO.859-B'),
(5, 'ECOTER', 1, 5895, '8iZec7XvR6Ptrvfe9tfrEvhiuEfT5a', 'CALLE ALDAMA NO 156'),
(6, 'ECOSYS.', 26, 5781, 'BMej6Rk7iwdQKSzFFeTBgwKW5BrqQ5', 'AV. 20 DE NOVIEMBRE NO. 1178'),
(7, 'CHATMANIA', 18, 3674, '5XHmhfRnmFC2vMCQYB3Sj3qPagw5ej', 'MATAMOROS NO 85 ESQ. 20 DE NOVIEMBRE'),
(8, 'CORRESPONDENCIAS ESCOLARES', 13, 3333, '5yeDW8UK7UCAbfZLzMrwnmBjLwhq8P', 'CALLE ALDAMA NO 156'),
(9, 'CONCURSO DE WEBSITES', 3, 4675, 'fJZV2hNzB842ZYV3FNkFVC2GkKE3qE', 'AV. 5 NO. 1186 A'),
(10, 'HOT SPOT VERDE', 7, 5253, 'Tyq3EXrNr8BJZjYBfYak44XmPu49AV', 'CALLE OCAMPO NO. 231'),
(11, 'NOVELA INTERACTIVA', 9, 5565, 'Z5C8cTmvGTnjBmnEavDmCxtSMDPJDN', 'INDEPENDENCIA NO. 569 B'),
(12, 'COPYLEFT_ATTITUDE', 24, 6964, 'Pc8kaqTpSRXAFnhLMQWyaLHKhyPRJe', 'BULEVAR No810'),
(13, 'VIAJE VIRTUAL POR EL MUNDO', 20, 3161, 'KDSEXgcVEqFzrShzGCD2vZHMLxrd3n', 'LIBERTAD NO. 1046'),
(14, 'ACERCARSE…', 32, 6347, 'NR6TYRQxWNUFkrjh9AQW4G7YcLx6nG', 'LAZARO CARDENAS NO.195'),
(15, 'BÚSQUEDA DEL TESORO', 7, 4780, 'GaQnXzdLyXFKpWnPDjtGi75K4Gu4vv', 'BENITO JUAREZ NO 568'),
(16, 'INCENTIVOS FISCALES', 2, 4283, 'ZpDEGzAekvm4tNp27pwcrecidawdEf', 'AV. JESUS CARRANZA NO.765'),
(17, 'ASESORAMIENTO', 17, 3400, 'vYWtNCtrhL67bf7Ay8XBc4GHzekuZF', 'MATAMOROS 127'),
(18, 'LA VUELTA A INTERNET EN 4 DÍAS', 26, 4115, 'iHkRTdt9WktFR47eLnwLykC4KfYLQG', 'AV. INDEPENDENCIA NO. 1029'),
(19, 'TRAE UN AMIGO NO CONECTADO', 32, 3432, 'YefcPr6KXKCDnZ8vQFdNnS6AkrNRQD', 'AV. MANCILLA ESQ. ALDAMA S/N.'),
(20, 'ACCIONES PROMOCIÓNALES', 10, 4966, 'eX6qub5cXXvzgb6dpTuB2NVN42fFH8', 'LIBERTAD 1024'),
(21, 'EL MOVIMIENTO COCA-COLA', 28, 3277, 'mJ2uCztqY7ME3hcLZc7QBVahh8BHxP', 'CENTRO PINERO'),
(22, 'FINANCIACIÓN ESPECIAL', 3, 3404, 'Ww95ePjHDRQQArxtQrSxCxPZ5VUb9Z', 'ADOLFO LOPEZ MATEOS NO 25'),
(23, 'INFANCIA Y JUVENTUD', 21, 4714, '4q9Bc9tewwDaaVrZHHZwp42qt6HGP5', 'INDEPENDENCIA NO 6'),
(24, 'MIRAR AL CRUZAR LA CALLE', 12, 5727, 'UdZPXw9AzGkkge2B6fJ8TGqVirVgwF', 'AV. LIBERTAD NO 1294'),
(25, 'JORNADA E-PUERTAS ABIERTAS', 32, 6068, 'ZNghDKP2ircd7ZJYVBYyXVnLRifpD6', 'CALLE MATAMOROS NO. 40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Institucion`
--

CREATE TABLE IF NOT EXISTS `Institucion` (
  `rfc` varchar(20) NOT NULL,
  `razonSocial` varchar(100) NOT NULL,
  `idEstado` int(20) NOT NULL,
  `codigoPostal` int(11) NOT NULL,
  `enlaceLogo` varchar(50) NOT NULL,
  PRIMARY KEY (`rfc`),
  KEY `idEstado` (`idEstado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Institucion`
--

INSERT INTO `Institucion` (`rfc`, `razonSocial`, `idEstado`, `codigoPostal`, `enlaceLogo`) VALUES
('AAGA631005CTA', 'Aerovías de México S.A de C.V', 19, 7146, '/logos/1.png'),
('AAOC6707165W5', 'WAL-MART DE MÉXICO S.A.B. DE C.V.', 19, 2906, '/logos/2.png'),
('AOCT760409D30', 'Gas Natural México S. A. de C. V.', 9, 5518, '/logos/3.png'),
('AUSN6409083P3', 'Comercializadora Metrogas S. A. de C. V', 18, 3321, '/logos/4.png'),
('CAGJ680431787', 'Computing and Printing México S. de R.L. de C.V', 21, 4878, '/logos/5.png'),
('CAMC840419KF7', 'LATAM Airlines Group S.A. ', 19, 5436, '/logos/6.png'),
('CASJ830601NS7', 'Mabe S.A. de C.V.', 32, 3192, '/logos/7.png'),
('CUDE700820P27', 'Leiser S. de R.L. de C.V', 32, 7167, '/logos/8.png'),
('DEBG700510MK3', 'Deremate.Com de México S. de R.L. de C.V.', 3, 3728, '/logos/9.png'),
('EISH580111FL9', 'Tractebel DGJ S.A. de C.V.', 5, 4146, '/logos/10.png'),
('GOMO6005084U9', 'Natgasmex S.A. de C.V.', 16, 5583, '/logos/11.png'),
('GULB820902R5A', 'Mercadolibre S. de R.L. de C.V.', 4, 7151, '/logos/12.png'),
('LOLN720902VC3', 'Viveica Construcción y Desarrollo S.A. de C.V', 23, 3237, '/logos/13.png'),
('MAGE750817646', 'Viveica S.A. de C.V', 16, 4204, '/logos/14.png'),
('MAMX780102TN0', 'Trans American Airlines S.A.', 8, 4979, '/logos/15.png'),
('MASL7408081R1', 'Nueva Walmart de México S. de R.L. de C.V', 9, 3868, '/logos/16.png'),
('MOBP88120292A', 'Suburbia S. de R.L. de C.V', 10, 2784, '/logos/17.png'),
('MOLE6009226I7', 'Operadora Vips S. de R.L. de C.V.', 15, 4844, '/logos/18.png'),
('OAVM730208D52', 'Coppel S.A. de C.V.', 7, 4751, '/logos/19.png'),
('PACA631101FA9', 'Enlaces Terrestres Nacionales S.A. de C.V', 9, 6216, '/logos/20.png'),
('PASJ660308IE9', 'Alaska Airlines INC. ', 5, 6520, '/logos/21.png'),
('PEGF630518KC6', 'Autobuses de la Piedad S.A. de C.V.', 25, 6991, '/logos/22.png'),
('PEGR620211G98', 'Home Depot México S. de R.L. de C.V', 21, 5700, '/logos/25.png'),
('PEGR620311G98', 'Sago Electronics S.A. de C.V.', 20, 4677, '/logos/23.png'),
('RATL621008LC1', 'Radio Shack de México S.A. de C.V.', 18, 5900, '/logos/24.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Institucion_Evento`
--

CREATE TABLE IF NOT EXISTS `Institucion_Evento` (
  `rfc` varchar(20) NOT NULL,
  `idEvento` int(20) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rfc`,`idEvento`,`fecha`),
  KEY `rfc` (`rfc`),
  KEY `idEvento` (`idEvento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Institucion_Evento`
--

INSERT INTO `Institucion_Evento` (`rfc`, `idEvento`, `fecha`) VALUES
('AAGA631005CTA', 1, '0000-00-00 00:00:00'),
('AAOC6707165W5', 2, '0000-00-00 00:00:00'),
('AOCT760409D30', 3, '0000-00-00 00:00:00'),
('AUSN6409083P3', 4, '0000-00-00 00:00:00'),
('CAGJ680431787', 5, '0000-00-00 00:00:00'),
('CAMC840419KF7', 6, '0000-00-00 00:00:00'),
('CASJ830601NS7', 7, '0000-00-00 00:00:00'),
('CUDE700820P27', 8, '0000-00-00 00:00:00'),
('DEBG700510MK3', 9, '0000-00-00 00:00:00'),
('EISH580111FL9', 10, '0000-00-00 00:00:00'),
('GOMO6005084U9', 11, '0000-00-00 00:00:00'),
('GULB820902R5A', 12, '0000-00-00 00:00:00'),
('LOLN720902VC3', 13, '0000-00-00 00:00:00'),
('MAGE750817646', 14, '0000-00-00 00:00:00'),
('MAMX780102TN0', 15, '0000-00-00 00:00:00'),
('MASL7408081R1', 16, '0000-00-00 00:00:00'),
('MOBP88120292A', 17, '0000-00-00 00:00:00'),
('MOLE6009226I7', 18, '0000-00-00 00:00:00'),
('OAVM730208D52', 19, '0000-00-00 00:00:00'),
('PACA631101FA9', 20, '0000-00-00 00:00:00'),
('PASJ660308IE9', 21, '0000-00-00 00:00:00'),
('PEGF630518KC6 ', 22, '0000-00-00 00:00:00'),
('PEGR620311G98 ', 23, '0000-00-00 00:00:00'),
('RATL621008LC1', 24, '0000-00-00 00:00:00'),
('PEGR620211G98 ', 25, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Institucion_Material`
--

CREATE TABLE IF NOT EXISTS `Institucion_Material` (
  `rfc` varchar(20) NOT NULL,
  `idMaterial` int(20) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cantidad` double(20,3) NOT NULL,
  PRIMARY KEY (`rfc`,`idMaterial`,`fecha`),
  KEY `rfc` (`rfc`),
  KEY `idMaterial` (`idMaterial`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Institucion_Material`
--

INSERT INTO `Institucion_Material` (`rfc`, `idMaterial`, `fecha`, `cantidad`) VALUES
('AAGA631005CTA', 4, '0000-00-00 00:00:00', 3669.000),
('AAOC6707165W5', 5, '0000-00-00 00:00:00', 5632.000),
('AOCT760409D30', 5, '0000-00-00 00:00:00', 4283.000),
('AUSN6409083P3', 4, '0000-00-00 00:00:00', 8198.000),
('CAGJ680431787', 3, '0000-00-00 00:00:00', 4223.000),
('CAMC840419KF7', 2, '0000-00-00 00:00:00', 6524.000),
('CASJ830601NS7', 4, '0000-00-00 00:00:00', 3147.000),
('CUDE700820P27', 4, '0000-00-00 00:00:00', 6420.000),
('DEBG700510MK3', 2, '0000-00-00 00:00:00', 7933.000),
('EISH580111FL9', 5, '0000-00-00 00:00:00', 971.000),
('GOMO6005084U9', 5, '0000-00-00 00:00:00', 5786.000),
('GULB820902R5A', 3, '0000-00-00 00:00:00', 4785.000),
('LOLN720902VC3', 4, '0000-00-00 00:00:00', 3152.000),
('MAGE750817646', 4, '0000-00-00 00:00:00', 7079.000),
('MAMX780102TN0', 1, '0000-00-00 00:00:00', 6799.000),
('MASL7408081R1', 4, '0000-00-00 00:00:00', 1082.000),
('MOBP88120292A', 1, '0000-00-00 00:00:00', 1894.000),
('MOLE6009226I7', 4, '0000-00-00 00:00:00', 7782.000),
('OAVM730208D52', 5, '0000-00-00 00:00:00', 3738.000),
('PACA631101FA9', 2, '0000-00-00 00:00:00', 2473.000),
('PASJ660308IE9', 3, '0000-00-00 00:00:00', 2004.000),
('PEGF630518KC6 ', 2, '0000-00-00 00:00:00', 1742.000),
('PEGR620211G98 ', 3, '0000-00-00 00:00:00', 8399.000),
('PEGR620311G98 ', 2, '0000-00-00 00:00:00', 3586.000),
('RATL621008LC1', 4, '0000-00-00 00:00:00', 8010.000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Material`
--

CREATE TABLE IF NOT EXISTS `Material` (
  `idMaterial` int(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(15) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`idMaterial`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `Material`
--

INSERT INTO `Material` (`idMaterial`, `nombre`, `descripcion`) VALUES
(1, 'PET', 'El tereftalato de polietileno politereftalato de etileno polietilenotereftalato o polietileno tereftalato es un tipo'),
(2, 'Vidrio', 'El vidrio es un material inorgánico duro frágil transparente y amorfo que se encuentra en la naturaleza'),
(3, 'Papel', 'Material que se presenta como una lámina fina hecha con pasta de fibras vegetales'),
(4, 'Carton', 'El cartón es un material formado por varias capas de papel superpuestas a base de fibra virgen o de papel reciclado.'),
(5, 'Aluminio', 'El aluminio es un elemento químico de símbolo Al y número atómico 13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pais`
--

CREATE TABLE IF NOT EXISTS `Pais` (
  `idPais` int(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`idPais`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=198 ;

--
-- Volcado de datos para la tabla `Pais`
--

INSERT INTO `Pais` (`idPais`, `nombre`) VALUES
(1, 'México'),
(2, 'Afganistán'),
(3, 'Albania'),
(4, 'Alemania'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Antigua y Barbuda'),
(8, 'Arabia Saudita'),
(9, 'Argelia'),
(10, 'Argentina'),
(11, 'Armenia'),
(12, 'Australia'),
(13, 'Austria'),
(14, 'Azerbaiyán'),
(15, 'Bahamas'),
(16, 'Bangladés'),
(17, 'Barbados'),
(18, 'Baréin'),
(19, 'Bélgica'),
(20, 'Belice'),
(21, 'Benín'),
(22, 'Bielorrusia'),
(23, 'Birmania'),
(24, 'Bolivia'),
(25, 'Bosnia-Herzegovina'),
(26, 'Botsuana'),
(27, 'Brasil'),
(28, 'Brunéi'),
(29, 'Bulgaria'),
(30, 'Burkina Faso'),
(31, 'Burundi'),
(32, 'Bután'),
(33, 'Cabo Verde'),
(34, 'Camboya'),
(35, 'Camerún'),
(36, 'Canadá'),
(37, 'Catar'),
(38, 'Chad'),
(39, 'Chile'),
(40, 'China'),
(41, 'Chipre'),
(42, 'Colombia'),
(43, 'Comoras'),
(44, 'Congo'),
(45, 'Corea del Norte'),
(46, 'Corea del Sur'),
(47, 'Costa de Marfil'),
(48, 'Costa Rica'),
(49, 'Croacia'),
(50, 'Cuba'),
(51, 'Dinamarca'),
(52, 'Dominica'),
(53, 'Ecuador'),
(54, 'Egipto'),
(55, 'El Salvador'),
(56, 'Emiratos Árabes Unidos'),
(57, 'Eritrea'),
(58, 'Eslovaquia'),
(59, 'Eslovenia'),
(60, 'España'),
(61, 'Estados Unidos'),
(62, 'Estonia'),
(63, 'Etiopía'),
(64, 'Filipinas'),
(65, 'Finlandia'),
(66, 'Fiyi'),
(67, 'Francia'),
(68, 'Gabón'),
(69, 'Gambia'),
(70, 'Georgia'),
(71, 'Ghana'),
(72, 'Granada'),
(73, 'Grecia'),
(74, 'Guatemala'),
(75, 'Guinea'),
(76, 'Guinea Ecuatorial'),
(77, 'Guinea-Bisáu'),
(78, 'Guyana'),
(79, 'Haití'),
(80, 'Honduras'),
(81, 'Hungría'),
(82, 'India'),
(83, 'Indonesia'),
(84, 'Irak'),
(85, 'Irán'),
(86, 'Irlanda'),
(87, 'Islandia'),
(88, 'Islas Marshall'),
(89, 'Islas Salomón'),
(90, 'Israel'),
(91, 'Italia'),
(92, 'Jamaica'),
(93, 'Japón'),
(94, 'Jordania'),
(95, 'Kazajistán'),
(96, 'Kenia'),
(97, 'Kirguistán'),
(98, 'Kiribati'),
(99, 'Kosovo'),
(100, 'Kuwait'),
(101, 'Laos'),
(102, 'Lesoto'),
(103, 'Letonia'),
(104, 'Líbano'),
(105, 'Liberia'),
(106, 'Libia'),
(107, 'Liechtenstein'),
(108, 'Lituania'),
(109, 'Luxemburgo'),
(110, 'Macedonia'),
(111, 'Madagascar'),
(112, 'Malasia'),
(113, 'Malaui'),
(114, 'Maldivas'),
(115, 'Malí'),
(116, 'Malta'),
(117, 'Marruecos'),
(118, 'Mauricio'),
(119, 'Mauritania'),
(120, 'Micronesia'),
(121, 'Moldavia'),
(122, 'Mónaco'),
(123, 'Mongolia'),
(124, 'Montenegro'),
(125, 'Mozambique'),
(126, 'Namibia'),
(127, 'Nauru'),
(128, 'Nepal'),
(129, 'Nicaragua'),
(130, 'Níger'),
(131, 'Nigeria'),
(132, 'Noruega'),
(133, 'Nueva Zelanda'),
(134, 'Omán'),
(135, 'Países Bajos'),
(136, 'Pakistán'),
(137, 'Palaos'),
(138, 'Palestina'),
(139, 'Panamá'),
(140, 'Papúa Nueva Guinea'),
(141, 'Paraguay'),
(142, 'Perú'),
(143, 'Polonia'),
(144, 'Portugal'),
(145, 'Reino Unido'),
(146, 'República Centroafricana'),
(147, 'República Checa'),
(148, 'República Democrática del Congo'),
(149, 'República Dominicana'),
(150, 'Ruanda'),
(151, 'Rumania'),
(152, 'Rusia'),
(153, 'Samoa'),
(154, 'San Cristóbal y Nieves'),
(155, 'San Marino'),
(156, 'San Vicente y las Granadinas'),
(157, 'Santa Lucía'),
(158, 'Santo Tomé y Príncipe'),
(159, 'Senegal'),
(160, 'Serbia'),
(161, 'Seychelles'),
(162, 'Sierra Leona'),
(163, 'Singapur'),
(164, 'Siria'),
(165, 'Somalia'),
(166, 'Sri Lanka'),
(167, 'Suazilandia'),
(168, 'Sudáfrica'),
(169, 'Sudán'),
(170, 'Sudán del Sur'),
(171, 'Suecia'),
(172, 'Suiza'),
(173, 'Surinam'),
(174, 'Tailandia'),
(175, 'Taiwán'),
(176, 'Tanzania'),
(177, 'Tayikistán'),
(178, 'Timor Oriental'),
(179, 'Togo'),
(180, 'Tonga'),
(181, 'Trinidad y Tobago'),
(182, 'Túnez'),
(183, 'Turkmenistán'),
(184, 'Turquía'),
(185, 'Tuvalu'),
(186, 'Ucrania'),
(187, 'Uganda'),
(188, 'Uruguay'),
(189, 'Uzbekistán'),
(190, 'Vanuatu'),
(191, 'Vaticano'),
(192, 'Venezuela'),
(193, 'Vietnam'),
(194, 'Yemen'),
(195, 'Yibuti'),
(196, 'Zambia'),
(197, 'Zimbabue');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Post`
--

CREATE TABLE IF NOT EXISTS `Post` (
  `idPost` int(20) NOT NULL AUTO_INCREMENT,
  `nUser` varchar(20) NOT NULL,
  `fechaInicial` datetime NOT NULL,
  `fechaUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tema` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `enlace` varchar(50) NOT NULL,
  PRIMARY KEY (`idPost`),
  KEY `nUser` (`nUser`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Volcado de datos para la tabla `Post`
--

INSERT INTO `Post` (`idPost`, `nUser`, `fechaInicial`, `fechaUpdate`, `tema`, `descripcion`, `enlace`) VALUES
(1, 'pedro', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'El caballero de la armadura oxidada ', 'Lorem ipsum dolor sit amet consectetuer', '/post1'),
(2, 'Angeie', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'El coronel no tiene quien le escriba ', 'Sed ut perspiciatis unde omnis iste natus error sit', '/post2'),
(3, 'Faair', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Caballo de troya 1 ', 'Li Europan lingues es membres del sam familie. Lor separat existentie', '/post3'),
(4, 'Misnove', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'El diario de ana frank ', 'Muy lejos más allá de las montañas de palabras alejados de los países', '/post4'),
(5, 'JRyno', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'La vuelta al mundo en 80 dias ', 'Y viéndole don Quijote de aquella manera con muestras de tanta', '/post5'),
(6, 'SgtPepper', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'El principe ', 'Reina en mi espíritu una alegría admirable muy parecida a las dulcesa', '/post6'),
(7, 'TrassyLiv', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'El amor en tiempos del colera ', 'Una mañana tras un sueño intranquilo Gregorio', '/post7'),
(8, 'Winler', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'El retrato de dorian gray ', 'Quiere la boca exhausta vid kiwi piña y fugaz jamón. Fabio me exige sin tapujo', '/post8'),
(9, 'Twile', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Azteca', 'Lorem ipsum dolor sit amet consectetuer adipiscing elit. Aenean commodo', '/post9'),
(10, 'None', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'La odisea', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium', '/post10'),
(11, 'Sanirl', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Rebelión en la granja George Orwell ', 'Li Europan lingues es membres del sam familie. Lor separat existentie es un myth', '/post11'),
(12, 'paigum', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Un mundo feliz Aldous Huxley ', 'Muy lejos más allá de las montañas de palabras alejados de los países', '/post12'),
(13, 'Pead', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Mañana en la batalla piensa en mí Javier Marías ', 'Y viéndole don Quijote de aquella manera con muestras de tanta tristeza le dijo', '/post13'),
(14, 'Felora', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'El corazón helado Almudena Grandes ', 'Reina en mi espíritu una alegría admirable muy parecida a las dulces alboradas de la primavera de que gozo aquí con delicia.', '/post14'),
(15, 'Sugae', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Crimen y castigo Fiedor Dostoyevski ', 'Una mañana tras un sueño intranquilo Gregorio Samsa se despertó convertido en un monstruoso', '/post15'),
(16, 'Whiorm', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'La ciudad de los prodigios Eduardo Mendoza ', 'Quiere la boca exhausta vid kiwi piña y fugaz jamón. Fabio me exige sin tapujos', '/post16'),
(17, 'Yorist', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'La conjura de los necios John Kenndy Toole ', 'Lorem ipsum dolor sit amet consectetuer adipiscing elit.', '/post17'),
(18, 'Colly', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Muerte de un viajante Arthur Miller ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem', '/post18'),
(19, 'Awauty', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'La vida es sueño Calderón de la Barca ', 'Li Europan lingues es membres del sam familie. Lor separat existentie es un myth.', '/post19'),
(20, 'Foxy', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'El proceso Franz Kafka ', 'Muy lejos más allá de las montañas de palabras', '/post20'),
(21, 'Anakes', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '"Jane Eyre" de Charlotte Bronte ', 'Y viéndole don Quijote de aquella manera con muestras de tanta tristeza', '/post21'),
(22, 'zinderly', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '"Lo que el viento se llevó" de Margaret Mitchell ', 'Reina en mi espíritu una alegría admirable muy parecida a las dulces alboradas de la primavera', '/post22'),
(23, 'mrer', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '"Orgullo y prejuicio" de Jane Austen ', 'Una mañana tras un sueño intranquilo Gregorio Samsa se despertó convertid', '/post23'),
(24, 'Daise', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '"El árabe" de E. M. Hull ', ' El cadáver de Wamba rey godo de España fue exhumado y trasladado ', '/post24'),
(25, 'Sille', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '"Cartas de una desconocida" de Stefan Zweig ', 'Una mañana tras un sueño intranquilo Gregorio Samsa se despertó convertido en', '/post25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Privilegios`
--

CREATE TABLE IF NOT EXISTS `Privilegios` (
  `idPrivilegios` int(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`idPrivilegios`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Volcado de datos para la tabla `Privilegios`
--

INSERT INTO `Privilegios` (`idPrivilegios`, `nombre`, `descripcion`) VALUES
(1, 'Iniciar Sesión', 'Iniciar Sesión'),
(2, 'Cerrar Sesión', 'Cerrar Sesión'),
(3, 'Registrar Usuario', 'Registrar Usuario'),
(4, 'Modificar Perfil Usuario', 'Modificar Perfil Usuario'),
(5, 'Cancelar Cuenta', 'Cancelar Cuenta'),
(6, 'Eliminar Cuenta', 'Eliminar Cuenta'),
(7, 'Definir Rol Membresía Base', 'Definir Rol Membresía Base'),
(8, 'Definir Rol Membresía Premium', 'Definir Rol Membresía Premium'),
(9, 'Registrar Institución', 'Registrar Institución'),
(10, 'Modificar Institución', 'Modificar Institución'),
(11, 'Consultar Institución', 'Consultar Institución'),
(12, 'Eliminar Institución', 'Eliminar Institución'),
(13, 'Registrar Historial Reciclaje', 'Registrar Historial Reciclaje'),
(14, 'Eliminar Historial Reciclaje', 'Eliminar Historial Reciclaje'),
(15, 'Consultar Historial Reciclaje', 'Consultar Historial Reciclaje'),
(16, 'Imprimir Historial', 'Imprimir Historial'),
(17, 'Registrar Evento', 'Registrar Evento'),
(18, 'Consultar Evento', 'Consultar Evento'),
(19, 'Modificar Evento', 'Modificar Evento'),
(20, 'Eliminar Evento', 'Eliminar Evento'),
(21, 'Consultar Calendario Evento', 'Consultar Calendario Evento'),
(22, 'Adquirir Membresía', 'Adquirir Membresía'),
(23, 'Registrar Membresía', 'Registrar Membresía'),
(24, 'Modificar Membresía', 'Modificar Membresía'),
(25, 'Eliminar Membresía', 'Eliminar Membresía'),
(26, 'Contactar Miembro', 'Contactar Miembro'),
(27, 'Registrar Curso', 'Registrar Curso'),
(28, 'Modificar Curso', 'Modificar Curso'),
(29, 'Consultar Curso', 'Consultar Curso'),
(30, 'Eliminar Curso', 'Eliminar Curso'),
(31, 'Consultar Calendario Curso', 'Consultar Calendario Curso'),
(32, 'Publicar Cápsula', 'Publicar Cápsula'),
(33, 'Modificar Cápsula', 'Modificar Cápsula'),
(34, 'Consultar Cápsulas', 'Consultar Cápsulas'),
(35, 'Eliminar Cápsula', 'Eliminar Cápsula'),
(36, 'Generar Certificado', 'Generar Certificado'),
(37, 'Consultar Certificado', 'Consultar Certificado'),
(38, 'Publicar Post', 'Publicar Post'),
(39, 'Modificar Post', 'Modificar Post'),
(40, 'Consultar Post', 'Consultar Post'),
(41, 'Eliminar Post', 'Eliminar Post'),
(42, 'Publicar Comentario', 'Publicar Comentario'),
(43, 'Editar Comentario', 'Editar Comentario'),
(44, 'Consultar Comentarios', 'Consultar Comentarios'),
(45, 'Eliminar Comentario', 'Eliminar Comentario'),
(46, 'Añadir Artículo', 'Añadir Artículo'),
(47, 'Consultar Artículos', 'Consultar Artículos'),
(48, 'Eliminar Artículo', 'Eliminar Artículo'),
(49, 'Agregar Material', 'Agregar Material'),
(50, 'Eliminar Material', 'Eliminar Material'),
(51, 'Agregar Anuncio Banner', 'Agregar Anuncio Banner'),
(52, 'Modificar Anuncio Banner', 'Modificar Anuncio Banner'),
(53, 'Eliminar Anuncio Banner', 'Eliminar Anuncio Banner'),
(54, 'Modificar Evento Banner', 'Modificar Evento Banner'),
(55, 'Eliminar Evento Banner', 'Eliminar Evento Banner'),
(56, 'Buscar Institución', 'Buscar Institución'),
(57, 'Consultar Lista Instituciones', 'Consultar Lista Instituciones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Rol`
--

CREATE TABLE IF NOT EXISTS `Rol` (
  `idRol` int(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `Rol`
--

INSERT INTO `Rol` (`idRol`, `nombre`) VALUES
(1, 'Admin'),
(2, 'membresia base'),
(3, 'membresia premium'),
(4, 'usuario general');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Rol_Privilegios`
--

CREATE TABLE IF NOT EXISTS `Rol_Privilegios` (
  `idRol` int(20) NOT NULL,
  `idPrivilegios` int(20) NOT NULL,
  PRIMARY KEY (`idRol`,`idPrivilegios`),
  KEY `idRol` (`idRol`),
  KEY `idPrivilegios` (`idPrivilegios`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Rol_Privilegios`
--

INSERT INTO `Rol_Privilegios` (`idRol`, `idPrivilegios`) VALUES
(1, 7),
(1, 12),
(1, 13),
(1, 17),
(1, 19),
(1, 29),
(1, 37),
(1, 52),
(1, 56),
(2, 2),
(2, 5),
(2, 19),
(2, 44),
(2, 49),
(3, 15),
(3, 39),
(4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuario`
--

CREATE TABLE IF NOT EXISTS `Usuario` (
  `nUser` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`nUser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Usuario`
--

INSERT INTO `Usuario` (`nUser`, `password`) VALUES
('Anakes', 'ukupnot3'),
('Angeie', 'U2SAxCWA'),
('Awauty', 'jcar2009'),
('Colly', 'year7976'),
('Daise', 'jcc42008'),
('Dround', 'ce1cde42'),
('Faair', 'year7969'),
('Felora', 'kAsper(%'),
('Foxy', 'PYMpjAaO'),
('JRyno', '2b1qtryr'),
('lalo', 'hockey'),
('Misnove', 'ricsimke'),
('mrer', 'ukupnot2'),
('None', 'jicawiju'),
('paigum', 'fowatipe'),
('Pead', 'year7975'),
('pedro', 'perez'),
('Sanirl', 'year7972'),
('SgtPepper', 'year7971'),
('Sille', 'ukupnot5'),
('Sugae', 'year7974'),
('TrassyLiv', '8827joao'),
('Twile', 'year7973'),
('Whiorm', 'cipsofts'),
('Winler', 'year7970'),
('Yorist', 'year7977'),
('zinderly', 'jcar2008');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuario_Institucion`
--

CREATE TABLE IF NOT EXISTS `Usuario_Institucion` (
  `nUser` varchar(20) NOT NULL,
  `rfc` varchar(20) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`nUser`,`rfc`),
  KEY `nUser` (`nUser`),
  KEY `rfc` (`rfc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Usuario_Institucion`
--

INSERT INTO `Usuario_Institucion` (`nUser`, `rfc`, `fecha`) VALUES
('Anakes', 'PASJ660308IE9', '0000-00-00 00:00:00'),
('Angeie', 'AAOC6707165W5', '0000-00-00 00:00:00'),
('Awauty', 'OAVM730208D52', '0000-00-00 00:00:00'),
('Colly', 'MOLE6009226I7', '0000-00-00 00:00:00'),
('Daise', 'RATL621008LC1', '0000-00-00 00:00:00'),
('Faair', 'AOCT760409D30', '0000-00-00 00:00:00'),
('Felora', 'MAGE750817646', '0000-00-00 00:00:00'),
('Foxy', 'PACA631101FA9', '0000-00-00 00:00:00'),
('JRyno', 'CAGJ680431787', '0000-00-00 00:00:00'),
('Misnove', 'AUSN6409083P3', '0000-00-00 00:00:00'),
('mrer', 'PEGR620311G98', '0000-00-00 00:00:00'),
('None', 'EISH580111FL9', '0000-00-00 00:00:00'),
('paigum', 'GULB820902R5A', '0000-00-00 00:00:00'),
('Pead', 'LOLN720902VC3', '0000-00-00 00:00:00'),
('pedro', 'AAGA631005CTA', '0000-00-00 00:00:00'),
('Sanirl', 'GOMO6005084U9', '0000-00-00 00:00:00'),
('SgtPepper', 'CAMC840419KF7', '0000-00-00 00:00:00'),
('Sille', 'PEGR620211G98', '0000-00-00 00:00:00'),
('Sugae', 'MAMX780102TN0', '0000-00-00 00:00:00'),
('TrassyLiv', 'CASJ830601NS7', '0000-00-00 00:00:00'),
('Twile', 'DEBG700510MK3', '0000-00-00 00:00:00'),
('Whiorm', 'MASL7408081R1', '0000-00-00 00:00:00'),
('Winler', 'CUDE700820P27', '0000-00-00 00:00:00'),
('Yorist', 'MOBP88120292A', '0000-00-00 00:00:00'),
('zinderly', 'PEGF630518KC6', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuario_Rol`
--

CREATE TABLE IF NOT EXISTS `Usuario_Rol` (
  `nUser` varchar(20) NOT NULL,
  `idRol` int(20) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`nUser`,`idRol`),
  KEY `nUser` (`nUser`),
  KEY `idRol` (`idRol`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Usuario_Rol`
--

INSERT INTO `Usuario_Rol` (`nUser`, `idRol`, `fecha`) VALUES
('Anakes', 2, '0000-00-00 00:00:00'),
('Angeie', 1, '0000-00-00 00:00:00'),
('Awauty', 3, '0000-00-00 00:00:00'),
('Colly', 2, '0000-00-00 00:00:00'),
('Daise', 2, '0000-00-00 00:00:00'),
('Dround', 2, '0000-00-00 00:00:00'),
('Faair', 3, '0000-00-00 00:00:00'),
('Felora', 2, '0000-00-00 00:00:00'),
('Foxy', 2, '0000-00-00 00:00:00'),
('JRyno', 3, '0000-00-00 00:00:00'),
('Misnove', 2, '0000-00-00 00:00:00'),
('mrer', 3, '0000-00-00 00:00:00'),
('None', 3, '0000-00-00 00:00:00'),
('paigum', 2, '0000-00-00 00:00:00'),
('Pead', 2, '0000-00-00 00:00:00'),
('Sanirl', 3, '0000-00-00 00:00:00'),
('SgtPepper', 3, '0000-00-00 00:00:00'),
('Sille', 2, '0000-00-00 00:00:00'),
('Sugae', 3, '0000-00-00 00:00:00'),
('TrassyLiv', 3, '0000-00-00 00:00:00'),
('Twile', 3, '0000-00-00 00:00:00'),
('Whiorm', 2, '0000-00-00 00:00:00'),
('Winler', 2, '0000-00-00 00:00:00'),
('Yorist', 3, '0000-00-00 00:00:00'),
('zinderly', 3, '0000-00-00 00:00:00');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Certificado`
--
ALTER TABLE `Certificado`
  ADD CONSTRAINT `Certificado_ibfk_1` FOREIGN KEY (`rfc`) REFERENCES `Institucion` (`rfc`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `Comentario`
--
ALTER TABLE `Comentario`
  ADD CONSTRAINT `Comentario_ibfk_2` FOREIGN KEY (`idPost`) REFERENCES `Post` (`idPost`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Comentario_ibfk_1` FOREIGN KEY (`nUser`) REFERENCES `Usuario` (`nUser`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `Estado`
--
ALTER TABLE `Estado`
  ADD CONSTRAINT `Estado_ibfk_1` FOREIGN KEY (`idPais`) REFERENCES `Pais` (`idPais`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `Evento`
--
ALTER TABLE `Evento`
  ADD CONSTRAINT `Evento_ibfk_1` FOREIGN KEY (`idEstado`) REFERENCES `Estado` (`idEstado`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `Institucion`
--
ALTER TABLE `Institucion`
  ADD CONSTRAINT `Institucion_ibfk_1` FOREIGN KEY (`idEstado`) REFERENCES `Estado` (`idEstado`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `Institucion_Evento`
--
ALTER TABLE `Institucion_Evento`
  ADD CONSTRAINT `Institucion_Evento_ibfk_2` FOREIGN KEY (`idEvento`) REFERENCES `Evento` (`idEvento`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Institucion_Evento_ibfk_1` FOREIGN KEY (`rfc`) REFERENCES `Institucion` (`rfc`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `Institucion_Material`
--
ALTER TABLE `Institucion_Material`
  ADD CONSTRAINT `Institucion_Material_ibfk_2` FOREIGN KEY (`idMaterial`) REFERENCES `Material` (`idMaterial`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Institucion_Material_ibfk_1` FOREIGN KEY (`rfc`) REFERENCES `Institucion` (`rfc`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `Post`
--
ALTER TABLE `Post`
  ADD CONSTRAINT `Post_ibfk_1` FOREIGN KEY (`nUser`) REFERENCES `Usuario` (`nUser`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `Rol_Privilegios`
--
ALTER TABLE `Rol_Privilegios`
  ADD CONSTRAINT `Rol_Privilegios_ibfk_2` FOREIGN KEY (`idRol`) REFERENCES `Rol` (`idRol`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Rol_Privilegios_ibfk_1` FOREIGN KEY (`idPrivilegios`) REFERENCES `Privilegios` (`idPrivilegios`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `Usuario_Institucion`
--
ALTER TABLE `Usuario_Institucion`
  ADD CONSTRAINT `Usuario_Institucion_ibfk_3` FOREIGN KEY (`nUser`) REFERENCES `Usuario` (`nUser`),
  ADD CONSTRAINT `Usuario_Institucion_ibfk_2` FOREIGN KEY (`rfc`) REFERENCES `Institucion` (`rfc`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `Usuario_Rol`
--
ALTER TABLE `Usuario_Rol`
  ADD CONSTRAINT `Usuario_Rol_ibfk_2` FOREIGN KEY (`nUser`) REFERENCES `Usuario` (`nUser`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Usuario_Rol_ibfk_1` FOREIGN KEY (`idRol`) REFERENCES `Rol` (`idRol`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
