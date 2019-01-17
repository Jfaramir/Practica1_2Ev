-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-01-2019 a las 20:45:04
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `discografica`
--

-- --------------------------------------------------------
Create database discografica;

use discografica;
--
-- Estructura de tabla para la tabla `cancion`
--

CREATE TABLE `cancion` (
  `Id` int(11) NOT NULL,
  `Titulo` varchar(30) NOT NULL,
  `Duracion` varchar(30) NOT NULL,
  `Letras` text NOT NULL,
  `Album_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cancion`
--

INSERT INTO `cancion` (`Id`, `Titulo`, `Duracion`, `Letras`, `Album_Id`) VALUES
(1, 'Numb', '2:20', 'I\'m tired of being what you want me to be\r\nFeeling so faithless, lost under the surface\r\nI don\'t know what you\'re expecting of me\r\nPut under the pressure of walking in your shoes\r\nCaught in the undertow, just caught in the undertow\r\nEvery step that I take is another mistake to you\r\nCaught in the undertow, just caught in the undertow\r\nI\'ve become so numb, I can\'t feel you there\r\nBecome so tired, so much more aware\r\nBy becoming this all I want to do\r\nIs be more like me and be less like you\r\nCan\'t you see that you\'re smothering me?\r\nHolding too tightly, afraid to lose control\r\n\'Cause everything that you thought I would be\r\nHas fallen apart right in front of you\r\nCaught in the undertow, just caught in the undertow\r\nEvery step that I take is another mistake to you\r\nCaught in the undertow, just caught in the undertow\r\nAnd every second I waste is more than I can take!\r\nI\'ve become so numb, I can\'t feel you there\r\nBecome so tired, so much more aware\r\nBy becoming this all I want to do\r\nIs be more like me and be less like you\r\nAnd I know I may end up failing too\r\nBut I know you were just like me with someone disappointed in you\r\nI\'ve become so numb, I can\'t feel you there\r\nBecome so tired, so much more aware\r\nBy becoming this all I want to do\r\nIs be more like me and be less like you\r\nI\'ve become so numb, I can\'t feel you there\r\nI\'m tired of being what you want me to be\r\nI\'ve become so numb, I can\'t feel you there\r\nI\'m tired of being what you want me to be', 1),
(2, 'Fight Black', '3:00', 'You\'re never gonna make it, you\'re not good enough\r\nThere\'s a million other people with the same stuff\r\nYou really think you\'re different, man you must be kidding\r\nThink you\'re gonna hit it, but you just don\'t get it\r\nIt\'s impossible, it\'s not probable\r\nYou\'re irresponsible, too many obstacles\r\nYou gotta stop it yo, you gotta take it slow\r\nYou can\'t be a pro, don\'t waste your time no more\r\nWho the fuck are you, to tell me what to do\r\nI don\'t give a damn if you say you disapprove\r\nI\'m gonna make my move, I\'m gonna make it soon\r\nAnd I\'ll do it \'cause it\'s what I want to fucking do\r\n\'Cause all these opinions and all these positions\r\nThey coming in millions, they\'re blocking your vision\r\nBut no, you can\'t listen, that shit is all fiction\r\n\'Cause you hold the power as long as you\'re driven\r\nYou\'re never gonna make it\r\nThere\'s no way that you make it\r\nYea maybe you can fake it\r\nBut you\'re never gonna make it\r\nAre you just gonna take that?\r\nMake them take it all back\r\nDon\'t tell me you believe that\r\nAre you just gonna take that?\r\nOr will you fucking fight back?\r\nOr will you fucking fight back?\r\nYou ain\'t gonna make it, you ain\'t never ever gonna break it\r\nYou can never beat \'em man, they\'re better than you, face it\r\nThinking that they give a damn, you\'re not thinking straight kid\r\nNo, they don\'t give a damn, you got what I\'m saying?\r\nI\'m not fucking playing, I\'ll give it to you straight, man\r\nThere\'s too many others and you\'re not that great, man\r\nStop what you\'re saying, stop what you\'re making\r\nEverybody here knows that you\'re just faking\r\nNah, I don\'t wanna hear it anymore\r\nI don\'t wanna hear it anymore\r\nAll these fucking thoughts, they are not what I need anymore\r\nI\'m about to shut the motherfucking door\r\nOn all you poor ass haters with your heads in the clouds\r\nTalking out loud so proud\r\nYou better shut your goddamn mouths\r\nBefore I do more than speak out, it\'s about to head south\r\nYou\'re never gonna make it\r\nThere\'s no way that you make it\r\nYea maybe you can fake it\r\nBut you\'re never gonna make it\r\nAre you just gonna take that?\r\nMake them take it all back\r\nDon\'t tell me you believe that\r\nAre you just gonna take that?\r\nOr will you fucking fight back?\r\nOr will you fucking fight back?', 1),
(3, 'Barbie de extrarradio', '3:44', 'En la guerra, como en el amor ...', 2),
(4, 'Cheque al portamor', '5:00', 'Educadamente te daría un consejo ...', 2);
COMMIT;

ALTER TABLE `cancion`
  ADD PRIMARY KEY (`Id`);
COMMIT;

ALTER TABLE cancion
ADD FOREIGN KEY (Album_Id) REFERENCES album(Id);
COMMIT;

CREATE TABLE `album` (
  `Id` int(11) NOT NULL,
  `Titulo` varchar(30) NOT NULL,
  `Anno` year NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `album` (`Id`, `Titulo`, `anno`) VALUES
(1, 'Greatest_Hits', 2018),
(2, 'volvamos_a_empezar',2010);

ALTER TABLE `album`
  ADD PRIMARY KEY (`Id`);
COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
