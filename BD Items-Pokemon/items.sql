-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-10-2024 a las 22:32:07
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pokemon`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL DEFAULT 'NOT NULL',
  `description` text NOT NULL,
  `item_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `description`, `item_type`) VALUES
(1, 'Poción', 'Restaura 20 PS.', 'Poción'),
(2, 'Superpoción', 'Restaura 60 PS.', 'Poción'),
(3, 'Baya Ziuela', 'Cura el estado de confusión.', 'Baya'),
(4, 'Poké Ball', 'Sirve para capturar Pokémon.', 'Poké Ball'),
(5, 'Antídoto', 'Cura el envenenamiento.', 'Cura'),
(6, 'Piedra Fuego', 'Evoluciona a ciertos Pokémon de tipo Fuego.', 'Piedra Evolutiva'),
(7, 'Piedra Trueno', 'Evoluciona a ciertos Pokémon de tipo Eléctrico.', 'Piedra Evolutiva'),
(8, 'Piedra Agua', 'Evoluciona a ciertos Pokémon de tipo Agua.', 'Piedra Evolutiva'),
(9, 'Piedra Hoja', 'Evoluciona a ciertos Pokémon de tipo Planta.', 'Piedra Evolutiva'),
(10, 'Restaurar Todo', 'Cura todos los problemas de estado y restaura todos los PS.', 'Cura'),
(11, 'Revivir', 'Revive a un Pokémon debilitado con la mitad de sus PS.', 'Revitalización'),
(12, 'Revivir Máximo', 'Revive a un Pokémon debilitado con todos sus PS.', 'Revitalización'),
(13, 'Caramelo Raro', 'Sube el nivel de un Pokémon en uno.', 'Objeto Especial'),
(14, 'MT01 Garra Metal', 'Permite a un Pokémon aprender el movimiento Garra Metal.', 'MT'),
(15, 'MT02 Golpe Roca', 'Permite a un Pokémon aprender el movimiento Golpe Roca.', 'MT'),
(16, 'MT03 Rayo de Hielo', 'Permite a un Pokémon aprender el movimiento Rayo de Hielo.', 'MT'),
(17, 'MT04 Doble Equipo', 'Permite a un Pokémon aprender el movimiento Doble Equipo.', 'MT'),
(18, 'MT05 Rugido', 'Permite a un Pokémon aprender el movimiento Rugido.', 'MT'),
(19, 'MT06 Tóxico', 'Permite a un Pokémon aprender el movimiento Tóxico.', 'MT'),
(20, 'MT07 Granizo', 'Permite a un Pokémon aprender el movimiento Granizo.', 'MT'),
(21, 'MT08 Corpulencia', 'Permite a un Pokémon aprender el movimiento Corpulencia.', 'MT'),
(22, 'MT09 Recurrente', 'Permite a un Pokémon aprender el movimiento Recurrente.', 'MT'),
(23, 'MT10 Poder Oculto', 'Permite a un Pokémon aprender el movimiento Poder Oculto.', 'MT'),
(24, 'MT11 Día Soleado', 'Permite a un Pokémon aprender el movimiento Día Soleado.', 'MT'),
(25, 'MT12 Mofa', 'Permite a un Pokémon aprender el movimiento Mofa.', 'MT'),
(26, 'MT13 Rayo', 'Permite a un Pokémon aprender el movimiento Rayo.', 'MT'),
(27, 'MT14 Vendaval', 'Permite a un Pokémon aprender el movimiento Vendaval.', 'MT'),
(28, 'MT15 Hiperrayo', 'Permite a un Pokémon aprender el movimiento Hiperrayo.', 'MT'),
(29, 'Cuerda Huida', 'Te permite escapar de una cueva o mazmorra.', 'Objeto Misceláneo'),
(30, 'Polvo Curación', 'Cura cualquier problema de estado, pero reduce la amistad del Pokémon.', 'Cura'),
(31, 'Galleta Lava', 'Cura todos los problemas de estado.', 'Cura'),
(32, 'Campana Alivio', 'Aumenta la amistad del Pokémon que lo lleva.', 'Objeto de Amistad'),
(33, 'Baya Ziuela', 'Cura la confusión de un Pokémon.', 'Baya'),
(34, 'Baya Aranja', 'Restaura 10 PS cuando el Pokémon lo necesita.', 'Baya'),
(35, 'Baya Caquic', 'Cura la confusión de un Pokémon.', 'Baya'),
(36, 'Baya Perasi', 'Cura el envenenamiento de un Pokémon.', 'Baya'),
(37, 'Baya Meloc', 'Cura el envenenamiento.', 'Baya'),
(38, 'Baya Safre', 'Cura el quemadura de un Pokémon.', 'Baya'),
(39, 'Baya Ziuela', 'Cura la confusión.', 'Baya'),
(40, 'Baya Atania', 'Cura el envenenamiento grave.', 'Baya'),
(41, 'Baya Pasio', 'Cura la parálisis.', 'Baya'),
(42, 'Piedra Lunar', 'Evoluciona ciertos Pokémon.', 'Piedra Evolutiva'),
(43, 'Piedra Solar', 'Evoluciona ciertos Pokémon.', 'Piedra Evolutiva'),
(44, 'Piedra Alba', 'Evoluciona ciertos Pokémon.', 'Piedra Evolutiva'),
(45, 'Piedra Noche', 'Evoluciona ciertos Pokémon.', 'Piedra Evolutiva'),
(46, 'Escama Corazón', 'Permite reaprender movimientos olvidados.', 'Objeto Especial'),
(47, 'Restaurar PP', 'Restaura los PP de un movimiento.', 'Cura'),
(48, 'Éter', 'Restaura 10 PP de un movimiento.', 'Cura'),
(49, 'Máximo Éter', 'Restaura todos los PP de un movimiento.', 'Cura'),
(50, 'Pañuelo Rojo', 'Aumenta la simpatía en los concursos Pokémon.', 'Objeto de Concursos'),
(51, 'Pañuelo Azul', 'Aumenta la belleza en los concursos Pokémon.', 'Objeto de Concursos'),
(52, 'Pañuelo Amarillo', 'Aumenta la dureza en los concursos Pokémon.', 'Objeto de Concursos'),
(53, 'Pañuelo Verde', 'Aumenta la inteligencia en los concursos Pokémon.', 'Objeto de Concursos'),
(54, 'Pañuelo Rosa', 'Aumenta la ternura en los concursos Pokémon.', 'Objeto de Concursos'),
(55, 'Velo Agua', 'Evita que el portador sufra quemaduras.', 'Objeto Equipable'),
(56, 'Piedra Hielo', 'Evoluciona a ciertos Pokémon de tipo Hielo.', 'Piedra Evolutiva'),
(57, 'Piedra Amor', 'Evoluciona a ciertos Pokémon al nivel de felicidad máxima.', 'Piedra Evolutiva'),
(58, 'Frasco de Agua', 'Permite recolectar agua de ciertos lugares.', 'Objeto Especial'),
(59, 'Revestimiento Metálico', 'Evoluciona a ciertos Pokémon de tipo Acero.', 'Objeto Equipable'),
(60, 'Polvo Plata', 'Aumenta la potencia de los movimientos tipo Bicho.', 'Objeto Equipable'),
(61, 'Perla Grande', 'Se puede vender a un buen precio.', 'Objeto Valioso'),
(62, 'Miel', 'Atrae Pokémon salvajes cuando se coloca en un árbol.', 'Objeto Especial'),
(63, 'Incienso Suave', 'Aumenta la potencia de los movimientos tipo Psíquico.', 'Objeto Equipable'),
(64, 'Incienso Mar', 'Aumenta la potencia de los movimientos tipo Agua.', 'Objeto Equipable'),
(65, 'Incienso Roca', 'Aumenta la potencia de los movimientos tipo Roca.', 'Objeto Equipable'),
(66, 'Incienso Firme', 'Aumenta la potencia de los movimientos tipo Lucha.', 'Objeto Equipable'),
(67, 'Incienso Lento', 'Reduce la velocidad pero mejora la potencia de los movimientos.', 'Objeto Equipable'),
(68, 'Incienso Floral', 'Aumenta la potencia de los movimientos tipo Planta.', 'Objeto Equipable'),
(69, 'Incienso Duplo', 'Permite obtener más crías en la guardería Pokémon.', 'Objeto Especial'),
(70, 'Bola Férrea', 'Aumenta el peso del Pokémon y reduce su velocidad.', 'Objeto Equipable'),
(71, 'Brazal Firme', 'Aumenta la ganancia de puntos de esfuerzo (EV) en ataque.', 'Objeto Equipable'),
(72, 'Brazal Recio', 'Aumenta la ganancia de puntos de esfuerzo (EV) en defensa.', 'Objeto Equipable'),
(73, 'Brazal Liso', 'Aumenta la ganancia de puntos de esfuerzo (EV) en velocidad.', 'Objeto Equipable'),
(74, 'Brazal Grueso', 'Aumenta la ganancia de puntos de esfuerzo (EV) en PS.', 'Objeto Equipable'),
(75, 'Brazal Gordo', 'Aumenta la ganancia de puntos de esfuerzo (EV) en defensa especial.', 'Objeto Equipable'),
(76, 'Brazal Agudo', 'Aumenta la ganancia de puntos de esfuerzo (EV) en ataque especial.', 'Objeto Equipable'),
(77, 'Restaurar Todo', 'Cura todos los problemas de estado y restaura todos los PS.', 'Cura'),
(78, 'MT16 Pantalla de Humo', 'Permite a un Pokémon aprender el movimiento Pantalla de Humo.', 'MT'),
(79, 'MT17 Protección', 'Permite a un Pokémon aprender el movimiento Protección.', 'MT'),
(80, 'MT18 Refuerzo', 'Permite a un Pokémon aprender el movimiento Refuerzo.', 'MT'),
(81, 'MT19 Cola Férrea', 'Permite a un Pokémon aprender el movimiento Cola Férrea.', 'MT'),
(82, 'MT20 Excavación', 'Permite a un Pokémon aprender el movimiento Excavación.', 'MT'),
(83, 'MT21 Retroceso', 'Permite a un Pokémon aprender el movimiento Retroceso.', 'MT'),
(84, 'MT22 Rayo Solar', 'Permite a un Pokémon aprender el movimiento Rayo Solar.', 'MT'),
(85, 'MT23 Colmillo Ígneo', 'Permite a un Pokémon aprender el movimiento Colmillo Ígneo.', 'MT'),
(86, 'MT24 Trueno', 'Permite a un Pokémon aprender el movimiento Trueno.', 'MT'),
(87, 'MT25 Lanzallamas', 'Permite a un Pokémon aprender el movimiento Lanzallamas.', 'MT'),
(88, 'MT26 Terremoto', 'Permite a un Pokémon aprender el movimiento Terremoto.', 'MT'),
(89, 'MT27 Retribución', 'Permite a un Pokémon aprender el movimiento Retribución.', 'MT'),
(90, 'MT28 Tumba Rocas', 'Permite a un Pokémon aprender el movimiento Tumba Rocas.', 'MT'),
(91, 'MT29 Psíquico', 'Permite a un Pokémon aprender el movimiento Psíquico.', 'MT'),
(92, 'MT30 Bola Sombra', 'Permite a un Pokémon aprender el movimiento Bola Sombra.', 'MT'),
(93, 'MT31 Doble Rayo', 'Permite a un Pokémon aprender el movimiento Doble Rayo.', 'MT'),
(94, 'MT32 Giga Impacto', 'Permite a un Pokémon aprender el movimiento Giga Impacto.', 'MT'),
(95, 'MT33 Resplandor', 'Permite a un Pokémon aprender el movimiento Resplandor.', 'MT'),
(96, 'MT34 Colmillo Rayo', 'Permite a un Pokémon aprender el movimiento Colmillo Rayo.', 'MT'),
(97, 'MT35 Puño Fuego', 'Permite a un Pokémon aprender el movimiento Puño Fuego.', 'MT'),
(98, 'MT36 Lanza Llamas', 'Permite a un Pokémon aprender el movimiento Lanza Llamas.', 'MT'),
(99, 'MT37 Puño Trueno', 'Permite a un Pokémon aprender el movimiento Puño Trueno.', 'MT'),
(100, 'MT38 Tajo Aéreo', 'Permite a un Pokémon aprender el movimiento Tajo Aéreo.', 'MT'),
(101, 'MT39 Torbellino', 'Permite a un Pokémon aprender el movimiento Torbellino.', 'MT'),
(102, 'MT40 Psicoonda', 'Permite a un Pokémon aprender el movimiento Psicoonda.', 'MT'),
(103, 'MT41 Puño Hielo', 'Permite a un Pokémon aprender el movimiento Puño Hielo.', 'MT'),
(104, 'MT42 Hipnosis', 'Permite a un Pokémon aprender el movimiento Hipnosis.', 'MT'),
(105, 'MT43 Carga Tóxica', 'Permite a un Pokémon aprender el movimiento Carga Tóxica.', 'MT'),
(106, 'MT44 Descanso', 'Permite a un Pokémon aprender el movimiento Descanso.', 'MT'),
(107, 'MT45 Atracción', 'Permite a un Pokémon aprender el movimiento Atracción.', 'MT'),
(108, 'MT46 Llamarada', 'Permite a un Pokémon aprender el movimiento Llamarada.', 'MT'),
(109, 'MT47 Triturar', 'Permite a un Pokémon aprender el movimiento Triturar.', 'MT'),
(110, 'MT48 Púas', 'Permite a un Pokémon aprender el movimiento Púas.', 'MT'),
(111, 'MT49 Tóxico', 'Permite a un Pokémon aprender el movimiento Tóxico.', 'MT'),
(112, 'Carbón', 'Aumenta la potencia de los movimientos tipo Fuego.', 'Objeto Equipable'),
(113, 'Cinta Elegida', 'Aumenta el poder de un tipo de movimiento a cambio de limitar el uso.', 'Objeto Equipable'),
(114, 'Polvo Brillo', 'Aumenta la evasión del Pokémon.', 'Objeto Equipable'),
(115, 'Roca Suave', 'Prolonga la duración de Tormenta de Arena.', 'Objeto Equipable'),
(116, 'Roca Calor', 'Prolonga la duración de Día Soleado.', 'Objeto Equipable'),
(117, 'Roca Lluvia', 'Prolonga la duración de Danza Lluvia.', 'Objeto Equipable'),
(118, 'Roca Helada', 'Prolonga la duración de Granizo.', 'Objeto Equipable'),
(119, 'Cinturón Negro', 'Aumenta la potencia de los movimientos tipo Lucha.', 'Objeto Equipable'),
(120, 'Gafas de Sol', 'Aumenta la potencia de los movimientos tipo Siniestro.', 'Objeto Equipable'),
(121, 'Cinta Xperto', 'Aumenta ligeramente la potencia de los movimientos supereficaces.', 'Objeto Equipable'),
(122, 'Pañuelo Elegido', 'Aumenta la velocidad, pero limita el uso de movimientos.', 'Objeto Equipable'),
(123, 'Banda Focus', 'Evita que el Pokémon sea debilitado de un solo golpe.', 'Objeto Equipable'),
(124, 'Restos', 'Recupera una pequeña cantidad de PS en cada turno.', 'Objeto Equipable'),
(125, 'Lodo Negro', 'Restaura PS de los Pokémon de tipo Veneno, pero daña a otros tipos.', 'Objeto Equipable'),
(126, 'Banda Aguante', 'Evita que el Pokémon se debilite si tiene todos los PS al máximo.', 'Objeto Equipable'),
(127, 'Cinta Recia', 'Reduce el daño de los movimientos supereficaces.', 'Objeto Equipable'),
(128, 'Baya Tamate', 'Reduce la velocidad, pero aumenta la amistad del Pokémon.', 'Baya'),
(129, 'Baya Algama', 'Reduce el ataque especial, pero aumenta la amistad del Pokémon.', 'Baya'),
(130, 'Baya Ispero', 'Reduce la defensa especial, pero aumenta la amistad del Pokémon.', 'Baya'),
(131, 'Baya Grana', 'Reduce el ataque, pero aumenta la amistad del Pokémon.', 'Baya'),
(132, 'Baya Saeta', 'Reduce la defensa, pero aumenta la amistad del Pokémon.', 'Baya'),
(133, 'Baya Peragu', 'Reduce la velocidad, pero aumenta la amistad del Pokémon.', 'Baya'),
(134, 'Baya Ziuela', 'Cura la confusión del Pokémon.', 'Baya'),
(135, 'Baya Yapati', 'Cura la quemadura del Pokémon.', 'Baya'),
(136, 'Baya Ziuela', 'Cura el sueño del Pokémon.', 'Baya'),
(137, 'Baya Naranja', 'Recupera 10 PS cuando el Pokémon lo necesita.', 'Baya'),
(138, 'Baya Caquic', 'Cura la confusión.', 'Baya'),
(139, 'Baya Ziuela', 'Cura el envenenamiento.', 'Baya'),
(140, 'Baya Meloc', 'Cura el envenenamiento grave.', 'Baya'),
(141, 'Baya Latano', 'Aumenta la felicidad del Pokémon.', 'Baya'),
(142, 'Baya Rimoya', 'Reduce el daño de los movimientos tipo Hielo.', 'Baya'),
(143, 'Baya Acardo', 'Reduce el daño de los movimientos tipo Agua.', 'Baya');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
