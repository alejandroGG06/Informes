-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-01-2025 a las 11:58:32
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nfl_database`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coaches`
--

CREATE TABLE `coaches` (
  `coach_id` int(11) NOT NULL,
  `coach_name` varchar(100) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `games`
--

CREATE TABLE `games` (
  `game_id` int(11) NOT NULL,
  `game_date` date NOT NULL,
  `home_team_id` int(11) DEFAULT NULL,
  `away_team_id` int(11) DEFAULT NULL,
  `home_team_score` int(11) DEFAULT NULL,
  `away_team_score` int(11) DEFAULT NULL,
  `stadium` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `games`
--

INSERT INTO `games` (`game_id`, `game_date`, `home_team_id`, `away_team_id`, `home_team_score`, `away_team_score`, `stadium`) VALUES
(1, '2024-09-05', 1, 2, 34, 28, 'Arrowhead Stadium'),
(2, '2024-09-06', 3, 4, 21, 30, 'Lambeau Field'),
(3, '2024-12-08', 5, 1, 27, 24, 'SoFi Stadium'),
(4, '2024-12-09', 6, 3, 20, 14, 'Paycor Stadium'),
(5, '2025-01-05', 1, 5, 17, 27, 'Arrowhead Stadium');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `game_referees`
--

CREATE TABLE `game_referees` (
  `assignment_id` int(11) NOT NULL,
  `game_id` int(11) DEFAULT NULL,
  `referee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `players`
--

CREATE TABLE `players` (
  `player_id` int(11) NOT NULL,
  `player_name` varchar(100) NOT NULL,
  `position` varchar(50) DEFAULT NULL,
  `jersey_number` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `height_cm` int(11) DEFAULT NULL,
  `weight_kg` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `players`
--

INSERT INTO `players` (`player_id`, `player_name`, `position`, `jersey_number`, `team_id`, `date_of_birth`, `height_cm`, `weight_kg`) VALUES
(1, 'Patrick Mahomes', 'QB', 15, 1, '1995-09-17', 191, 104),
(2, 'Travis Kelce', 'TE', 87, 1, '1989-10-05', 196, 118),
(3, 'Lamar Jackson', 'QB', 8, 2, '1997-01-07', 188, 96),
(4, 'Mark Andrews', 'TE', 89, 2, '1995-09-06', 196, 116),
(5, 'Aaron Jones', 'RB', 33, 3, '1994-12-02', 175, 94),
(6, 'Jordan Love', 'QB', 10, 3, '1998-11-02', 193, 100),
(7, 'Jalen Hurts', 'QB', 1, 4, '1998-08-07', 185, 101),
(8, 'A.J. Brown', 'WR', 11, 4, '1997-06-30', 185, 103),
(9, 'Justin Herbert', 'QB', 10, 5, '1998-03-10', 198, 108),
(10, 'Keenan Allen', 'WR', 13, 5, '1992-04-27', 188, 96),
(11, 'Joe Burrow', 'QB', 9, 6, '1996-12-10', 193, 100),
(12, 'Ja Marr Chase', 'WR', 1, 6, '2000-03-01', 183, 91),
(13, 'Patrick Mahomes', 'QB', 15, 1, '1995-09-17', 191, 104),
(14, 'Travis Kelce', 'TE', 87, 1, '1989-10-05', 196, 118),
(15, 'Chris Jones', 'DT', 95, 1, '1994-07-03', 198, 141),
(16, 'Isiah Pacheco', 'RB', 10, 1, '1999-03-02', 178, 98),
(17, 'Skyy Moore', 'WR', 24, 1, '2000-09-10', 178, 86),
(18, 'Nick Bolton', 'LB', 32, 1, '2000-03-10', 180, 108),
(19, 'Jaylen Watson', 'CB', 35, 1, '1998-09-03', 185, 88),
(20, 'George Karlaftis', 'DE', 56, 1, '2001-04-03', 193, 118),
(21, 'Harrison Butker', 'K', 7, 1, '1995-07-14', 193, 86),
(22, 'Jerick McKinnon', 'RB', 1, 1, '1992-05-03', 175, 93),
(23, 'Lamar Jackson', 'QB', 8, 2, '1997-01-07', 188, 96),
(24, 'Mark Andrews', 'TE', 89, 2, '1995-09-06', 196, 116),
(25, 'Marlon Humphrey', 'CB', 44, 2, '1996-07-08', 183, 89),
(26, 'Justin Tucker', 'K', 9, 2, '1989-11-21', 185, 83),
(27, 'Odafe Oweh', 'LB', 99, 2, '1998-12-15', 193, 116),
(28, 'Patrick Queen', 'LB', 6, 2, '1999-08-13', 183, 104),
(29, 'J.K. Dobbins', 'RB', 27, 2, '1998-12-17', 175, 96),
(30, 'Tyler Huntley', 'QB', 2, 2, '1998-06-03', 185, 93),
(31, 'Marcus Williams', 'S', 32, 2, '1996-09-08', 185, 93),
(32, 'Roquan Smith', 'LB', 18, 2, '1997-04-08', 185, 104),
(33, 'Aaron Jones', 'RB', 33, 3, '1994-12-02', 175, 94),
(34, 'Jaire Alexander', 'CB', 23, 3, '1997-02-09', 178, 89),
(35, 'Jordan Love', 'QB', 10, 3, '1998-11-02', 193, 99),
(36, 'Christian Watson', 'WR', 9, 3, '1999-05-12', 193, 94),
(37, 'David Bakhtiari', 'OT', 69, 3, '1991-09-30', 193, 141),
(38, 'Kenny Clark', 'DT', 97, 3, '1995-10-04', 191, 136),
(39, 'Romeo Doubs', 'WR', 87, 3, '2000-04-13', 188, 91),
(40, 'DeVondre Campbell', 'LB', 59, 3, '1993-07-01', 193, 109),
(41, 'Rasul Douglas', 'CB', 29, 3, '1995-08-29', 188, 93),
(42, 'Josh Myers', 'C', 71, 3, '1998-07-16', 196, 136),
(43, 'Jalen Hurts', 'QB', 1, 4, '1998-08-07', 185, 101),
(44, 'A.J. Brown', 'WR', 11, 4, '1997-06-30', 183, 102),
(45, 'Haason Reddick', 'LB', 7, 4, '1994-09-22', 185, 111),
(46, 'DeVonta Smith', 'WR', 6, 4, '1998-11-14', 183, 77),
(47, 'Jason Kelce', 'C', 62, 4, '1987-11-05', 191, 134),
(48, 'Darius Slay', 'CB', 2, 4, '1991-01-01', 183, 88),
(49, 'Dallas Goedert', 'TE', 88, 4, '1995-01-03', 196, 116),
(50, 'Fletcher Cox', 'DT', 91, 4, '1990-12-13', 193, 141),
(51, 'James Bradberry', 'CB', 24, 4, '1993-08-04', 185, 96),
(52, 'Jordan Davis', 'DT', 90, 4, '2000-01-12', 198, 152),
(53, 'Justin Herbert', 'QB', 10, 5, '1998-03-10', 198, 108),
(54, 'Keenan Allen', 'WR', 13, 5, '1992-04-27', 188, 96),
(55, 'Derwin James', 'S', 3, 5, '1996-08-03', 188, 98),
(56, 'Mike Williams', 'WR', 81, 5, '1994-10-04', 193, 99),
(57, 'Austin Ekeler', 'RB', 30, 5, '1995-05-17', 178, 91),
(58, 'Rashawn Slater', 'OT', 70, 5, '1999-03-26', 193, 145),
(59, 'Kenneth Murray', 'LB', 9, 5, '1998-11-16', 188, 108),
(60, 'Asante Samuel Jr.', 'CB', 26, 5, '1999-10-03', 178, 83),
(61, 'Sebastian Joseph-Day', 'DT', 69, 5, '1995-03-21', 193, 141),
(62, 'Joshua Palmer', 'WR', 5, 5, '1999-09-22', 185, 95),
(63, 'Joe Burrow', 'QB', 9, 6, '1996-12-10', 193, 100),
(64, 'Ja Marr Chase', 'WR', 1, 6, '2000-03-01', 183, 91),
(65, 'Trey Hendrickson', 'DE', 91, 6, '1994-12-05', 193, 122),
(66, 'Joe Mixon', 'RB', 28, 6, '1996-07-24', 185, 100),
(67, 'Tee Higgins', 'WR', 85, 6, '1999-01-18', 193, 99),
(68, 'Tyler Boyd', 'WR', 83, 6, '1994-11-15', 188, 95),
(69, 'Logan Wilson', 'LB', 55, 6, '1996-07-08', 188, 108),
(70, 'D.J. Reader', 'DT', 98, 6, '1994-07-01', 191, 152),
(71, 'Chidobe Awuzie', 'CB', 22, 6, '1995-05-24', 183, 91),
(72, 'Sam Hubbard', 'DE', 94, 6, '1995-06-29', 196, 120);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_contracts`
--

CREATE TABLE `player_contracts` (
  `contract_id` int(11) NOT NULL,
  `player_id` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `salary` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `player_statistics`
--

CREATE TABLE `player_statistics` (
  `stat_id` int(11) NOT NULL,
  `game_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `passing_yards` int(11) DEFAULT NULL,
  `rushing_yards` int(11) DEFAULT NULL,
  `receiving_yards` int(11) DEFAULT NULL,
  `tackles` int(11) DEFAULT NULL,
  `interceptions` int(11) DEFAULT NULL,
  `touchdowns` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `player_statistics`
--

INSERT INTO `player_statistics` (`stat_id`, `game_id`, `player_id`, `passing_yards`, `rushing_yards`, `receiving_yards`, `tackles`, `interceptions`, `touchdowns`) VALUES
(1, 1, 1, 350, 20, 0, 0, 1, 4),
(2, 1, 3, 0, 0, 110, 0, 0, 1),
(3, 2, 5, 0, 110, 0, 0, 0, 1),
(4, 3, 9, 310, 30, 0, 0, 0, 2),
(5, 4, 11, 320, 10, 0, 0, 0, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `referees`
--

CREATE TABLE `referees` (
  `referee_id` int(11) NOT NULL,
  `referee_name` varchar(100) NOT NULL,
  `experience_years` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seasons`
--

CREATE TABLE `seasons` (
  `season_id` int(11) NOT NULL,
  `year` year(4) NOT NULL,
  `champion_team_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `seasons`
--

INSERT INTO `seasons` (`season_id`, `year`, `champion_team_id`) VALUES
(1, '2024', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teams`
--

CREATE TABLE `teams` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `stadium` varchar(100) DEFAULT NULL,
  `founded_year` year(4) DEFAULT NULL,
  `head_coach` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `teams`
--

INSERT INTO `teams` (`team_id`, `team_name`, `city`, `stadium`, `founded_year`, `head_coach`) VALUES
(1, 'Kansas City Chiefs', 'Kansas City', 'Arrowhead Stadium', '1960', 'Andy Reid'),
(2, 'Baltimore Ravens', 'Baltimore', 'M&T Bank Stadium', '1996', 'John Harbaugh'),
(3, 'Green Bay Packers', 'Green Bay', 'Lambeau Field', '1919', 'Matt LaFleur'),
(4, 'Philadelphia Eagles', 'Philadelphia', 'Lincoln Financial Field', '1933', 'Nick Sirianni'),
(5, 'Los Angeles Chargers', 'Los Angeles', 'SoFi Stadium', '1960', 'Brandon Staley'),
(6, 'Cincinnati Bengals', 'Cincinnati', 'Paycor Stadium', '1968', 'Zac Taylor'),
(7, 'Buffalo Bills', 'Buffalo', 'Highmark Stadium', '1960', 'Sean McDermott'),
(8, 'Dallas Cowboys', 'Dallas', 'AT&T Stadium', '1960', 'Mike McCarthy'),
(9, 'San Francisco 49ers', 'San Francisco', 'Levi s Stadium', '1946', 'Kyle Shanahan'),
(10, 'Miami Dolphins', 'Miami', 'Hard Rock Stadium', '1966', 'Mike McDaniel'),
(11, 'New York Jets', 'New York', 'MetLife Stadium', '1960', 'Robert Saleh'),
(12, 'New England Patriots', 'Foxborough', 'Gillette Stadium', '1959', 'Bill Belichick'),
(13, 'Seattle Seahawks', 'Seattle', 'Lumen Field', '1976', 'Pete Carroll'),
(14, 'Minnesota Vikings', 'Minneapolis', 'U.S. Bank Stadium', '1961', 'Kevin O Connell'),
(15, 'Tampa Bay Buccaneers', 'Tampa', 'Raymond James Stadium', '1976', 'Todd Bowles'),
(16, 'Pittsburgh Steelers', 'Pittsburgh', 'Acrisure Stadium', '1933', 'Mike Tomlin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team_statistics`
--

CREATE TABLE `team_statistics` (
  `stat_id` int(11) NOT NULL,
  `game_id` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `total_yards` int(11) DEFAULT NULL,
  `rushing_yards` int(11) DEFAULT NULL,
  `passing_yards` int(11) DEFAULT NULL,
  `turnovers` int(11) DEFAULT NULL,
  `penalties` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `coaches`
--
ALTER TABLE `coaches`
  ADD PRIMARY KEY (`coach_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indices de la tabla `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`game_id`),
  ADD KEY `home_team_id` (`home_team_id`),
  ADD KEY `away_team_id` (`away_team_id`);

--
-- Indices de la tabla `game_referees`
--
ALTER TABLE `game_referees`
  ADD PRIMARY KEY (`assignment_id`),
  ADD KEY `game_id` (`game_id`),
  ADD KEY `referee_id` (`referee_id`);

--
-- Indices de la tabla `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indices de la tabla `player_contracts`
--
ALTER TABLE `player_contracts`
  ADD PRIMARY KEY (`contract_id`),
  ADD KEY `player_id` (`player_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indices de la tabla `player_statistics`
--
ALTER TABLE `player_statistics`
  ADD PRIMARY KEY (`stat_id`),
  ADD KEY `game_id` (`game_id`),
  ADD KEY `player_id` (`player_id`);

--
-- Indices de la tabla `referees`
--
ALTER TABLE `referees`
  ADD PRIMARY KEY (`referee_id`);

--
-- Indices de la tabla `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`season_id`),
  ADD KEY `champion_team_id` (`champion_team_id`);

--
-- Indices de la tabla `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`team_id`);

--
-- Indices de la tabla `team_statistics`
--
ALTER TABLE `team_statistics`
  ADD PRIMARY KEY (`stat_id`),
  ADD KEY `game_id` (`game_id`),
  ADD KEY `team_id` (`team_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `coaches`
--
ALTER TABLE `coaches`
  MODIFY `coach_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `games`
--
ALTER TABLE `games`
  MODIFY `game_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `game_referees`
--
ALTER TABLE `game_referees`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `players`
--
ALTER TABLE `players`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `player_contracts`
--
ALTER TABLE `player_contracts`
  MODIFY `contract_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `player_statistics`
--
ALTER TABLE `player_statistics`
  MODIFY `stat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `referees`
--
ALTER TABLE `referees`
  MODIFY `referee_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seasons`
--
ALTER TABLE `seasons`
  MODIFY `season_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `teams`
--
ALTER TABLE `teams`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `team_statistics`
--
ALTER TABLE `team_statistics`
  MODIFY `stat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `coaches`
--
ALTER TABLE `coaches`
  ADD CONSTRAINT `coaches_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `games_ibfk_1` FOREIGN KEY (`home_team_id`) REFERENCES `teams` (`team_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `games_ibfk_2` FOREIGN KEY (`away_team_id`) REFERENCES `teams` (`team_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `game_referees`
--
ALTER TABLE `game_referees`
  ADD CONSTRAINT `game_referees_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `game_referees_ibfk_2` FOREIGN KEY (`referee_id`) REFERENCES `referees` (`referee_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `player_contracts`
--
ALTER TABLE `player_contracts`
  ADD CONSTRAINT `player_contracts_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `player_contracts_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `player_statistics`
--
ALTER TABLE `player_statistics`
  ADD CONSTRAINT `player_statistics_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `player_statistics_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `seasons`
--
ALTER TABLE `seasons`
  ADD CONSTRAINT `seasons_ibfk_1` FOREIGN KEY (`champion_team_id`) REFERENCES `teams` (`team_id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `team_statistics`
--
ALTER TABLE `team_statistics`
  ADD CONSTRAINT `team_statistics_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `team_statistics_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
