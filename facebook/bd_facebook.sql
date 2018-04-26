-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2017 at 03:14 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_facebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_amigos`
--

CREATE TABLE `tbl_amigos` (
  `codigo_usuario` int(11) NOT NULL,
  `codigo_usuario_amigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_amigos`
--

INSERT INTO `tbl_amigos` (`codigo_usuario`, `codigo_usuario_amigo`) VALUES
(1, 5),
(1, 6),
(1, 7),
(1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comentarios`
--

CREATE TABLE `tbl_comentarios` (
  `codigo_usuario` int(11) NOT NULL,
  `codigo_publicacion` int(11) NOT NULL,
  `comentario` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_comentarios`
--

INSERT INTO `tbl_comentarios` (`codigo_usuario`, `codigo_publicacion`, `comentario`) VALUES
(2, 1, 'Insecto estúpido!'),
(14, 1, 'XD'),
(18, 1, 'Desde el otro mundo... se los pido porfavor..., GOKUUUU!!!'),
(26, 2, 'Señor Goku, le dire a mi madre que le prepare algo.'),
(13, 2, 'Pero papá, ni siquiera trabajas y pides comida'),
(1, 2, '¿Kangreburgers?'),
(11, 3, 'Este es el comentario'),
(12, 4, 'Este es el comentario'),
(13, 5, 'Este es el comentario'),
(15, 5, 'Este es el comentario'),
(15, 6, 'Este es el comentario'),
(16, 7, 'Este es el comentario'),
(18, 7, 'Este es el comentario'),
(19, 8, 'Este es el comentario'),
(5, 8, 'Este es el comentario'),
(3, 3, 'Este es el comentario');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_publicaciones`
--

CREATE TABLE `tbl_publicaciones` (
  `codigo_publicacion` int(11) NOT NULL,
  `codigo_usuario` int(11) NOT NULL,
  `titulo_publicacion` varchar(1000) DEFAULT NULL,
  `texto_publicacion` varchar(3000) DEFAULT NULL,
  `fecha_publicacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_publicaciones`
--

INSERT INTO `tbl_publicaciones` (`codigo_publicacion`, `codigo_usuario`, `titulo_publicacion`, `texto_publicacion`, `fecha_publicacion`) VALUES
(1, 14, 'Recolectemos las esferas del dragon', 'Es necesario revivir a Krilin de nuevo... por lo cual le solicito a todos mis amigos de facebook que me ayuden a encontrarlas. Se que algunos de ustedes pensaran que podemos pedir un deseo mejor pero Krillin es mi amigo!', '2017-04-09'),
(2, 14, 'Tengo hambre :V', 'A pesar de que me comi 3mil platos de arroz aun tengo hambre :( ¿alguien me invita?', '2017-04-22'),
(3, 9, 'Titulo publicacion', 'Texto publicacion', '2017-04-10'),
(4, 1, 'Titulo publicacion', 'Texto publicacion', '2017-04-27'),
(5, 3, 'Titulo publicacion', 'Texto publicacion', '2017-04-10'),
(6, 4, 'Titulo publicacion', 'Texto publicacion', '2017-04-27'),
(7, 7, 'Titulo publicacion', 'Texto publicacion', '2017-04-10'),
(8, 8, 'Titulo publicacion', 'Texto publicacion', '2017-04-27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usuarios`
--

CREATE TABLE `tbl_usuarios` (
  `codigo_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(100) NOT NULL,
  `correo` varchar(300) NOT NULL,
  `contrasena` varchar(100) NOT NULL,
  `url_imagen_perfil` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`codigo_usuario`, `nombre_usuario`, `correo`, `contrasena`, `url_imagen_perfil`) VALUES
(1, 'Patricio', 'patricio@gmail.com', 'asd.456', 'img/profile-pics/patricio.jpg'),
(2, 'Vegeta', 'vegeta@gmail.com', 'asd.456', 'img/profile-pics/vegeta.jpg'),
(3, '16', '16@gmail.com', 'asd.456', 'img/profile-pics/androide_16.jpg'),
(4, '18', '18@gmail.com', 'asd.456', 'img/profile-pics/androide_18.jpg'),
(5, '19', '19@gmail.com', 'asd.456', 'img/profile-pics/androide_19.jpg'),
(6, 'Baby', 'baby@gmail.com', 'asd.456', 'img/profile-pics/baby.jpg'),
(7, 'Bulma', 'bulma@gmail.com', 'asd.456', 'img/profile-pics/bulma.jpg'),
(8, 'Cell', 'cell@gmail.com', 'asd.456', 'img/profile-pics/cell.jpg'),
(9, 'Chaozu', 'chaozu@gmail.com', 'asd.456', 'img/profile-pics/chaozu.jpg'),
(10, 'Dende', 'dende@gmail.com', 'asd.456', 'img/profile-pics/dende.jpg'),
(11, 'Dodoria', 'dodoria@gmail.com', 'asd.456', 'img/profile-pics/dodoria.jpg'),
(12, 'Freezer', 'freezer@gmail.com', 'asd.456', 'img/profile-pics/freezer.jpg'),
(13, 'Gohan', 'gohan@gmail.com', 'asd.456', 'img/profile-pics/gohan.jpg'),
(14, 'Goku', 'goku@gmail.com', 'asd.456', 'img/profile-pics/goku.jpg'),
(15, 'Goten', 'goten@gmail.com', 'asd.456', 'img/profile-pics/goten.png'),
(16, 'Kami', 'kami@gmail.com', 'asd.456', 'img/profile-pics/kami.jpg'),
(17, 'Kibito', 'kibito@gmail.com', 'asd.456', 'img/profile-pics/kibito.jpg'),
(18, 'Krilin', 'krilin@gmail.com', 'asd.456', 'img/profile-pics/krilin.jpg'),
(19, 'Majinboo', 'majinboo@gmail.com', 'asd.456', 'img/profile-pics/majinboo.jpg'),
(20, 'MrSatan', 'mr_satan@gmail.com', 'asd.456', 'img/profile-pics/mr_satan.jpg'),
(21, 'Nappa', 'nappa@gmail.com', 'asd.456', 'img/profile-pics/nappa.jpg'),
(22, 'Oolong', 'oolong@gmail.com', 'asd.456', 'img/profile-pics/oolong.jpg'),
(23, 'Pan', 'pan@gmail.com', 'asd.456', 'img/profile-pics/pan.png'),
(24, 'Shenlong', 'shenlong@gmail.com', 'asd.456', 'img/profile-pics/shenlong.jpg'),
(25, 'Picoro', 'picoro@gmail.com', 'asd.456', 'img/profile-pics/picoro.jpg'),
(26, 'Trunks', 'puar@gmail.com', 'asd.456', 'img/profile-pics/trunks.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_amigos`
--
ALTER TABLE `tbl_amigos`
  ADD PRIMARY KEY (`codigo_usuario`,`codigo_usuario_amigo`),
  ADD KEY `fk_tbl_amigos_tbl_usuarios_idx` (`codigo_usuario`),
  ADD KEY `fk_tbl_amigos_tbl_usuarios1_idx` (`codigo_usuario_amigo`);

--
-- Indexes for table `tbl_comentarios`
--
ALTER TABLE `tbl_comentarios`
  ADD KEY `fk_tbl_comentarios_tbl_usuarios1_idx` (`codigo_usuario`),
  ADD KEY `fk_tbl_comentarios_tbl_publicaciones1_idx` (`codigo_publicacion`);

--
-- Indexes for table `tbl_publicaciones`
--
ALTER TABLE `tbl_publicaciones`
  ADD PRIMARY KEY (`codigo_publicacion`),
  ADD KEY `fk_tbl_publicaciones_tbl_usuarios1_idx` (`codigo_usuario`);

--
-- Indexes for table `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`codigo_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_publicaciones`
--
ALTER TABLE `tbl_publicaciones`
  MODIFY `codigo_publicacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  MODIFY `codigo_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_comentarios`
--
ALTER TABLE `tbl_comentarios`
  ADD CONSTRAINT `fk_tbl_comentarios_tbl_publicaciones1` FOREIGN KEY (`codigo_publicacion`) REFERENCES `tbl_publicaciones` (`codigo_publicacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_comentarios_tbl_usuarios1` FOREIGN KEY (`codigo_usuario`) REFERENCES `tbl_usuarios` (`codigo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_publicaciones`
--
ALTER TABLE `tbl_publicaciones`
  ADD CONSTRAINT `fk_tbl_publicaciones_tbl_usuarios1` FOREIGN KEY (`codigo_usuario`) REFERENCES `tbl_usuarios` (`codigo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
