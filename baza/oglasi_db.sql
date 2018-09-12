-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 12, 2018 at 06:35 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oglasi_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_sif` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sifra` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_sif`, `email`, `sifra`) VALUES
(1, 'admin@admin.com', '123123');

-- --------------------------------------------------------

--
-- Table structure for table `delatnosti`
--

CREATE TABLE `delatnosti` (
  `delatnosti_SIF` int(11) NOT NULL,
  `sifra` varchar(255) NOT NULL,
  `Naziv` text CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `vrsta_delatnosti_sif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delatnosti`
--

INSERT INTO `delatnosti` (`delatnosti_SIF`, `sifra`, `Naziv`, `vrsta_delatnosti_sif`) VALUES
(1576, '1', 'Poljoprivreda, lov i usluge', 1),
(1577, '11', 'Gajenje useva i zasada, baštovanstvo', 1),
(1578, '111', 'Gajenje žita i dr. useva i zasada', 1),
(1579, '1110', 'Gajenje žita i dr. useva i zasada', 1),
(1580, '112', 'Gajenje povrća, cveća i sadnica', 1),
(1581, '1121', 'Gajenje povrća, cveća i ukrasnog bilja', 1),
(1582, '1122', 'Gajenje voćnih sadnica', 1),
(1583, '1123', 'Gajenje loznih sadnica', 1),
(1584, '113', 'Gajenje voća i bilja za napitke i začine', 1),
(1585, '1131', 'Gajenje voća', 1),
(1586, '1132', 'Gajenje grožđa', 1),
(1587, '1133', 'Gajenje bilja za napitke i začine', 1),
(1588, '12', 'Uzgoj životinja', 1),
(1589, '121', 'Uzgoj goveda i proizv. mleka', 1),
(1590, '1210', 'Uzgoj goveda i proizv. mleka', 1),
(1591, '122', 'Uzgoj ovaca, koza, konja', 1),
(1592, '1220', 'Uzgoj ovaca, koza, konja', 1),
(1593, '123', 'Uzgoj svinja', 1),
(1594, '1230', 'Uzgoj svinja', 1),
(1595, '124', 'Uzgoj živine', 1),
(1596, '1240', 'Uzgoj živine', 1),
(1597, '125', 'Uzgoj ostalih životinja', 1),
(1598, '1250', 'Uzgoj ostalih životinja', 1),
(1599, '13', 'Mešovito farmerstvo', 1),
(1600, '130', 'Mešovito farmerstvo', 1),
(1601, '1300', 'Mešovito farmerstvo', 1),
(1602, '14', 'Poljoprivredne usluge', 1),
(1603, '141', 'Poljoprivredne usluge', 1),
(1604, '1411', 'Iskorišćavanje voda za poljoprivredu', 1),
(1605, '1412', 'Uređenje parkova i rekreacionih površina', 1),
(1606, '1413', 'Ostale poljoprivredne usluge', 1),
(1607, '142', 'Usluge u uzgoju životinja', 1),
(1608, '1420', 'Usluge u uzgoju životinja', 1),
(1609, '15', 'Lov, uzgoj divljači i usluge', 1),
(1610, '150', 'Lov, uzgoj divljači i usluge', 1),
(1611, '1500', 'Lov, uzgoj divljači i usluge', 1),
(1612, '2', 'Uzgoj, iskorišćavanje šuma i usluge', 2),
(1613, '20', 'Uzgoj, iskorišćavanje šuma i usluge', 2),
(1614, '201', 'Uzgoj i iskorišćavanje šuma', 2),
(1615, '2010', 'Uzgoj i iskorišćavanje šuma', 2),
(1616, '202', 'Usluge u šumarstvu', 2),
(1617, '2020', 'Usluge u šumarstvu', 2),
(1618, '3', 'Vodoprivreda', 3),
(1619, '30', 'Vodoprivreda', 3),
(1620, '301', 'Gazdovanje vodnim resursima', 3),
(1621, '3010', 'Gazdovanje vodnim resursima', 3),
(1622, '302', 'Iskorišćavanje i upotreba voda', 3),
(1623, '3020', 'Iskorišćavanje i upotreba voda', 3),
(1624, '303', 'Zaštita od štetnog dejstva voda', 3),
(1625, '3030', 'Zaštita od štetnog dejstva voda', 3),
(1626, '304', 'Zaštita voda od zagađivanja', 3),
(1627, '3040', 'Zaštita voda od zagađivanja', 3),
(1628, '5', 'Ulov, uzgoj ribe i usluge', 4),
(1629, '50', 'Ulov, uzgoj ribe i usluge', 4),
(1630, '501', 'Ulov ribe', 4),
(1631, '5011', 'Ulov ribe na moru', 4),
(1632, '5012', 'Ulov ribe na rekama i jezerima', 4),
(1633, '502', 'Mrešćenje i uzgoj ribe u ribnjacima', 4),
(1634, '5020', 'Mrešćenje i uzgoj ribe u ribnjacima', 4),
(1635, '10', 'Vađenje uglja', 5),
(1636, '101', 'Vađenje i briketiranje kamenog uglja', 5),
(1637, '1010', 'Vađenje i briketiranje kamenog uglja', 5),
(1638, '10100', 'Vađenje i briketiranje kamenog uglja', 5),
(1639, '102', 'Vađenje, briketir. mrkog uglja i lignita', 5),
(1640, '1020', 'Vađenje, briketir. mrkog uglja i lignita', 5),
(1641, '10201', 'Vađenje i briketiranje mrkog uglja', 5),
(1642, '10202', 'Vađenje i briketiranje lignita', 5),
(1643, '103', 'Vađenje i briketiranje treseta', 5),
(1644, '1030', 'Vađenje i briketiranje treseta', 5),
(1645, '10300', 'Vađenje i briketiranje treseta', 5),
(1646, '11', 'Vađenje sirove nafte i gasa, usluge', 5),
(1647, '111', 'Vađenje sirove nafte i prirodnog gasa', 5),
(1648, '1110', 'Vađenje sirove nafte i prirodnog gasa', 5),
(1649, '11101', 'Vađenje sirove nafte', 5),
(1650, '11102', 'Vađenje prirodnog gasa', 5),
(1651, '112', 'Usluge u proizv. nafte i gasa', 5),
(1652, '1120', 'Usluge u proizv. nafte i gasa', 5),
(1653, '11200', 'Usluge u proizv. nafte i gasa', 5),
(1654, '12', 'Vađenje ruda urana i torijuma', 5),
(1655, '120', 'Vađenje ruda urana i torijuma', 5),
(1656, '1200', 'Vađenje ruda urana i torijuma', 5),
(1657, '12000', 'Vađenje ruda urana i torijuma', 5),
(1658, '13', 'Vađenje ruda metala', 6),
(1659, '131', 'Vađenje ruda gvožđa', 6),
(1660, '1310', 'Vađenje ruda gvožđa', 6),
(1661, '13100', 'Vađenje ruda gvožđa', 6),
(1662, '132', 'Vađenje ruda obojenih metala', 6),
(1663, '1320', 'Vađenje ruda obojenih metala', 6),
(1664, '13201', 'Vađenje boksita', 6),
(1665, '13202', 'Vađenje ruda olova i cinka', 6),
(1666, '13203', 'Vađenje ruda bakra', 6),
(1667, '13204', 'Vađenje ruda ostalih obojenih metala', 6),
(1668, '14', 'Vađenje ostalih ruda i kamena', 6),
(1669, '141', 'Vađenje kamena', 6),
(1670, '1411', 'Vađenje kamena za građevinarstvo', 6),
(1671, '14110', 'Vađenje kamena za građevinarstvo', 6),
(1672, '1412', 'Vađenje krečnjaka, sirovog gipsa i krede', 6),
(1673, '14120', 'Vađenje krečnjaka, sirovog gipsa i krede', 6),
(1674, '1413', 'Vađenje škriljaca', 6),
(1675, '14130', 'Vađenje škriljaca', 6),
(1676, '142', 'Vađenje peska i gline', 6),
(1677, '1421', 'Vađenje šljunka i peska', 6),
(1678, '14210', 'Vađenje šljunka i peska', 6),
(1679, '1422', 'Vađenje gline i kaolina', 6),
(1680, '14220', 'Vađenje gline i kaolina', 6),
(1681, '143', 'Vađenje hemijskih minerala i đubriva', 6),
(1682, '1430', 'Vađenje hemijskih minerala i đubriva', 6),
(1683, '14300', 'Vađenje hemijskih minerala i đubriva', 6),
(1684, '144', 'Proizv. soli', 6),
(1685, '1440', 'Proizv. soli', 6),
(1686, '14401', 'Proizv. morske soli', 6),
(1687, '14402', 'Proizv. ostale soli', 6),
(1688, '145', 'Vađenje ostalih ruda i kamena', 6),
(1689, '1450', 'Vađenje ostalih ruda i kamena', 6),
(1690, '14500', 'Vađenje ostalih ruda i kamena', 6),
(1691, '15', 'Proizv. prehrambenih proizvoda i pića', 7),
(1692, '151', 'Proizv. obrada i konzervisanje mesa', 7),
(1693, '1511', 'Proizv. i obrada životinjskog mesa', 7),
(1694, '15110', 'Proizv. i obrada životinjskog mesa', 7),
(1695, '1512', 'Proizv. i obrada živinskog mesa', 7),
(1696, '15120', 'Proizv. i obrada živinskog mesa', 7),
(1697, '1513', 'Prerada životinjskog i živinskog mesa', 7),
(1698, '15130', 'Prerada životinjskog i živinskog mesa', 7),
(1699, '152', 'Prerada i konzervisanje ribe', 7),
(1700, '1520', 'Prerada i konzervisanje ribe', 7),
(1701, '15200', 'Prerada i konzervisanje ribe', 7),
(1702, '153', 'Prerada i konzervisanje voća i povrća', 7),
(1703, '1531', 'Prerada i konzervisanje krompira', 7),
(1704, '15310', 'Prerada i konzervisanje krompira', 7),
(1705, '1532', 'Proizv. sokova od voća i povrća', 7),
(1706, '15320', 'Proizv. sokova od voća i povrća', 7),
(1707, '1533', 'Prerada i konzervisanje dr. voća i povrća', 7),
(1708, '15330', 'Prerada i konzervisanje dr. voća i povrća', 7),
(1709, '154', 'Proizv. ulja i masti', 7),
(1710, '1541', 'Proizv. sirovih ulja i masti', 7),
(1711, '15410', 'Proizv. sirovih ulja i masti', 7),
(1712, '1542', 'Proizv. rafiniranih ulja i masti', 7),
(1713, '15420', 'Proizv. rafiniranih ulja i masti', 7),
(1714, '1543', 'Proizv. margarina i sl. masti', 7),
(1715, '15430', 'Proizv. margarina i sl. masti', 7),
(1716, '155', 'Prerada i konzervisanje mleka', 7),
(1717, '1551', 'Proizv. mlečnih proizvoda', 7),
(1718, '15510', 'Proizv. mlečnih proizvoda', 7),
(1719, '1552', 'Proizv. sladoleda', 7),
(1720, '15520', 'Proizv. sladoleda', 7),
(1721, '156', 'Proizv. mlinskih proizvoda i skroba', 7),
(1722, '1561', 'Proizv. mlinskih proizvoda', 7),
(1723, '15610', 'Proizv. mlinskih proizvoda', 7),
(1724, '1562', 'Proizv. skroba i proizvoda od skroba', 7),
(1725, '15620', 'Proizv. skroba i proizvoda od skroba', 7),
(1726, '157', 'Proizv. gotove hrane za životinje', 7),
(1727, '1571', 'Proizv. gotove hrane za životinje', 7),
(1728, '15710', 'Proizv. gotove hrane za životinje', 7),
(1729, '1572', 'Proizv. gotove hrane za kućne ljubimce', 7),
(1730, '15720', 'Proizv. gotove hrane za kućne ljubimce', 7),
(1731, '158', 'Proizv. ostalih prehrambenih proizvoda', 7),
(1732, '1581', 'Proizv. hleba i dr. proizvoda od testa', 7),
(1733, '15811', 'Proizv. hleba i peciva', 7),
(1734, '15812', 'Proizv. kolača i dr. proizvoda od testa', 7),
(1735, '1582', 'Proizv. konzervisanih proizvoda od testa', 7),
(1736, '15821', 'Proizv. keksa', 7),
(1737, '15822', 'Dr. konzervisani proizodi od testa', 7),
(1738, '1583', 'Proizv. šećera', 7),
(1739, '15830', 'Proizv. šećera', 7),
(1740, '1584', 'Proizv.čokolade i konditorskih proizvoda', 7),
(1741, '15841', 'Proizv. čokolade i čokoladnih proizvoda', 7),
(1742, '15842', 'Proizv. ostalih konditorskih proizvoda', 7),
(1743, '1585', 'Proizv. makarona i sl. proizvoda', 7),
(1744, '15850', 'Proizv. makarona i sl. proizvoda', 7),
(1745, '1586', 'Prerada čaja i kafe', 7),
(1746, '15860', 'Prerada čaja i kafe', 7),
(1747, '1587', 'Proizv. začina i dr. dodataka hrani', 7),
(1748, '15870', 'Proizv. začina i dr. dodataka hrani', 7),
(1749, '1588', 'Proizv. dijetetskih preparata', 7),
(1750, '15880', 'Proizv. dijetetskih preparata', 7),
(1751, '1589', 'Proizv. dr. prehrambenih proizvoda', 7),
(1752, '15890', 'Proizv. dr. prehrambenih proizvoda', 7),
(1753, '159', 'Proizv. pića', 7),
(1754, '1591', 'Proizv. destilovanih alkoholnih pića', 7),
(1755, '15910', 'Proizv. destilovanih alkoholnih pića', 7),
(1756, '1592', 'Proizv. etil-alkohola', 7),
(1757, '15920', 'Proizv. etil-alkohola', 7),
(1758, '1593', 'Proizv. vina iz svežeg grožđa', 7),
(1759, '15930', 'Proizv. vina iz svežeg grožđa', 7),
(1760, '1594', 'Proizv. vina od ostalog voća', 7),
(1761, '15940', 'Proizv. vina od ostalog voća', 7),
(1762, '1595', 'Proizv. dr. nedestilovanih pića', 7),
(1763, '15950', 'Proizv. dr. nedestilovanih pića', 7),
(1764, '1596', 'Proizv. piva', 7),
(1765, '15960', 'Proizv. piva', 7),
(1766, '1597', 'Proizv. slada', 7),
(1767, '15970', 'Proizv. slada', 7),
(1768, '1598', 'Proizv. mineralne vode i sl. pića', 7),
(1769, '15981', 'Proizv. mineralne vode', 7),
(1770, '15982', 'Proizv. osvežavajućih pića', 7),
(1771, '16', 'Proizv. duvanskih proizvoda', 7),
(1772, '160', 'Proizv. duvanskih proizvoda', 7),
(1773, '1600', 'Proizv. duvanskih proizvoda', 7),
(1774, '16001', 'Fermentacija duvana', 7),
(1775, '16002', 'Prerada duvana', 7),
(1776, '17', 'Proizv. tekstilnih prediva i tkanina', 8),
(1777, '171', 'Proizv. tekstilnih prediva', 8),
(1778, '1711', 'Proizv. prediva pamučnog tipa', 8),
(1779, '17110', 'Proizv. prediva pamučnog tipa', 8),
(1780, '1712', 'Proizv. prediva vunenog tipa', 8),
(1781, '17120', 'Proizv. prediva vunenog tipa', 8),
(1782, '1713', 'Proizv. prediva od češljanih vlakana', 8),
(1783, '17130', 'Proizv. prediva od češljanih vlakana', 8),
(1784, '1714', 'Proizv. prediva lanenog tipa', 8),
(1785, '17140', 'Proizv. prediva lanenog tipa', 8),
(1786, '1715', 'Proizv. prediva svilenog tipa', 8),
(1787, '17150', 'Proizv. prediva svilenog tipa', 8),
(1788, '1716', 'Proizv. konca za šivenje', 8),
(1789, '17160', 'Proizv. konca za šivenje', 8),
(1790, '1717', 'Proizv. ostalih tekstilnih prediva', 8),
(1791, '17170', 'Proizv. ostalih tekstilnih prediva', 8),
(1792, '172', 'Proizv. tkanina', 8),
(1793, '1721', 'Proizv. tkanina pamučnog tipa', 8),
(1794, '17210', 'Proizv. tkanina pamučnog tipa', 8),
(1795, '1722', 'Proizv. tkanina vunenog tipa', 8),
(1796, '17220', 'Proizv. tkanina vunenog tipa', 8),
(1797, '1723', 'Proizv. tkanina od češljanog prediva', 8),
(1798, '17230', 'Proizv. tkanina od češljanog prediva', 8),
(1799, '1724', 'Proizv. tkanina svilenog tipa', 8),
(1800, '17240', 'Proizv. tkanina svilenog tipa', 8),
(1801, '1725', 'Proizv. ostalih tekstilnih tkanina', 8),
(1802, '17250', 'Proizv. ostalih tekstilnih tkanina', 8),
(1803, '173', 'Dovršavanje tkanina', 8),
(1804, '1730', 'Dovršavanje tkanina', 8),
(1805, '17300', 'Dovršavanje tkanina', 8),
(1806, '174', 'Proizv. gotovih tekstilnih predmeta', 8),
(1807, '1740', 'Proizv. gotovih tekstilnih predmeta', 8),
(1808, '17401', 'Proizv. rublja za domaćinstvo', 8),
(1809, '17402', 'Proizv. teške konfekcije', 8),
(1810, '17403', 'Proizv. ćebadi', 8),
(1811, '17404', 'Proizv. dr. gotovih tekstilnih predmeta', 8),
(1812, '175', 'Proizv. ostalih tekstilnih predmeta', 8),
(1813, '1751', 'Proizv. tepiha i prekrivača za pod', 8),
(1814, '17510', 'Proizv. tepiha i prekrivača za pod', 8),
(1815, '1752', 'Proizv. užadi, kanapa i mreža', 8),
(1816, '17520', 'Proizv. užadi, kanapa i mreža', 8),
(1817, '1753', 'Proizv. netkanog tekstila', 8),
(1818, '17530', 'Proizv. netkanog tekstila', 8),
(1819, '1754', 'Ostali nepomenuti tekstilni predmeti', 8),
(1820, '17540', 'Ostali nepomenuti tekstilni predmeti', 8),
(1821, '176', 'Proizv. pletenih i kukičanih tkanina', 8),
(1822, '1760', 'Proizv. pletenih i kukičanih tkanina', 8),
(1823, '17600', 'Proizv. pletenih i kukičanih tkanina', 8),
(1824, '177', 'Proizv. pletenih i kukičanih proizvoda', 8),
(1825, '1771', 'Proizv. pletenih i kukičanih čarapa', 8),
(1826, '17710', 'Proizv. pletenih i kukičanih čarapa', 8),
(1827, '1772', 'Proizv. pletenih i kukičanih pulovera', 8),
(1828, '17720', 'Proizv. pletenih i kukičanih pulovera', 8),
(1829, '18', 'Proizv. odevnih predmeta i krzna', 8),
(1830, '181', 'Proizv. kožne odeće', 8),
(1831, '1810', 'Proizv. kožne odeće', 8),
(1832, '18100', 'Proizv. kožne odeće', 8),
(1833, '182', 'Proizv. dr. odevnih predmeta i pribora', 8),
(1834, '1821', 'Proizv. radne odeće', 8),
(1835, '18210', 'Proizv. radne odeće', 8),
(1836, '1822', 'Proizv. ostale odeće', 8),
(1837, '18220', 'Proizv. ostale odeće', 8),
(1838, '1823', 'Proizv. rublja', 8),
(1839, '18230', 'Proizv. rublja', 8),
(1840, '1824', 'Proizv. dr. odevnih predmeta i pribora', 8),
(1841, '18240', 'Proizv. dr. odevnih predmeta i pribora', 8),
(1842, '183', 'Proizv. krzna i proizvoda od krzna', 8),
(1843, '1830', 'Proizv. krzna i proizvoda od krzna', 8),
(1844, '18300', 'Proizv. krzna i proizvoda od krzna', 8),
(1845, '19', 'Proizv. kože i predmeta od kože, obuće', 9),
(1846, '191', 'Štavljenje i dorada kože', 9),
(1847, '1910', 'Štavljenje i dorada kože', 9),
(1848, '19100', 'Štavljenje i dorada kože', 9),
(1849, '192', 'Proizv. predmeta od kože', 9),
(1850, '1920', 'Proizv. predmeta od kože', 9),
(1851, '19200', 'Proizv. predmeta od kože', 9),
(1852, '193', 'Proizv. obuće', 9),
(1853, '1930', 'Proizv. obuće', 9),
(1854, '19301', 'Proizv. kožne obuće', 9),
(1855, '19302', 'Proizv. obuće od plastičnih masa', 9),
(1856, '19303', 'Proizv. gumene obuće', 9),
(1857, '20', 'Prerada i proizvodi od drveta i plute', 10),
(1858, '201', 'Proizv.rezane građe, impregnacija drveta', 10),
(1859, '2010', 'Proizv.rezane građe, impregnacija drveta', 10),
(1860, '20101', 'Proizv. rezane građe', 10),
(1861, '20102', 'Impregnacija drveta', 10),
(1862, '202', 'Proizv. ploča i tabli od drveta', 10),
(1863, '2020', 'Proizv. ploča i tabli od drveta', 10),
(1864, '20200', 'Proizv. ploča i tabli od drveta', 10),
(1865, '203', 'Proizv. građevinske stolarije', 10),
(1866, '2030', 'Proizv. građevinske stolarije', 10),
(1867, '20300', 'Proizv. građevinske stolarije', 10),
(1868, '204', 'Proizv. ambalaže od drveta', 10),
(1869, '2040', 'Proizv. ambalaže od drveta', 10),
(1870, '20400', 'Proizv. ambalaže od drveta', 10),
(1871, '205', 'Proizv. dr. proizvoda od drveta i plute', 10),
(1872, '2051', 'Proizv. dr. proizvoda od drveta', 10),
(1873, '20510', 'Proizv. dr. proizvoda od drveta', 10),
(1874, '2052', 'Proizv. predmeta od plute i slame', 10),
(1875, '20521', 'Proizv. predmeta od plute', 10),
(1876, '20522', 'Proizv. predmeta od slame, pruća i sl.', 10),
(1877, '21', 'Proizv.celuloze, papira i prerada papira', 11),
(1878, '211', 'Proizv. celuloze, papira i kartona', 11),
(1879, '2111', 'Proizv. celuloze', 11),
(1880, '21110', 'Proizv. celuloze', 11),
(1881, '2112', 'Proizv. papira i kartona', 11),
(1882, '21120', 'Proizv. papira i kartona', 11),
(1883, '212', 'Proizv. predmeta od papira i kartona', 11),
(1884, '2121', 'Proizv. talasastog papira i ambalaže', 11),
(1885, '21210', 'Proizv. talasastog papira i ambalaže', 11),
(1886, '2122', 'Proizv. kućnih predmeta i sl. od papira', 11),
(1887, '21220', 'Proizv. kućnih predmeta i sl. od papira', 11),
(1888, '2123', 'Konfekcioniranje papira', 11),
(1889, '21230', 'Konfekcioniranje papira', 11),
(1890, '2124', 'Proizv. zidnih tapeta', 11),
(1891, '21240', 'Proizv. zidnih tapeta', 11),
(1892, '2125', 'Proizv. ostalih predmeta od papira', 11),
(1893, '21250', 'Proizv. ostalih predmeta od papira', 11),
(1894, '22', 'Izdavanje, štampanje i reprodukcija', 11),
(1895, '221', 'Izdavačka delatnost', 11),
(1896, '2211', 'Izdavanje knjiga, brošura i sl.', 11),
(1897, '22110', 'Izdavanje knjiga, brošura i sl.', 11),
(1898, '2212', 'Izdavanje novina', 11),
(1899, '22120', 'Izdavanje novina', 11),
(1900, '2213', 'Izdavanje časopisa i sl. izdanja', 11),
(1901, '22130', 'Izdavanje časopisa i sl. izdanja', 11),
(1902, '2214', 'Izdavanje zvučnih zapisa', 11),
(1903, '22140', 'Izdavanje zvučnih zapisa', 11),
(1904, '2215', 'Ostala izdavačka delatnost', 11),
(1905, '22150', 'Ostala izdavačka delatnost', 11),
(1906, '222', 'Štampanje i štamparske usluge', 11),
(1907, '2221', 'Štampanje novina', 11),
(1908, '22210', 'Štampanje novina', 11),
(1909, '2222', 'Štampanje, ostalo', 11),
(1910, '22220', 'Štampanje, ostalo', 11),
(1911, '2223', 'Knjigovezački i završni radovi', 11),
(1912, '22230', 'Knjigovezački i završni radovi', 11),
(1913, '2224', 'Reprodukcija i slaganje', 11),
(1914, '22240', 'Reprodukcija i slaganje', 11),
(1915, '2225', 'Ostale aktivnosti u vezi sa štampanjem', 11),
(1916, '22250', 'Ostale aktivnosti u vezi sa štampanjem', 11),
(1917, '223', 'Reprodukcija snimljenih medija', 11),
(1918, '2231', 'Reprodukcija zvučnih zapisa', 11),
(1919, '22310', 'Reprodukcija zvučnih zapisa', 11),
(1920, '2232', 'Reprodukcija video-zapisa', 11),
(1921, '22320', 'Reprodukcija video-zapisa', 11),
(1922, '2233', 'Reprodukcija kompjuterskih medija', 11),
(1923, '22330', 'Reprodukcija kompjuterskih medija', 11),
(1924, '23', 'Proizv. koksa i derivata nafte', 12),
(1925, '231', 'Proizv. produkata koksovanja', 12),
(1926, '2310', 'Proizv. produkata koksovanja', 12),
(1927, '23100', 'Proizv. produkata koksovanja', 12),
(1928, '232', 'Proizv. derivata nafte', 12),
(1929, '2320', 'Proizv. derivata nafte', 12),
(1930, '23201', 'Proizv. derivata nafte', 12),
(1931, '23202', 'Proizv. bitumenskih materijala', 12),
(1932, '233', 'Pripremanje nuklearnog goriva', 12),
(1933, '2330', 'Pripremanje nuklearnog goriva', 12),
(1934, '23300', 'Pripremanje nuklearnog goriva', 12),
(1935, '24', 'Proizv. hemikalija i hemijskih proizvoda', 13),
(1936, '241', 'Proizv. osnovnih hemikalija', 13),
(1937, '2411', 'Proizv. industrijskih gasova', 13),
(1938, '24110', 'Proizv. industrijskih gasova', 13),
(1939, '2412', 'Proizv. boja i pigmenata', 13),
(1940, '24120', 'Proizv. boja i pigmenata', 13),
(1941, '2413', 'Proizv. ostalih neorganskih hemikalija', 13),
(1942, '24130', 'Proizv. ostalih neorganskih hemikalija', 13),
(1943, '2414', 'Proizv. ostalih organskih hemikalija', 13),
(1944, '24140', 'Proizv. ostalih organskih hemikalija', 13),
(1945, '2415', 'Proizv. đubriva i azotnih jedinjenja', 13),
(1946, '24150', 'Proizv. đubriva i azotnih jedinjenja', 13),
(1947, '2416', 'Proizv. plastičnih masa, primarni oblici', 13),
(1948, '24160', 'Proizv. plastičnih masa, primarni oblici', 13),
(1949, '2417', 'Proizv. kaučuka, primarni oblici', 13),
(1950, '24170', 'Proizv. kaučuka, primarni oblici', 13),
(1951, '242', 'Proizv. hemikalija za poljoprivredu', 13),
(1952, '2420', 'Proizv. hemikalija za poljoprivredu', 13),
(1953, '24200', 'Proizv. hemikalija za poljoprivredu', 13),
(1954, '243', 'Proizv. boja, lakova i sl.', 13),
(1955, '2430', 'Proizv. boja, lakova i sl.', 13),
(1956, '24300', 'Proizv. boja, lakova i sl.', 13),
(1957, '244', 'Proizv. farmaceutskih proizvoda', 13),
(1958, '2441', 'Proizv. farmaceutskih sirovina', 13),
(1959, '24410', 'Proizv. farmaceutskih sirovina', 13),
(1960, '2442', 'Proizv. farmaceutskih preparata', 13),
(1961, '24420', 'Proizv. farmaceutskih preparata', 13),
(1962, '245', 'Proizv. sapuna i toaletnih preparata', 13),
(1963, '2451', 'Proizv. sapuna i sl. preparata', 13),
(1964, '24510', 'Proizv. sapuna i sl. preparata', 13),
(1965, '2452', 'Proizv. toaletnih preparata', 13),
(1966, '24520', 'Proizv. toaletnih preparata', 13),
(1967, '246', 'Proizv. ostalih hemijskih proizvoda', 13),
(1968, '2461', 'Proizv. eksploziva', 13),
(1969, '24610', 'Proizv. eksploziva', 13),
(1970, '2462', 'Proizv. tutkala i želatina', 13),
(1971, '24620', 'Proizv. tutkala i želatina', 13),
(1972, '2463', 'Proizv. eteričnih ulja', 13),
(1973, '24630', 'Proizv. eteričnih ulja', 13),
(1974, '2464', 'Proizv. fotografskog materijala', 13),
(1975, '24640', 'Proizv. fotografskog materijala', 13),
(1976, '2465', 'Proizv. gotovih nesnimljenih medija', 13),
(1977, '24650', 'Proizv. gotovih nesnimljenih medija', 13),
(1978, '2466', 'Proizv. ostalih hemijskih proizvoda', 13),
(1979, '24660', 'Proizv. ostalih hemijskih proizvoda', 13),
(1980, '247', 'Proizv. veštačkih i sintetičkih vlakana', 13),
(1981, '2470', 'Proizv. veštačkih i sintetičkih vlakana', 13),
(1982, '24700', 'Proizv. veštačkih i sintetičkih vlakana', 13),
(1983, '25', 'Proizv. proizvoda od gume i plastike', 14),
(1984, '251', 'Proizv. proizvoda od gume', 14),
(1985, '2511', 'Proizv. guma za vozila', 14),
(1986, '25110', 'Proizv. guma za vozila', 14),
(1987, '2512', 'Protektiranje guma za vozila', 14),
(1988, '25120', 'Protektiranje guma za vozila', 14),
(1989, '2513', 'Proizv. ostalih proizvoda od gume', 14),
(1990, '25130', 'Proizv. ostalih proizvoda od gume', 14),
(1991, '252', 'Proizv. proizvoda od plastičnih masa', 14),
(1992, '2521', 'Proizv. ploča i sl. od plastičnih masa', 14),
(1993, '25210', 'Proizv. ploča i sl. od plastičnih masa', 14),
(1994, '2522', 'Proizv. ambalaže od plastičnih masa', 14),
(1995, '25220', 'Proizv. ambalaže od plastičnih masa', 14),
(1996, '2523', 'Proizv. predmeta za građevinarstvo', 14),
(1997, '25230', 'Proizv. predmeta za građevinarstvo', 14),
(1998, '2524', 'Proizv. ostalih proizvoda od plastike', 14),
(1999, '25240', 'Proizv. ostalih proizvoda od plastike', 14),
(2000, '26', 'Proizv. proizvoda od ostalih minerala', 15),
(2001, '261', 'Proizv. stakla i proizvoda od stakla', 15),
(2002, '2611', 'Proizv. ravnog stakla', 15),
(2003, '26110', 'Proizv. ravnog stakla', 15),
(2004, '2612', 'Oblikovanje i obrada ravnog stakla', 15),
(2005, '26120', 'Oblikovanje i obrada ravnog stakla', 15),
(2006, '2613', 'Proizv. šupljeg stakla', 15),
(2007, '26131', 'Proizv. ambalažnog stakla', 15),
(2008, '26132', 'Proizv. ostalog šupljeg stakla', 15),
(2009, '2614', 'Proizv. staklenih vlakana', 15),
(2010, '26140', 'Proizv. staklenih vlakana', 15),
(2011, '2615', 'Proizv. i obrada ostalog stakla', 15),
(2012, '26150', 'Proizv. i obrada ostalog stakla', 15),
(2013, '262', 'Proizv. keramičkih proizvoda', 15),
(2014, '2621', 'Proizv. kućnih keramičkih predmeta', 15),
(2015, '26210', 'Proizv. kućnih keramičkih predmeta', 15),
(2016, '2622', 'Proizv. keramičkih sanitarnih uređaja', 15),
(2017, '26220', 'Proizv. keramičkih sanitarnih uređaja', 15),
(2018, '2623', 'Proizv. keramičkih izolatora i pribora', 15),
(2019, '26230', 'Proizv. keramičkih izolatora i pribora', 15),
(2020, '2624', 'Proizv. ostalih tehničkih proizvoda', 15),
(2021, '26240', 'Proizv. ostalih tehničkih proizvoda', 15),
(2022, '2625', 'Proizv. ostalih keramičkih proizvoda', 15),
(2023, '26250', 'Proizv. ostalih keramičkih proizvoda', 15),
(2024, '2626', 'Proizv. vatrostalne keramike', 15),
(2025, '26260', 'Proizv. vatrostalne keramike', 15),
(2026, '263', 'Proizv. keramičkih pločica i ploča', 15),
(2027, '2630', 'Proizv. keramičkih pločica i ploča', 15),
(2028, '26300', 'Proizv. keramičkih pločica i ploča', 15),
(2029, '264', 'Proizv. opeke i crepa od gline', 15),
(2030, '2640', 'Proizv. opeke i crepa od gline', 15),
(2031, '26400', 'Proizv. opeke i crepa od gline', 15),
(2032, '265', 'Proizv. cementa, kreča i gipsa', 15),
(2033, '2651', 'Proizv. cementa', 15),
(2034, '26510', 'Proizv. cementa', 15),
(2035, '2652', 'Proizv. kreča', 15),
(2036, '26520', 'Proizv. kreča', 15),
(2037, '2653', 'Proizv. gipsa', 15),
(2038, '26530', 'Proizv. gipsa', 15),
(2039, '266', 'Proizv. proizvoda od betona i gipsa', 15),
(2040, '2661', 'Proizv. proizvoda od betona', 15),
(2041, '26610', 'Proizv. proizvoda od betona', 15),
(2042, '2662', 'Proizv. proizvoda od gipsa', 15),
(2043, '26620', 'Proizv. proizvoda od gipsa', 15),
(2044, '2663', 'Proizv. gotove betonske smeše', 15),
(2045, '26630', 'Proizv. gotove betonske smeše', 15),
(2046, '2664', 'Proizv. maltera', 15),
(2047, '26640', 'Proizv. maltera', 15),
(2048, '2665', 'Proizv. vlaknato-cementnih proizvoda', 15),
(2049, '26650', 'Proizv. vlaknato-cementnih proizvoda', 15),
(2050, '2666', 'Proizv. dr. proizvoda od betona i gipsa', 15),
(2051, '26660', 'Proizv. dr. proizvoda od betona i gipsa', 15),
(2052, '267', 'Sečenje, oblikovanje i obrada kamena', 15),
(2053, '2670', 'Sečenje, oblikovanje i obrada kamena', 15),
(2054, '26700', 'Sečenje, oblikovanje i obrada kamena', 15),
(2055, '268', 'Proizv. predmeta od nepomenutih minerala', 15),
(2056, '2681', 'Proizv. brusnih proizvoda', 15),
(2057, '26810', 'Proizv. brusnih proizvoda', 15),
(2058, '2682', 'Proizv. proizvoda od azbesta i sl.', 15),
(2059, '26820', 'Proizv. proizvoda od azbesta i sl.', 15),
(2060, '27', 'Proizv. osnovnih metala', 16),
(2061, '271', 'Proizv. sirovog gvožđa i čelika', 16),
(2062, '2710', 'Proizv. sirovog gvožđa i čelika', 16),
(2063, '27101', 'Proizv. gvožđa', 16),
(2064, '27102', 'Proizv. čelika', 16),
(2065, '27103', 'Proizv. visokougljeničnih fero-legura', 16),
(2066, '272', 'Proizv. cevi', 16),
(2067, '2721', 'Proizv. cevi od livenog gvožđa', 16),
(2068, '27210', 'Proizv. cevi od livenog gvožđa', 16),
(2069, '2722', 'Proizv. cevi od čelika', 16),
(2070, '27220', 'Proizv. cevi od čelika', 16),
(2071, '273', 'Ostala primarna prerada gvožđa i čelika', 16),
(2072, '2731', 'Hladno vučenje čelika', 16),
(2073, '27310', 'Hladno vučenje čelika', 16),
(2074, '2732', 'Hladno valjanje uzanih traka', 16),
(2075, '27320', 'Hladno valjanje uzanih traka', 16),
(2076, '2733', 'Hladno oblikovanje profila', 16),
(2077, '27330', 'Hladno oblikovanje profila', 16),
(2078, '2734', 'Vučenje žice', 16),
(2079, '27340', 'Vučenje žice', 16),
(2080, '2735', 'Dr. prerada gvožđa i čelika, fero-legure', 16),
(2081, '27351', 'Dr. prerada gvožđa i čelika', 16),
(2082, '27352', 'Proizv. ostalih fero-legura', 16),
(2083, '274', 'Proizv. plemenitih i obojenih metala', 16),
(2084, '2741', 'Proizv. plemenitih metala', 16),
(2085, '27411', 'Proizv. plemenitih metala', 16),
(2086, '27412', 'Prerada plemenitih metala', 16),
(2087, '2742', 'Proizv. aluminijuma', 16),
(2088, '27421', 'Proizv. glinice', 16),
(2089, '27422', 'Proizv. aluminijuma', 16),
(2090, '27423', 'Prerada aluminijuma', 16),
(2091, '2743', 'Proizv. olova, cinka i kalaja', 16),
(2092, '27431', 'Proizv. olova', 16),
(2093, '27432', 'Prerada olova', 16),
(2094, '27433', 'Proizv. cinka', 16),
(2095, '27434', 'Prerada cinka', 16),
(2096, '27435', 'Proizv. kalaja', 16),
(2097, '27436', 'Prerada kalaja', 16),
(2098, '2744', 'Proizv. bakra', 16),
(2099, '27441', 'Proizv. bakra', 16),
(2100, '27442', 'Prerada bakra', 16),
(2101, '2745', 'Proizv. ostalih obojenih metala', 16),
(2102, '27451', 'Proizv. antimona', 16),
(2103, '27452', 'Proizv. žive', 16),
(2104, '27453', 'Proizv. nepomenutih obojenih metala', 16),
(2105, '27454', 'Prerada ostalih obojenih metala', 16),
(2106, '275', 'Livenje metala', 16),
(2107, '2751', 'Livenje gvožđa', 16),
(2108, '27510', 'Livenje gvožđa', 16),
(2109, '2752', 'Livenje čelika', 16),
(2110, '27520', 'Livenje čelika', 16),
(2111, '2753', 'Livenje lakih metala', 16),
(2112, '27530', 'Livenje lakih metala', 16),
(2113, '2754', 'Livenje ostalih obojenih metala', 16),
(2114, '27540', 'Livenje ostalih obojenih metala', 16),
(2115, '28', 'Proizv. metalnih proizvoda, osim mašina', 16),
(2116, '281', 'Proizv.metalnih konstrukcionih proizvoda', 16),
(2117, '2811', 'Proizv. metalnih konstrukcija', 16),
(2118, '28110', 'Proizv. metalnih konstrukcija', 16),
(2119, '2812', 'Proizv. metalne stolarije', 16),
(2120, '28120', 'Proizv. metalne stolarije', 16),
(2121, '282', 'Proizv. sudova, kotlova i radijatora', 16),
(2122, '2821', 'Proizv. cisterni, rezervoara i sudova', 16),
(2123, '28210', 'Proizv. cisterni, rezervoara i sudova', 16),
(2124, '2822', 'Proizv. kotlova i radijatora', 16),
(2125, '28220', 'Proizv. kotlova i radijatora', 16),
(2126, '283', 'Proizv. parnih kotlova', 16),
(2127, '2830', 'Proizv. parnih kotlova', 16),
(2128, '28300', 'Proizv. parnih kotlova', 16),
(2129, '284', 'Kovanje metala i metalurgija praha', 16),
(2130, '2840', 'Kovanje metala i metalurgija praha', 16),
(2131, '28400', 'Kovanje metala i metalurgija praha', 16),
(2132, '285', 'Prevlačenje metala i mašinski radovi', 16),
(2133, '2851', 'Obrada i prevlačenje metala', 16),
(2134, '28510', 'Obrada i prevlačenje metala', 16),
(2135, '2852', 'Opšti mašinski radovi', 16),
(2136, '28520', 'Opšti mašinski radovi', 16),
(2137, '286', 'Proizv. sečiva i sl. robe opšte namene', 16),
(2138, '2861', 'Proizv. sečiva', 16),
(2139, '28610', 'Proizv. sečiva', 16),
(2140, '2862', 'Proizv. alata', 16),
(2141, '28620', 'Proizv. alata', 16),
(2142, '2863', 'Proizv. brava i okova', 16),
(2143, '28630', 'Proizv. brava i okova', 16),
(2144, '287', 'Proizv. ostalih metalnih proizvoda', 16),
(2145, '2871', 'Proizv. buradi i sl. ambalaže od čelika', 16),
(2146, '28710', 'Proizv. buradi i sl. ambalaže od čelika', 16),
(2147, '2872', 'Proizv. ambalaže od lakih metala', 16),
(2148, '28720', 'Proizv. ambalaže od lakih metala', 16),
(2149, '2873', 'Proizv. žičanih proizvoda', 16),
(2150, '28730', 'Proizv. žičanih proizvoda', 16),
(2151, '2874', 'Proizv. veznih elemenata, lanaca i sl.', 16),
(2152, '28740', 'Proizv. veznih elemenata, lanaca i sl.', 16),
(2153, '2875', 'Proizv. ostalih metalnih proizvoda', 16),
(2154, '28750', 'Proizv. ostalih metalnih proizvoda', 16),
(2155, '29', 'Proizv. ostalih mašina i uređaja', 17),
(2156, '291', 'Proizv. energetskih mašina, osim motora', 17),
(2157, '2911', 'Proizv. motora i turbina, osim za vozila', 17),
(2158, '29110', 'Proizv. motora i turbina, osim za vozila', 17),
(2159, '2912', 'Proizv. pumpi i kompresora', 17),
(2160, '29120', 'Proizv. pumpi i kompresora', 17),
(2161, '2913', 'Proizv. slavina i ventila', 17),
(2162, '29130', 'Proizv. slavina i ventila', 17),
(2163, '2914', 'Proizv. ležajeva, zupčanika i sl.', 17),
(2164, '29140', 'Proizv. ležajeva, zupčanika i sl.', 17),
(2165, '292', 'Proizv. ostalih mašina opšte namene', 17),
(2166, '2921', 'Proizv. industrijskih peći i gorionika', 17),
(2167, '29210', 'Proizv. industrijskih peći i gorionika', 17),
(2168, '2922', 'Proizv. uređaja za dizanje i prenošenje', 17),
(2169, '29220', 'Proizv. uređaja za dizanje i prenošenje', 17),
(2170, '2923', 'Proizv. rashladne opreme, osim kućne', 17),
(2171, '29230', 'Proizv. rashladne opreme, osim kućne', 17),
(2172, '2924', 'Ostale nepomenute mašina opšte namene', 17),
(2173, '29240', 'Ostale nepomenute mašina opšte namene', 17),
(2174, '293', 'Proizv. mašina za poljoprivredu', 17),
(2175, '2931', 'Proizv. traktora za poljoprivredu', 17),
(2176, '29310', 'Proizv. traktora za poljoprivredu', 17),
(2177, '2932', 'Proizv. ostalih mašina za poljoprivredu', 17),
(2178, '29320', 'Proizv. ostalih mašina za poljoprivredu', 17),
(2179, '294', 'Proizv. alatnih mašina', 17),
(2180, '2940', 'Proizv. alatnih mašina', 17),
(2181, '29400', 'Proizv. alatnih mašina', 17),
(2182, '295', 'Proizv. dr. mašina za specijalne namene', 17),
(2183, '2951', 'Proizv. mašina za metalurgiju', 17),
(2184, '29510', 'Proizv. mašina za metalurgiju', 17),
(2185, '2952', 'Proizv. građevinskih mašina', 17),
(2186, '29520', 'Proizv. građevinskih mašina', 17),
(2187, '2953', 'Proizv. mašina za industriju hrane, pića', 17),
(2188, '29530', 'Proizv. mašina za industriju hrane, pića', 17),
(2189, '2954', 'Proizv. mašina za tekstilnu industriju', 17),
(2190, '29540', 'Proizv. mašina za tekstilnu industriju', 17),
(2191, '2955', 'Proizv. mašina za industriju papira', 17),
(2192, '29550', 'Proizv. mašina za industriju papira', 17),
(2193, '2956', 'Proizv. dr. mašina za specijalne namene', 17),
(2194, '29560', 'Proizv. dr. mašina za specijalne namene', 17),
(2195, '296', 'Proizv. oružja i municije', 17),
(2196, '2960', 'Proizv. oružja i municije', 17),
(2197, '29600', 'Proizv. oružja i municije', 17),
(2198, '297', 'Proizv. kućnih aparata', 17),
(2199, '2971', 'Proizv. električnih kućnih aparata', 17),
(2200, '29710', 'Proizv. električnih kućnih aparata', 17),
(2201, '2972', 'Proizv. neelektričnih kućnih aparata', 17),
(2202, '29720', 'Proizv. neelektričnih kućnih aparata', 17),
(2203, '30', 'Proizv.kancelarijskih i računskih mašina', 18),
(2204, '300', 'Proizv.kancelarijskih i računskih mašina', 18),
(2205, '3001', 'Proizv. kancelarijskih mašina', 18),
(2206, '30010', 'Proizv. kancelarijskih mašina', 18),
(2207, '3002', 'Proizv. računskih mašina', 18),
(2208, '30020', 'Proizv. računskih mašina', 18),
(2209, '31', 'Proizv. dr. električnih mašina i aparata', 18),
(2210, '311', 'Proizv. električnih motora i generatora', 18),
(2211, '3110', 'Proizv. električnih motora i generatora', 18),
(2212, '31100', 'Proizv. električnih motora i generatora', 18),
(2213, '312', 'Proizv. opreme za distribuciju el. energ.', 18),
(2214, '3120', 'Proizv. opreme za distribuciju el. energ.', 18),
(2215, '31200', 'Proizv. opreme za distribuciju el. energ.', 18),
(2216, '313', 'Proizv. izolovane žice i kablova', 18),
(2217, '3130', 'Proizv. izolovane žice i kablova', 18),
(2218, '31300', 'Proizv. izolovane žice i kablova', 18),
(2219, '314', 'Proizv. akumulatora, ćelija i baterija', 18),
(2220, '3140', 'Proizv. akumulatora, ćelija i baterija', 18),
(2221, '31400', 'Proizv. akumulatora, ćelija i baterija', 18),
(2222, '315', 'Proizv. sijalica i uređaja za osvetljenje', 18),
(2223, '3150', 'Proizv. sijalica i uređaja za osvetljenje', 18),
(2224, '31500', 'Proizv. sijalica i uređaja za osvetljenje', 18),
(2225, '316', 'Proizv. ostale električne opreme', 18),
(2226, '3161', 'Proizv. elektro-opreme za motore, vozila', 18),
(2227, '31610', 'Proizv. elektro-opreme za motore, vozila', 18),
(2228, '3162', 'Proizv. dr. električne opreme', 18),
(2229, '31621', 'Proizv. ugljeno-grafitnih proizvoda', 18),
(2230, '31622', 'Proizv. elektroinstalacionog materijala', 18),
(2231, '32', 'Proizv. radio, TV i komunikacine opreme', 18),
(2232, '321', 'Proizv. elektronskih komponenata', 18),
(2233, '3210', 'Proizv. elektronskih komponenata', 18),
(2234, '32100', 'Proizv. elektronskih komponenata', 18),
(2235, '322', 'Proizv. TV i radio-predajnika', 18),
(2236, '3220', 'Proizv. TV i radio-predajnika', 18),
(2237, '32200', 'Proizv. TV i radio-predajnika', 18),
(2238, '323', 'Proizv. TV i radio-prijemnika', 18),
(2239, '3230', 'Proizv. TV i radio-prijemnika', 18),
(2240, '32300', 'Proizv. TV i radio-prijemnika', 18),
(2241, '33', 'Proizv.preciznih i optičkih instrumenata', 18),
(2242, '331', 'Proizv. medicinske i hirurške opreme', 18),
(2243, '3310', 'Proizv. medicinske i hirurške opreme', 18),
(2244, '33101', 'Proizv. rendgen aparata', 18),
(2245, '33102', 'Proizv. ortopedskih aparata i dr. opreme', 18),
(2246, '332', 'Proizv. mernih instrumenata i aparata', 18),
(2247, '3320', 'Proizv. mernih instrumenata i aparata', 18),
(2248, '33200', 'Proizv. mernih instrumenata i aparata', 18),
(2249, '333', 'Proizv. opreme za industrijsku kontrolu', 18),
(2250, '3330', 'Proizv. opreme za industrijsku kontrolu', 18),
(2251, '33300', 'Proizv. opreme za industrijsku kontrolu', 18),
(2252, '334', 'Proizv. optičke i fotografske opreme', 18),
(2253, '3340', 'Proizv. optičke i fotografske opreme', 18),
(2254, '33400', 'Proizv. optičke i fotografske opreme', 18),
(2255, '335', 'Proizv. satova i časovnika', 18),
(2256, '3350', 'Proizv. satova i časovnika', 18),
(2257, '33500', 'Proizv. satova i časovnika', 18),
(2258, '34', 'Proizv. motornih vozila i prikolica', 19),
(2259, '341', 'Proizv. motornih vozila', 19),
(2260, '3410', 'Proizv. motornih vozila', 19),
(2261, '34101', 'Proizv. motora za motorna vozila', 19),
(2262, '34102', 'Proizv. kamiona i specijalnih vozila', 19),
(2263, '34103', 'Proizv. automobila', 19),
(2264, '34104', 'Proizv. traktora, osim za poljoprivredu', 19),
(2265, '342', 'Proizv. karoserija, prikolica i sl.', 19),
(2266, '3420', 'Proizv. karoserija, prikolica i sl.', 19),
(2267, '34200', 'Proizv. karoserija, prikolica i sl.', 19),
(2268, '343', 'Proizv. delova i pribora za vozila', 19),
(2269, '3430', 'Proizv. delova i pribora za vozila', 19),
(2270, '34300', 'Proizv. delova i pribora za vozila', 19),
(2271, '35', 'Proizv. ostalih saobraćajnih sredstava', 19),
(2272, '351', 'Izgradnja i opravka brodova i čamaca', 19),
(2273, '3511', 'Izgradnja i opravka brodova', 19),
(2274, '35110', 'Izgradnja i opravka brodova', 19),
(2275, '3512', 'Izgradnja i opravka čamaca', 19),
(2276, '35120', 'Izgradnja i opravka čamaca', 19),
(2277, '352', 'Proizv. lokomotiva i voznog parka', 19),
(2278, '3520', 'Proizv. lokomotiva i voznog parka', 19),
(2279, '35201', 'Proizv. šinskih vozila', 19),
(2280, '35202', 'Opravka šinskih vozila', 19),
(2281, '353', 'Proizv. vazdušnih i svemirskih letilica', 19),
(2282, '3530', 'Proizv. vazdušnih i svemirskih letilica', 19),
(2283, '35300', 'Proizv. vazdušnih i svemirskih letilica', 19),
(2284, '354', 'Proizv. motocikala i bicikala', 19),
(2285, '3541', 'Proizv. motocikala', 19),
(2286, '35410', 'Proizv. motocikala', 19),
(2287, '3542', 'Proizv. bicikala', 19),
(2288, '35420', 'Proizv. bicikala', 19),
(2289, '3543', 'Proizv. sredstava za prevoz invalida', 19),
(2290, '35430', 'Proizv. sredstava za prevoz invalida', 19),
(2291, '355', 'Proizv. dr. saobraćajnih sredstava', 19),
(2292, '3550', 'Proizv. dr. saobraćajnih sredstava', 19),
(2293, '35500', 'Proizv. dr. saobraćajnih sredstava', 19),
(2294, '36', 'Proizv. nameštaja i sl. proizvoda', 20),
(2295, '361', 'Proizv. nameštaja', 20),
(2296, '3611', 'Proizv. stolica i sedišta', 20),
(2297, '36110', 'Proizv. stolica i sedišta', 20),
(2298, '3612', 'Proizv. nameštaja za kancelarije', 20),
(2299, '36120', 'Proizv. nameštaja za kancelarije', 20),
(2300, '3613', 'Proizv. kuhinjskog nameštaja', 20),
(2301, '36130', 'Proizv. kuhinjskog nameštaja', 20),
(2302, '3614', 'Proizv. ostalog nameštaja', 20),
(2303, '36140', 'Proizv. ostalog nameštaja', 20),
(2304, '3615', 'Proizv. madraca', 20),
(2305, '36150', 'Proizv. madraca', 20),
(2306, '362', 'Proizv. nakita', 20),
(2307, '3621', 'Kovanje novca i medalja', 20),
(2308, '36210', 'Kovanje novca i medalja', 20),
(2309, '3622', 'Proizv. nakita i sl. predmeta', 20),
(2310, '36220', 'Proizv. nakita i sl. predmeta', 20),
(2311, '363', 'Proizv. muzičkih instrumenata', 20),
(2312, '3630', 'Proizv. muzičkih instrumenata', 20),
(2313, '36300', 'Proizv. muzičkih instrumenata', 20),
(2314, '364', 'Proizv. predmeta za sportske potrebe', 20),
(2315, '3640', 'Proizv. predmeta za sportske potrebe', 20),
(2316, '36400', 'Proizv. predmeta za sportske potrebe', 20),
(2317, '365', 'Proizv. igara i igračaka', 20),
(2318, '3650', 'Proizv. igara i igračaka', 20),
(2319, '36500', 'Proizv. igara i igračaka', 20),
(2320, '366', 'Proizv. ostalih raznovrsnih predmeta', 20),
(2321, '3661', 'Proizv. imitacije nakita', 20),
(2322, '36610', 'Proizv. imitacije nakita', 20),
(2323, '3662', 'Proizv. metli i četaka', 20),
(2324, '36620', 'Proizv. metli i četaka', 20),
(2325, '3663', 'Ostala proizv. raznovrsnih predmeta', 20),
(2326, '36631', 'Proizv. šibica', 20),
(2327, '36632', 'Proizv. suncobrana i kišobrana', 20),
(2328, '36633', 'Proizv. ostalih raznovrsnih proizvoda', 20),
(2329, '37', 'Reciklaža', 20),
(2330, '371', 'Reciklaža metalnih otpadaka i ostataka', 20),
(2331, '3710', 'Reciklaža metalnih otpadaka i ostataka', 20),
(2332, '37100', 'Reciklaža metalnih otpadaka i ostataka', 20),
(2333, '372', 'Reciklaža nemetalnih otpadaka i ostataka', 20),
(2334, '3720', 'Reciklaža nemetalnih otpadaka i ostataka', 20),
(2335, '37200', 'Reciklaža nemetalnih otpadaka i ostataka', 20),
(2336, '40', 'Proizv. el. energije, gasa i tople vode', 21),
(2337, '401', 'Proizv. i distribucija el. energije', 21),
(2338, '4010', 'Proizv. i distribucija el. energije', 21),
(2339, '40101', 'Proizv. hidroelektrične energije', 21),
(2340, '40102', 'Proizv. termoelektrične energije', 21),
(2341, '40103', 'Proizv. nuklearno-električne energije', 21),
(2342, '40104', 'Proizv. el. energije iz drugih izvora', 21),
(2343, '40105', 'Prenos električne energije', 21),
(2344, '40106', 'Distribucija električne energije', 21),
(2345, '402', 'Proizv. i distribucija gasa', 21),
(2346, '4020', 'Proizv. i distribucija gasa', 21),
(2347, '40201', 'Proizv. karbogasa', 21),
(2348, '40202', 'Proizv. gasa za komunalne svrhe', 21),
(2349, '40203', 'Distribucija gasa', 21),
(2350, '403', 'Proizv. i snabdevanje parom, toplom vodom', 21),
(2351, '4030', 'Proizv. i snabdevanje parom, toplom vodom', 21),
(2352, '40300', 'Proizv. i snabdevanje parom, toplom vodom', 21),
(2353, '41', 'Prečišćavanje i distribucija vode', 21),
(2354, '410', 'Prečišćavanje i distribucija vode', 21),
(2355, '4100', 'Prečišćavanje i distribucija vode', 21),
(2356, '41000', 'Prečišćavanje i distribucija vode', 21),
(2357, '45', 'Građevinarstvo', 22),
(2358, '451', 'Pripremni radovi', 22),
(2359, '4511', 'Rušenje objekata, zemljani radovi', 22),
(2360, '45110', 'Rušenje objekata, zemljani radovi', 22),
(2361, '4512', 'Ispitivanje terena bušenjem i sondiranjem', 22),
(2362, '45120', 'Ispitivanje terena bušenjem i sondiranjem', 22),
(2363, '452', 'Izgradnja objekata i delova, niskogradnja', 22),
(2364, '4521', 'Grubi građevinski radovi', 22),
(2365, '45210', 'Grubi građevinski radovi', 22),
(2366, '4522', 'Montaža krovnih konstrukcija', 22),
(2367, '45220', 'Montaža krovnih konstrukcija', 22),
(2368, '4523', 'Izgradnja saobraćajnica, pista i sl.', 22),
(2369, '45230', 'Izgradnja saobraćajnica, pista i sl.', 22),
(2370, '4524', 'Izgradnja hidrograđevinskih objekata', 22),
(2371, '45240', 'Izgradnja hidrograđevinskih objekata', 22),
(2372, '4525', 'Ost.građevinski i specijalizovani radovi', 22),
(2373, '45250', 'Ost.građevinski i specijalizovani radovi', 22),
(2374, '453', 'Instalacioni radovi', 22),
(2375, '4531', 'Postavljanje elektro-instalacija i opreme', 22),
(2376, '45310', 'Postavljanje elektro-instalacija i opreme', 22),
(2377, '4532', 'Izolacioni radovi', 22),
(2378, '45320', 'Izolacioni radovi', 22),
(2379, '4533', 'Postavljanje cevnih instalacija', 22),
(2380, '45330', 'Postavljanje cevnih instalacija', 22),
(2381, '4534', 'Ostali instalacioni radovi', 22),
(2382, '45340', 'Ostali instalacioni radovi', 22),
(2383, '454', 'Završni radovi', 22),
(2384, '4541', 'Malterisanje', 22),
(2385, '45410', 'Malterisanje', 22),
(2386, '4542', 'Ugradnja stolarije', 22),
(2387, '45420', 'Ugradnja stolarije', 22),
(2388, '4543', 'Postavljanje podnih i zidnih obloga', 22),
(2389, '45430', 'Postavljanje podnih i zidnih obloga', 22),
(2390, '4544', 'Bojenje i zastakljivanje', 22),
(2391, '45440', 'Bojenje i zastakljivanje', 22),
(2392, '4545', 'Ostali završni radovi', 22),
(2393, '45450', 'Ostali završni radovi', 22),
(2394, '455', 'Iznajmljivanje građevinske opreme', 22),
(2395, '4550', 'Iznajmljivanje građevinske opreme', 22),
(2396, '45500', 'Iznajmljivanje građevinske opreme', 22),
(2397, '50', 'Prodaja i opravka vozila', 23),
(2398, '501', 'Prodaja motornih vozila', 23),
(2399, '5010', 'Prodaja motornih vozila', 23),
(2400, '50100', 'Prodaja motornih vozila', 23),
(2401, '502', 'Održavanje i opravka motornih vozila', 23),
(2402, '5020', 'Održavanje i opravka motornih vozila', 23),
(2403, '50200', 'Održavanje i opravka motornih vozila', 23),
(2404, '503', 'Prodaja delova,pribora za motorna vozila', 23),
(2405, '5030', 'Prodaja delova,pribora za motorna vozila', 23),
(2406, '50300', 'Prodaja delova,pribora za motorna vozila', 23),
(2407, '504', 'Prodaja motocikala i delova, opravka', 23),
(2408, '5040', 'Prodaja motocikala i delova, opravka', 23),
(2409, '50401', 'Prodaja motocikala, delova i pribora', 23),
(2410, '50402', 'Održavanje i opravka motocikala', 23),
(2411, '505', 'Trgovina na malo motornim gorivima', 23),
(2412, '5050', 'Trgovina na malo motornim gorivima', 23),
(2413, '50500', 'Trgovina na malo motornim gorivima', 23),
(2414, '51', 'Trgovina na veliko i posredovanje', 23),
(2415, '511', 'Posredovanje u trgovini na veliko', 23),
(2416, '5111', 'Posredovanje u prodaji agro-sirovina', 23),
(2417, '51110', 'Posredovanje u prodaji agro-sirovina', 23),
(2418, '5112', 'Posredovanje u prodaji goriva i ruda', 23),
(2419, '51120', 'Posredovanje u prodaji goriva i ruda', 23),
(2420, '5113', 'Posredovanje u prodaji građe i sl.', 23),
(2421, '51130', 'Posredovanje u prodaji građe i sl.', 23),
(2422, '5114', 'Posredovanje u prodaji mašina i sl.', 23),
(2423, '51140', 'Posredovanje u prodaji mašina i sl.', 23),
(2424, '5115', 'Posredovanje u prodaji nameštaja i sl.', 23),
(2425, '51150', 'Posredovanje u prodaji nameštaja i sl.', 23),
(2426, '5116', 'Posredovanje u prodaji tekstila, odeće', 23),
(2427, '51160', 'Posredovanje u prodaji tekstila, odeće', 23),
(2428, '5117', 'Posredovanje u prodaji hrane, pića', 23),
(2429, '51170', 'Posredovanje u prodaji hrane, pića', 23),
(2430, '5118', 'Posredovanje u specijalizovanoj prodaji', 23),
(2431, '51180', 'Posredovanje u specijalizovanoj prodaji', 23),
(2432, '5119', 'Posredovanje u prodaji raznih proizvoda', 23),
(2433, '51190', 'Posredovanje u prodaji raznih proizvoda', 23),
(2434, '512', 'Trg. na veliko agro-sirovinama', 23),
(2435, '5121', 'Trg. na veliko semenjem, hranom', 23),
(2436, '51210', 'Trg. na veliko semenjem, hranom', 23),
(2437, '5122', 'Trg. na veliko cvećem i rastinjem', 23),
(2438, '51220', 'Trg. na veliko cvećem i rastinjem', 23),
(2439, '5123', 'Trg. na veliko živim životinjama', 23),
(2440, '51230', 'Trg. na veliko živim životinjama', 23),
(2441, '5124', 'Trg. na veliko kožom', 23),
(2442, '51240', 'Trg. na veliko kožom', 23),
(2443, '5125', 'Trg. na veliko sirovim duvanom', 23),
(2444, '51250', 'Trg. na veliko sirovim duvanom', 23),
(2445, '513', 'Trg. na veliko hranom, pićima', 23),
(2446, '5131', 'Trg. na veliko voćem i povrćem', 23),
(2447, '51310', 'Trg. na veliko voćem i povrćem', 23),
(2448, '5132', 'Trg.na veliko mesom, proizvodima od mesa', 23),
(2449, '51320', 'Trg.na veliko mesom, proizvodima od mesa', 23),
(2450, '5133', 'Trg. na veliko mlekom, jajima i mastima', 23),
(2451, '51330', 'Trg. na veliko mlekom, jajima i mastima', 23),
(2452, '5134', 'Trg. na veliko pićima', 23),
(2453, '51340', 'Trg. na veliko pićima', 23),
(2454, '5135', 'Trg. na veliko duvanskim proizvodima', 23),
(2455, '51350', 'Trg. na veliko duvanskim proizvodima', 23),
(2456, '5136', 'Trg. na veliko šećerom, čokoladom i sl.', 23),
(2457, '51360', 'Trg. na veliko šećerom, čokoladom i sl.', 23),
(2458, '5137', 'Trg. na veliko kafom, čajevima i sl.', 23),
(2459, '51370', 'Trg. na veliko kafom, čajevima i sl.', 23),
(2460, '5138', 'Nespecijalizovana trg. na veliko hranom', 23),
(2461, '51380', 'Nespecijalizovana trg. na veliko hranom', 23),
(2462, '5139', 'Trg. na veliko ostalom hranom', 23),
(2463, '51390', 'Trg. na veliko ostalom hranom', 23),
(2464, '514', 'Trg. na veliko kućnim predmetima', 23),
(2465, '5141', 'Trg. na veliko tekstilom', 23),
(2466, '51410', 'Trg. na veliko tekstilom', 23),
(2467, '5142', 'Trg. na veliko odećom i obućom', 23),
(2468, '51420', 'Trg. na veliko odećom i obućom', 23),
(2469, '5143', 'Trg. na veliko radio, TV i dr. aparatima', 23),
(2470, '51430', 'Trg. na veliko radio, TV i dr. aparatima', 23),
(2471, '5144', 'Trg. na veliko staklarijom, bojama i sl.', 23),
(2472, '51440', 'Trg. na veliko staklarijom, bojama i sl.', 23),
(2473, '5145', 'Trg. na veliko toaletnim proizvodima', 23),
(2474, '51450', 'Trg. na veliko toaletnim proizvodima', 23),
(2475, '5146', 'Trg. na veliko farmaceutskim proizvodima', 23),
(2476, '51460', 'Trg. na veliko farmaceutskim proizvodima', 23),
(2477, '5147', 'Trg. na veliko dr. kućnim proizvodima', 23),
(2478, '51470', 'Trg. na veliko dr. kućnim proizvodima', 23),
(2479, '515', 'Trg.na veliko repro-materijalom,otpacima', 23),
(2480, '5151', 'Trg. na veliko gorivima', 23),
(2481, '51510', 'Trg. na veliko gorivima', 23),
(2482, '5152', 'Trg. na veliko metalima i rudama', 23),
(2483, '51520', 'Trg. na veliko metalima i rudama', 23),
(2484, '5153', 'Trg. na veliko građevinskim materijalom', 23),
(2485, '51530', 'Trg. na veliko građevinskim materijalom', 23),
(2486, '5154', 'Trg. na veliko opremom za grejanje', 23),
(2487, '51540', 'Trg. na veliko opremom za grejanje', 23),
(2488, '5155', 'Trg. na veliko hemijskim proizvodima', 23),
(2489, '51550', 'Trg. na veliko hemijskim proizvodima', 23),
(2490, '5156', 'Trg. na veliko dr. repro-materijalom', 23),
(2491, '51560', 'Trg. na veliko dr. repro-materijalom', 23),
(2492, '5157', 'Trg. na veliko otpacima i ostacima', 23),
(2493, '51570', 'Trg. na veliko otpacima i ostacima', 23),
(2494, '516', 'Trg. na veliko mašinama i uređajima', 23),
(2495, '5161', 'Trg. na veliko mašinama za obradu metala', 23),
(2496, '51610', 'Trg. na veliko mašinama za obradu metala', 23),
(2497, '5162', 'Trg. na veliko građevinskim mašinama', 23),
(2498, '51620', 'Trg. na veliko građevinskim mašinama', 23),
(2499, '5163', 'Trg. na veliko tekstilnim mašinama', 23),
(2500, '51630', 'Trg. na veliko tekstilnim mašinama', 23),
(2501, '5164', 'Trg. na veliko kancelarijskim mašinama', 23),
(2502, '51640', 'Trg. na veliko kancelarijskim mašinama', 23),
(2503, '5165', 'Trg. na veliko ostalim mašinama', 23),
(2504, '51650', 'Trg. na veliko ostalim mašinama', 23),
(2505, '5166', 'Trg. na veliko poljoprivrednim mašinama', 23),
(2506, '51660', 'Trg. na veliko poljoprivrednim mašinama', 23),
(2507, '517', 'Ostala trg. na veliko', 23),
(2508, '5170', 'Ostala trg. na veliko', 23),
(2509, '51700', 'Ostala trg. na veliko', 23),
(2510, '52', 'Trg. na malo, osim vozilima; opravka', 23),
(2511, '521', 'Trg. na malo u nespecijalizovanoj radnji', 23),
(2512, '5211', 'Nespecijalizovana trg. na malo - hrana', 23),
(2513, '52110', 'Nespecijalizovana trg. na malo - hrana', 23),
(2514, '5212', 'Ostala trg. na malo - mešovita roba', 23),
(2515, '52120', 'Ostala trg. na malo - mešovita roba', 23),
(2516, '522', 'Specijalizovana trg. na malo hranom', 23),
(2517, '5221', 'Trg. na malo voćem i povrćem', 23),
(2518, '52210', 'Trg. na malo voćem i povrćem', 23),
(2519, '5222', 'Trg. na malo mesom i proizvodima od mesa', 23),
(2520, '52220', 'Trg. na malo mesom i proizvodima od mesa', 23),
(2521, '5223', 'Trg. na malo ribom i ljuskarima', 23),
(2522, '52230', 'Trg. na malo ribom i ljuskarima', 23),
(2523, '5224', 'Trg. na malo hlebom i slatkišima', 23),
(2524, '52240', 'Trg. na malo hlebom i slatkišima', 23),
(2525, '5225', 'Trg. na malo pićima', 23),
(2526, '52250', 'Trg. na malo pićima', 23),
(2527, '5226', 'Trg. na malo proizvodima od duvana', 23),
(2528, '52260', 'Trg. na malo proizvodima od duvana', 23),
(2529, '5227', 'Dr. specijalizovana trg. na malo hranom', 23),
(2530, '52270', 'Dr. specijalizovana trg. na malo hranom', 23),
(2531, '523', 'Trg. na malo farmacetskim preparatima', 23),
(2532, '5231', 'Izdavanje,spravljanje lekova po recepturi', 23),
(2533, '52310', 'Izdavanje,spravljanje lekova po recepturi', 23),
(2534, '5232', 'Trg. na malo medicinskim preparatima', 23),
(2535, '52320', 'Trg. na malo medicinskim preparatima', 23),
(2536, '5233', 'Trg. na malo toaletnim preparatima', 23),
(2537, '52330', 'Trg. na malo toaletnim preparatima', 23),
(2538, '524', 'Dr.specijalizovana trg.novim proizvodima', 23),
(2539, '5241', 'Trg. na malo tekstilom', 23),
(2540, '52410', 'Trg. na malo tekstilom', 23),
(2541, '5242', 'Trgovina na malo odećom', 23),
(2542, '52420', 'Trgovina na malo odećom', 23),
(2543, '5243', 'Trg. na malo obućom i predmetima od kože', 23),
(2544, '52430', 'Trg. na malo obućom i predmetima od kože', 23);
INSERT INTO `delatnosti` (`delatnosti_SIF`, `sifra`, `Naziv`, `vrsta_delatnosti_sif`) VALUES
(2545, '5244', 'Trg. na malo nameštajem', 23),
(2546, '52440', 'Trg. na malo nameštajem', 23),
(2547, '5245', 'Trg. na malo kućnim aparatima', 23),
(2548, '52450', 'Trg. na malo kućnim aparatima', 23),
(2549, '5246', 'Trg. na malo metalnom robom, bojama i sl.', 23),
(2550, '52460', 'Trg. na malo metalnom robom, bojama i sl.', 23),
(2551, '5247', 'Trg. na malo knjigama, novinama i sl.', 23),
(2552, '52470', 'Trg. na malo knjigama, novinama i sl.', 23),
(2553, '5248', 'Dr. trg. na malo - specijalizovane radnje', 23),
(2554, '52480', 'Dr. trg. na malo - specijalizovane radnje', 23),
(2555, '525', 'Trg. na malo polovnom robom, u radnji', 23),
(2556, '5250', 'Trg. na malo polovnom robom, u radnji', 23),
(2557, '52500', 'Trg. na malo polovnom robom, u radnji', 23),
(2558, '526', 'Trg. na malo izvan radnje', 23),
(2559, '5261', 'Trg. na malo robom preko pošte', 23),
(2560, '52610', 'Trg. na malo robom preko pošte', 23),
(2561, '5262', 'Trg. na malo na tezgama i pijacama', 23),
(2562, '52620', 'Trg. na malo na tezgama i pijacama', 23),
(2563, '5263', 'Ostala trg. na malo izvan radnji', 23),
(2564, '52630', 'Ostala trg. na malo izvan radnji', 23),
(2565, '527', 'Opravka predmeta za ličnu upotrebu', 23),
(2566, '5271', 'Opravka obuće i ostalih predmeta od kože', 23),
(2567, '52710', 'Opravka obuće i ostalih predmeta od kože', 23),
(2568, '5272', 'Opravka električnih kućnih aparata', 23),
(2569, '52721', 'Opravka radio i TV aparata', 23),
(2570, '52722', 'Opravka dr. električnih kućnih aparata', 23),
(2571, '5273', 'Opravka satova, časovnika i nakita', 23),
(2572, '52730', 'Opravka satova, časovnika i nakita', 23),
(2573, '5274', 'Ostala opravka', 23),
(2574, '52740', 'Ostala opravka', 23),
(2575, '55', 'Hoteli i restorani', 24),
(2576, '551', 'Hoteli', 24),
(2577, '5511', 'Hoteli i moteli, s restoranom', 24),
(2578, '55110', 'Hoteli i moteli, s restoranom', 24),
(2579, '5512', 'Hoteli i moteli, bez restorana', 24),
(2580, '55120', 'Hoteli i moteli, bez restorana', 24),
(2581, '552', 'Kampovi i drugi smeštaj za kraći boravak', 24),
(2582, '5521', 'Omladinska odmarališta, domovi i kuće', 24),
(2583, '55211', 'Dečja i omladinska odmarališta', 24),
(2584, '55212', 'Planinarski domovi i kuće', 24),
(2585, '5522', 'Kampovi', 24),
(2586, '55220', 'Kampovi', 24),
(2587, '5523', 'Ostali nepomenuti smeštaj', 24),
(2588, '55231', 'Radnička odmarališta', 24),
(2589, '55232', 'Turistički smeštaj u domaćoj radinosti', 24),
(2590, '55233', 'Ostali smeštaj za kraći boravak', 24),
(2591, '553', 'Restorani', 24),
(2592, '5530', 'Restorani', 24),
(2593, '55300', 'Restorani', 24),
(2594, '554', 'Barovi', 24),
(2595, '5540', 'Barovi', 24),
(2596, '55400', 'Barovi', 24),
(2597, '555', 'Kantine i ketering', 24),
(2598, '5551', 'Kantine', 24),
(2599, '55510', 'Kantine', 24),
(2600, '5552', 'Ketering', 24),
(2601, '55520', 'Ketering', 24),
(2602, '60', 'Kopneni saobraćaj i cevovodni transport', 25),
(2603, '601', 'Železnički saobraćaj', 25),
(2604, '6010', 'Železnički saobraćaj', 25),
(2605, '60100', 'Železnički saobraćaj', 25),
(2606, '602', 'Ostali kopneni saobraćaj', 25),
(2607, '6021', 'Redovan prevoz putnika,drumski i gradski', 25),
(2608, '60211', 'Prevoz putnika u drumskom saobraćaju', 25),
(2609, '60212', 'Prevoz putnika u gradskom saobraćaju', 25),
(2610, '6022', 'Taksi prevoz', 25),
(2611, '60220', 'Taksi prevoz', 25),
(2612, '6023', 'Dr. prevoz putnika u drumskom saobraćaju', 25),
(2613, '60230', 'Dr. prevoz putnika u drumskom saobraćaju', 25),
(2614, '6024', 'Dr. prevoz putnika u kopnenom saobraćaju', 25),
(2615, '60240', 'Dr. prevoz putnika u kopnenom saobraćaju', 25),
(2616, '6025', 'Prevoz robe u drumskom saobraćaju', 25),
(2617, '60250', 'Prevoz robe u drumskom saobraćaju', 25),
(2618, '603', 'Cevovodni transport', 25),
(2619, '6030', 'Cevovodni transport', 25),
(2620, '60300', 'Cevovodni transport', 25),
(2621, '61', 'Vodeni saobraćaj', 25),
(2622, '611', 'Pomorski i priobalni saobraćaj', 25),
(2623, '6111', 'Pomorski saobraćaj', 25),
(2624, '61110', 'Pomorski saobraćaj', 25),
(2625, '6112', 'Saobraćaj u priobalnim morskim vodama', 25),
(2626, '61120', 'Saobraćaj u priobalnim morskim vodama', 25),
(2627, '612', 'Saobraćaj unutrašnjim vodenim putevima', 25),
(2628, '6120', 'Saobraćaj unutrašnjim vodenim putevima', 25),
(2629, '61200', 'Saobraćaj unutrašnjim vodenim putevima', 25),
(2630, '62', 'Vazdušni saobraćaj', 25),
(2631, '621', 'Vazdušni saobraćaj, linijski', 25),
(2632, '6210', 'Vazdušni saobraćaj, linijski', 25),
(2633, '62100', 'Vazdušni saobraćaj, linijski', 25),
(2634, '622', 'Vazdušni saobraćaj, vanredni', 25),
(2635, '6220', 'Vazdušni saobraćaj, vanredni', 25),
(2636, '62200', 'Vazdušni saobraćaj, vanredni', 25),
(2637, '623', 'Vasionski saobraćaj', 25),
(2638, '6230', 'Vasionski saobraćaj', 25),
(2639, '62300', 'Vasionski saobraćaj', 25),
(2640, '63', 'Prateće aktivnosti i putničke agencije', 25),
(2641, '631', 'Pretovar tereta i skladištenje', 25),
(2642, '6311', 'Pretovar tereta', 25),
(2643, '63110', 'Pretovar tereta', 25),
(2644, '6312', 'Skladišta i stovarišta', 25),
(2645, '63120', 'Skladišta i stovarišta', 25),
(2646, '632', 'Ostale prateće aktivnosti u saobraćaju', 25),
(2647, '6321', 'Dr. aktivnosti u kopnenom saobraćaju', 25),
(2648, '63211', 'Održavanje i nega kola', 25),
(2649, '63212', 'Održavanje pruga', 25),
(2650, '63213', 'Održavanje uređaja na železnici', 25),
(2651, '63214', 'Usluge u drumskom saobraćaju', 25),
(2652, '6322', 'Dr. aktivnosti u vodenom saobraćaju', 25),
(2653, '63221', 'Usluge u pomorskom saobraćaju', 25),
(2654, '63222', 'Usluge u rečnom i jezerskom saobraćaju', 25),
(2655, '6323', 'Dr. aktivnosti u vazdušnom saobraćaju', 25),
(2656, '63230', 'Dr. aktivnosti u vazdušnom saobraćaju', 25),
(2657, '633', 'Delatnost putničkih agencija i sl.', 25),
(2658, '6330', 'Delatnost putničkih agencija i sl.', 25),
(2659, '63300', 'Delatnost putničkih agencija i sl.', 25),
(2660, '634', 'Aktivnost drugih posrednika u saobraćaju', 25),
(2661, '6340', 'Aktivnost drugih posrednika u saobraćaju', 25),
(2662, '63400', 'Aktivnost drugih posrednika u saobraćaju', 25),
(2663, '64', 'Poštanske aktivnosti i telekomunikacije', 25),
(2664, '641', 'Poštanske aktivnosti, isporuka pošiljki', 25),
(2665, '6411', 'Delatnost pošta', 25),
(2666, '64110', 'Delatnost pošta', 25),
(2667, '6412', 'Isporuka pošiljki, osim nacionalnih pošta', 25),
(2668, '64120', 'Isporuka pošiljki, osim nacionalnih pošta', 25),
(2669, '642', 'Telekomunikacije', 25),
(2670, '6420', 'Telekomunikacije', 25),
(2671, '64200', 'Telekomunikacije', 25),
(2672, '65', 'Finansijsko posredovanje', 26),
(2673, '651', 'Monetarne institucije', 26),
(2674, '6511', 'Centralne banke', 26),
(2675, '65110', 'Centralne banke', 26),
(2676, '6512', 'Ostale monetarne institucije', 26),
(2677, '65121', 'Bankarske organizacije', 26),
(2678, '65122', 'Poštanske štedionice', 26),
(2679, '65123', 'Ostalo štedno-kreditno poslovanje', 26),
(2680, '652', 'Ostalo finansijsko posredovanje', 26),
(2681, '6521', 'Finansijski lizing', 26),
(2682, '65210', 'Finansijski lizing', 26),
(2683, '6522', 'Ostalo kreditno iznajmljivanje novca', 26),
(2684, '65220', 'Ostalo kreditno iznajmljivanje novca', 26),
(2685, '6523', 'Ostalo finansijsko posredovanje', 26),
(2686, '65231', 'Obavljanje platnog prometa u zemlji', 26),
(2687, '65232', 'Nepomenuto finansijsko posredovanje', 26),
(2688, '66', 'Osiguranje i penzijski fondovi', 26),
(2689, '660', 'Osiguranje i penzijski fondovi', 26),
(2690, '6601', 'Osiguranje života', 26),
(2691, '66010', 'Osiguranje života', 26),
(2692, '6602', 'Penzijski fondovi', 26),
(2693, '66020', 'Penzijski fondovi', 26),
(2694, '6603', 'Ostalo osiguranje', 26),
(2695, '66030', 'Ostalo osiguranje', 26),
(2696, '67', 'Dr. poslovi u finansijskom posredovanju', 26),
(2697, '671', 'Dr. poslovi u finansijskom posredovanju', 26),
(2698, '6711', 'Upravljanje finansijskim tržištem', 26),
(2699, '67110', 'Upravljanje finansijskim tržištem', 26),
(2700, '6712', 'Posredovanje s hartijama od vrednosti', 26),
(2701, '67120', 'Posredovanje s hartijama od vrednosti', 26),
(2702, '6713', 'Dr.pomoćni poslovi u finans. posredovanju', 26),
(2703, '67130', 'Dr.pomoćni poslovi u finans. posredovanju', 26),
(2704, '672', 'Dr.pomoćni poslovi za osiguranje', 26),
(2705, '6720', 'Dr.pomoćni poslovi za osiguranje', 26),
(2706, '67200', 'Dr.pomoćni poslovi za osiguranje', 26),
(2707, '70', 'Poslovi s nekretninama', 27),
(2708, '701', 'Poslovi s nekretninama za svoj račun', 27),
(2709, '7011', 'Razvoj projekata o nekretninama', 27),
(2710, '70110', 'Razvoj projekata o nekretninama', 27),
(2711, '7012', 'Kupo-prodaja nekretnina za svoj račun', 27),
(2712, '70120', 'Kupo-prodaja nekretnina za svoj račun', 27),
(2713, '702', 'Iznajmljivanje nekretnina', 27),
(2714, '7020', 'Iznajmljivanje nekretnina', 27),
(2715, '70200', 'Iznajmljivanje nekretnina', 27),
(2716, '703', 'Poslovi s nekretninama za tuđ račun', 27),
(2717, '7031', 'Agencije za nekretnine', 27),
(2718, '70310', 'Agencije za nekretnine', 27),
(2719, '7032', 'Upravljanje nekretninama za tuđ račun', 27),
(2720, '70320', 'Upravljanje nekretninama za tuđ račun', 27),
(2721, '71', 'Iznajmljivanje mašina i opreme', 27),
(2722, '711', 'Iznajmljivanje automobila', 27),
(2723, '7110', 'Iznajmljivanje automobila', 27),
(2724, '71100', 'Iznajmljivanje automobila', 27),
(2725, '712', 'Iznajmljivanje dr. saobraćajnih sredstava', 27),
(2726, '7121', 'Iznajmljivanje dr.kopnenih saob.sredstava', 27),
(2727, '71210', 'Iznajmljivanje dr.kopnenih saob.sredstava', 27),
(2728, '7122', 'Iznajmljivanje sredstava za vodeni saobr.', 27),
(2729, '71220', 'Iznajmljivanje sredstava za vodeni saobr.', 27),
(2730, '7123', 'Iznajmljivanje sredstava za vazdušni saob.', 27),
(2731, '71230', 'Iznajmljivanje sredstava za vazdušni saob.', 27),
(2732, '713', 'Iznajmljivanje ostalih mašina i opreme', 27),
(2733, '7131', 'Iznajmljivanje poljoprivrednih mašina', 27),
(2734, '71310', 'Iznajmljivanje poljoprivrednih mašina', 27),
(2735, '7132', 'Iznajmljivanje građevinskih mašina', 27),
(2736, '71320', 'Iznajmljivanje građevinskih mašina', 27),
(2737, '7133', 'Iznajmljivanje biro-mašina i kompjutera', 27),
(2738, '71330', 'Iznajmljivanje biro-mašina i kompjutera', 27),
(2739, '7134', 'Iznajmljivanje ostalih mašina i opreme', 27),
(2740, '71340', 'Iznajmljivanje ostalih mašina i opreme', 27),
(2741, '714', 'Iznajmljivanje predmeta za ličnu upotrebu', 27),
(2742, '7140', 'Iznajmljivanje predmeta za ličnu upotrebu', 27),
(2743, '71400', 'Iznajmljivanje predmeta za ličnu upotrebu', 27),
(2744, '72', 'Kompjuterske i srodne aktivnosti', 27),
(2745, '721', 'Pružanje saveta u vezi s kompjuterima', 27),
(2746, '7210', 'Pružanje saveta u vezi s kompjuterima', 27),
(2747, '72100', 'Pružanje saveta u vezi s kompjuterima', 27),
(2748, '722', 'Saveti i izrada kompjuterskih programa', 27),
(2749, '7220', 'Saveti i izrada kompjuterskih programa', 27),
(2750, '72200', 'Saveti i izrada kompjuterskih programa', 27),
(2751, '723', 'Obrada podataka', 27),
(2752, '7230', 'Obrada podataka', 27),
(2753, '72300', 'Obrada podataka', 27),
(2754, '724', 'Izgradnja baza podataka', 27),
(2755, '7240', 'Izgradnja baza podataka', 27),
(2756, '72400', 'Izgradnja baza podataka', 27),
(2757, '725', 'Održavanje, opravka biro i sl. mašina', 27),
(2758, '7250', 'Održavanje, opravka biro i sl. mašina', 27),
(2759, '72500', 'Održavanje, opravka biro i sl. mašina', 27),
(2760, '726', 'Ostali poslovi u vezi s kompjuterima', 27),
(2761, '7260', 'Ostali poslovi u vezi s kompjuterima', 27),
(2762, '72600', 'Ostali poslovi u vezi s kompjuterima', 27),
(2763, '73', 'Istraživanje i razvoj', 27),
(2764, '731', 'Istraživanje u prirodnim naukama', 27),
(2765, '7310', 'Istraživanje u prirodnim naukama', 27),
(2766, '73101', 'Istraživanje u matematici', 27),
(2767, '73102', 'Istraživanje u tehničkim naukama', 27),
(2768, '73103', 'Istraživanje u biotehničkim naukama', 27),
(2769, '73104', 'Istraživanje u medicinskim naukama', 27),
(2770, '73105', 'Istraživanje u multidisciplinar. naukama', 27),
(2771, '73109', 'Istraživanje u dr. prirodnim naukama', 27),
(2772, '732', 'Istraživanje u društvenim naukama', 27),
(2773, '7320', 'Istraživanje u društvenim naukama', 27),
(2774, '73201', 'Istraživanje u društvenim naukama', 27),
(2775, '73202', 'Istraživanje humanističkim naukama', 27),
(2776, '74', 'Ostale poslovne aktivnosti', 27),
(2777, '741', 'Pravni, menadžment i holding poslovi', 27),
(2778, '7411', 'Pravni poslovi', 27),
(2779, '74111', 'Advokatski poslovi', 27),
(2780, '74112', 'Ostali pravni poslovi', 27),
(2781, '7412', 'Računovodstveni, poslovi kontrole i sl.', 27),
(2782, '74120', 'Računovodstveni, poslovi kontrole i sl.', 27),
(2783, '7413', 'Istraživanje tržišta i javnog mnenja', 27),
(2784, '74130', 'Istraživanje tržišta i javnog mnenja', 27),
(2785, '7414', 'Konsalting i menadžment poslovi', 27),
(2786, '74140', 'Konsalting i menadžment poslovi', 27),
(2787, '7415', 'Holding poslovi', 27),
(2788, '74150', 'Holding poslovi', 27),
(2789, '742', 'Arhitektonski i inženjerski poslovi', 27),
(2790, '7420', 'Arhitektonski i inženjerski poslovi', 27),
(2791, '74201', 'Prostorno planiranje', 27),
(2792, '74202', 'Projektovanje građevinskih i dr. objekata', 27),
(2793, '74203', 'Inženjering', 27),
(2794, '74204', 'Dr. arhitektonski i inženjerski poslovi', 27),
(2795, '743', 'Tehničko ispitivanje i analiza', 27),
(2796, '7430', 'Tehničko ispitivanje i analiza', 27),
(2797, '74300', 'Tehničko ispitivanje i analiza', 27),
(2798, '744', 'Reklama i propaganda', 27),
(2799, '7440', 'Reklama i propaganda', 27),
(2800, '74401', 'Priređivanje sajmova', 27),
(2801, '74402', 'Ostale usluge reklame i propagande', 27),
(2802, '745', 'Delatnost biroa za zapošljavanje', 27),
(2803, '7450', 'Delatnost biroa za zapošljavanje', 27),
(2804, '74500', 'Delatnost biroa za zapošljavanje', 27),
(2805, '746', 'Delatnost traženja lica i zaštite', 27),
(2806, '7460', 'Delatnost traženja lica i zaštite', 27),
(2807, '74600', 'Delatnost traženja lica i zaštite', 27),
(2808, '747', 'Čišćenje objekata', 27),
(2809, '7470', 'Čišćenje objekata', 27),
(2810, '74700', 'Čišćenje objekata', 27),
(2811, '748', 'Ostale poslovne aktivnosti', 27),
(2812, '7481', 'Fotografske usluge', 27),
(2813, '74810', 'Fotografske usluge', 27),
(2814, '7482', 'Usluge pakovanja', 27),
(2815, '74820', 'Usluge pakovanja', 27),
(2816, '7483', 'Sekretarske i prevodilačke aktivnosti', 27),
(2817, '74830', 'Sekretarske i prevodilačke aktivnosti', 27),
(2818, '7484', 'Dr. nepomenute poslovne aktivnosti', 27),
(2819, '74840', 'Dr. nepomenute poslovne aktivnosti', 27),
(2820, '75', 'Državna uprava i socijalno osiguranje', 28),
(2821, '751', 'Državna uprava', 28),
(2822, '7511', 'Delatnost državnih organa', 28),
(2823, '75110', 'Delatnost državnih organa', 28),
(2824, '7512', 'Uređenje poslovanja društvenih delatnosti', 28),
(2825, '75120', 'Uređenje poslovanja društvenih delatnosti', 28),
(2826, '7513', 'Uređenje poslovanja privrede', 28),
(2827, '75130', 'Uređenje poslovanja privrede', 28),
(2828, '7514', 'Pomoćni poslovi za funkcionisanje države', 28),
(2829, '75140', 'Pomoćni poslovi za funkcionisanje države', 28),
(2830, '752', 'Usluge državnih organa za zemlju', 28),
(2831, '7521', 'Poslovi sa inostranstvom', 28),
(2832, '75210', 'Poslovi sa inostranstvom', 28),
(2833, '7522', 'Poslovi odbrane', 28),
(2834, '75220', 'Poslovi odbrane', 28),
(2835, '7523', 'Sudske i pravosudne aktivnosti', 28),
(2836, '75230', 'Sudske i pravosudne aktivnosti', 28),
(2837, '7524', 'Javna bezbednost', 28),
(2838, '75240', 'Javna bezbednost', 28),
(2839, '7525', 'Delatnost vatrogasnih jedinica', 28),
(2840, '75250', 'Delatnost vatrogasnih jedinica', 28),
(2841, '753', 'Obavezno socijalno osiguranje', 28),
(2842, '7530', 'Obavezno socijalno osiguranje', 28),
(2843, '75300', 'Obavezno socijalno osiguranje', 28),
(2844, '80', 'Obrazovanje', 29),
(2845, '801', 'Osnovno obrazovanje', 29),
(2846, '8010', 'Osnovno obrazovanje', 29),
(2847, '80101', 'Osnovno obrazovanje opšteg tipa', 29),
(2848, '80102', 'Osnovno specijalno obrazovanje', 29),
(2849, '80103', 'Osnovno obrazovanje posebnog tipa', 29),
(2850, '80104', 'Predškolsko obrazovanje', 29),
(2851, '802', 'Srednje obrazovanje', 29),
(2852, '8021', 'Opšte srednje obrazovanje', 29),
(2853, '80210', 'Opšte srednje obrazovanje', 29),
(2854, '8022', 'Tehničko i stručno srednje obrazovanje', 29),
(2855, '80220', 'Tehničko i stručno srednje obrazovanje', 29),
(2856, '803', 'Više i visoko obrazovanje', 29),
(2857, '8031', 'Više obrazovanje', 29),
(2858, '80311', 'Više ekonomske i upravne škole', 29),
(2859, '80312', 'Više tehničke škole', 29),
(2860, '80313', 'Više medicinske škole', 29),
(2861, '80314', 'Više poloprivivredne i šumarske škole', 29),
(2862, '80315', 'Više pedagoške škole', 29),
(2863, '80316', 'Više umetničke škole', 29),
(2864, '80319', 'Ostale više škole', 29),
(2865, '8032', 'Visoko obrazovanje', 29),
(2866, '80321', 'Prirodno-matematički fakulteti', 29),
(2867, '80322', 'Tehnički fakulteti', 29),
(2868, '80323', 'Poljop. veterinarski i šumarski fakulteti', 29),
(2869, '80324', 'Medicinski fakulteti', 29),
(2870, '80325', 'Fakulteti društvenih nauka', 29),
(2871, '80326', 'Fakulteti i akademije umetnosti', 29),
(2872, '80329', 'Ostale visoko-školske ustanove', 29),
(2873, '804', 'Obrazovanje odraslih i ostalo obrazovanje', 29),
(2874, '8041', 'Delatnost škola za vozače', 29),
(2875, '80410', 'Delatnost škola za vozače', 29),
(2876, '8042', 'Ostalo obrazovanje', 29),
(2877, '80420', 'Ostalo obrazovanje', 29),
(2878, '85', 'Zdravstveni i socijalni rad', 30),
(2879, '851', 'Zdravstvena zaštita stanovništva', 30),
(2880, '8511', 'Delatnost bolnica', 30),
(2881, '85110', 'Delatnost bolnica', 30),
(2882, '8512', 'Medicinska praksa', 30),
(2883, '85120', 'Medicinska praksa', 30),
(2884, '8513', 'Stomatološka praksa', 30),
(2885, '85130', 'Stomatološka praksa', 30),
(2886, '8514', 'Ostala zdravstvena zaštita stanovništva', 30),
(2887, '85141', 'Medicinska rehabilitacija', 30),
(2888, '85142', 'Ostala zdravstvena zaštita', 30),
(2889, '852', 'Veterinarske aktivnosti', 30),
(2890, '8520', 'Veterinarske aktivnosti', 30),
(2891, '85200', 'Veterinarske aktivnosti', 30),
(2892, '853', 'Socijalna zaštita', 30),
(2893, '8531', 'Socijalna zaštita, sa smeštajem', 30),
(2894, '85311', 'Domovi učenika i studenata', 30),
(2895, '85312', 'Domovi za stare', 30),
(2896, '85313', 'Ostala socijalna zaštita, sa smeštajem', 30),
(2897, '8532', 'Socijalni rad, bez smeštaja', 30),
(2898, '85321', 'Ustanove za dnevni boravak dece', 30),
(2899, '85322', 'Ostali socijalni rad, bez smeštaja', 30),
(2900, '90', 'Odstranjivanje otpadaka, smeća i sl.', 31),
(2901, '900', 'Odstranjivanje otpadaka, smeća i sl.', 31),
(2902, '9000', 'Odstranjivanje otpadaka, smeća i sl.', 31),
(2903, '90000', 'Odstranjivanje otpadaka, smeća i sl.', 31),
(2904, '91', 'Delatnost organizacija na bazi učlanjenja', 31),
(2905, '911', 'Delatnost strukovnih organizacija', 31),
(2906, '9111', 'Delatnost poslovnih udruženja', 31),
(2907, '91110', 'Delatnost poslovnih udruženja', 31),
(2908, '9112', 'Delatnost strukovnih udruženja', 31),
(2909, '91120', 'Delatnost strukovnih udruženja', 31),
(2910, '912', 'Delatnost sindikata', 31),
(2911, '9120', 'Delatnost sindikata', 31),
(2912, '91200', 'Delatnost sindikata', 31),
(2913, '913', 'Ostale organizacije na bazi učlanjenja', 31),
(2914, '9131', 'Delatnost verskih organizacija', 31),
(2915, '91310', 'Delatnost verskih organizacija', 31),
(2916, '9132', 'Delatnost političkih organizacija', 31),
(2917, '91320', 'Delatnost političkih organizacija', 31),
(2918, '9133', 'Nepomenute organizac. na bazi učlanjenja', 31),
(2919, '91330', 'Nepomenute organizac. na bazi učlanjenja', 31),
(2920, '92', 'Sportske, kulturne i sl. aktivnosti', 31),
(2921, '921', 'Kinematografske i video-aktivnosti', 31),
(2922, '9211', 'Kinematografska i video-proizvodnja', 31),
(2923, '92110', 'Kinematografska i video-proizvodnja', 31),
(2924, '9212', 'Kinematografska i video-distribucija', 31),
(2925, '92120', 'Kinematografska i video-distribucija', 31),
(2926, '9213', 'Prikazivanje filmova', 31),
(2927, '92130', 'Prikazivanje filmova', 31),
(2928, '922', 'Radio i televizijske aktivnosti', 31),
(2929, '9220', 'Radio i televizijske aktivnosti', 31),
(2930, '92200', 'Radio i televizijske aktivnosti', 31),
(2931, '923', 'Ostale zabavne aktivnosti', 31),
(2932, '9231', 'Umetničko i književno stvaralaštvo', 31),
(2933, '92310', 'Umetničko i književno stvaralaštvo', 31),
(2934, '9232', 'Rad umetničkih ustanova', 31),
(2935, '92320', 'Rad umetničkih ustanova', 31),
(2936, '9233', 'Vašarske aktivnosti i zabavni parkovi', 31),
(2937, '92330', 'Vašarske aktivnosti i zabavni parkovi', 31),
(2938, '9234', 'Nepomenute zabavne aktivnosti', 31),
(2939, '92340', 'Nepomenute zabavne aktivnosti', 31),
(2940, '924', 'Delatnost novinskih agencija', 31),
(2941, '9240', 'Delatnost novinskih agencija', 31),
(2942, '92400', 'Delatnost novinskih agencija', 31),
(2943, '925', 'Delatnost biblioteka, arhiva i muzeja', 31),
(2944, '9251', 'Delatnost biblioteka i arhiva', 31),
(2945, '92511', 'Delatnost biblioteka', 31),
(2946, '92512', 'Delatnost arhiva', 31),
(2947, '9252', 'Delatnost muzeja i zaštita objekata', 31),
(2948, '92521', 'Delatnost muzeja, galerija i zbirki', 31),
(2949, '92522', 'Zaštita kulturnih dobara', 31),
(2950, '9253', 'Delatnost botaničkih i zooloških vrtova', 31),
(2951, '92530', 'Delatnost botaničkih i zooloških vrtova', 31),
(2952, '926', 'Sportske aktivnosti', 31),
(2953, '9261', 'Delatnost sportskih arena i stadiona', 31),
(2954, '92610', 'Delatnost sportskih arena i stadiona', 31),
(2955, '9262', 'Ostale sportske delatnosti', 31),
(2956, '92621', 'Delatnost marina', 31),
(2957, '92622', 'Nepomenute sportske aktivnosti', 31),
(2958, '927', 'Ostale rekreativne delatnosti', 31),
(2959, '9271', 'Kockanje i klađenje', 31),
(2960, '92710', 'Kockanje i klađenje', 31),
(2961, '9272', 'Nepomenute rekreativne aktivnosti', 31),
(2962, '92720', 'Nepomenute rekreativne aktivnosti', 31),
(2963, '93', 'Ostale uslužne delatnosti', 31),
(2964, '930', 'Ostale uslužne delatnosti', 31),
(2965, '9301', 'Pranje i hemijsko čišćenje', 31),
(2966, '93010', 'Pranje i hemijsko čišćenje', 31),
(2967, '9302', 'Frizerski i dr. tretmani za ulepšavanje', 31),
(2968, '93020', 'Frizerski i dr. tretmani za ulepšavanje', 31),
(2969, '9303', 'Pogrebne i prateće aktivnosti', 31),
(2970, '93030', 'Pogrebne i prateće aktivnosti', 31),
(2971, '9304', 'Tretmani za poboljšanje fizičkog stanja', 31),
(2972, '93040', 'Tretmani za poboljšanje fizičkog stanja', 31),
(2973, '9305', 'Nepomenute uslužne aktivnosti', 31),
(2974, '93050', 'Nepomenute uslužne aktivnosti', 31),
(2975, '95', 'Domaćinstva sa zaposlenim licima', 32),
(2976, '950', 'Domaćinstva sa zaposlenim licima', 32),
(2977, '9500', 'Domaćinstva sa zaposlenim licima', 32),
(2978, '95000', 'Domaćinstva sa zaposlenim licima', 32),
(2979, '99', 'Eksteritorijalne organizacije i tela', 33),
(2980, '990', 'Eksteritorijalne organizacije i tela', 33),
(2981, '9900', 'Eksteritorijalne organizacije i tela', 33),
(2982, '99000', 'Eksteritorijalne organizacije i tela', 33);

-- --------------------------------------------------------

--
-- Table structure for table `grad`
--

CREATE TABLE `grad` (
  `grad_sif` int(11) NOT NULL,
  `naziv` varchar(255) NOT NULL,
  `regija_sif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grad`
--

INSERT INTO `grad` (`grad_sif`, `naziv`, `regija_sif`) VALUES
(1, 'Novi Sad', 1),
(2, 'Beograd', 2),
(3, 'Subotica', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lokacija`
--

CREATE TABLE `lokacija` (
  `lokacija_sif` int(11) NOT NULL,
  `opstina_sif` int(11) NOT NULL,
  `adresa` varchar(100) NOT NULL,
  `kordinata_duzina` decimal(10,0) NOT NULL,
  `kordinata_sirina` decimal(10,0) NOT NULL,
  `preduzece_sif` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokacija`
--

INSERT INTO `lokacija` (`lokacija_sif`, `opstina_sif`, `adresa`, `kordinata_duzina`, `kordinata_sirina`, `preduzece_sif`) VALUES
(1, 1, 'Knez Mihajo 1', '1234214', '1213321', NULL),
(11, 1, '324124243', '23143124', '21341234', NULL),
(13, 1, '12341234', '234124', '34121324', NULL),
(14, 1, '12341234', '234124', '34121324', NULL),
(15, 2, 'Patrijarha Gavrila 6 (Tehni?ki fakulteti), Vra?ar', '1111', '1111', NULL),
(16, 3, 'Kosovska 6', '3333', '3333', NULL),
(17, 4, 'Ustani?ka 194', '6666', '6666', NULL),
(18, 5, 'Požeška 83', '3232', '2323', NULL),
(19, 1, 'test 1b', '0', '0', NULL),
(20, 3, 'tst', '0', '0', NULL),
(21, 5, 'Kraljice Katarine 104', '8888', '7777', NULL),
(22, 2, 'Baštovanska 59', '232311', '90923', NULL),
(23, 6, 'Nemanjina 4', '77788', '7887', NULL),
(24, 1, 'aaa', '3434', '434', NULL),
(25, 5, 'Lješka 58', '6766', '66776', NULL),
(26, 7, 'Paunova 30/13', '787877', '77887', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nudi_proizvod`
--

CREATE TABLE `nudi_proizvod` (
  `nudi_proizvod_sif` int(11) NOT NULL,
  `cena` varchar(100) NOT NULL,
  `proizvod_sif` int(11) NOT NULL,
  `preduzece_sif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `opstina`
--

CREATE TABLE `opstina` (
  `opstina_sif` int(11) NOT NULL,
  `naziv` varchar(255) NOT NULL,
  `grad_sif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opstina`
--

INSERT INTO `opstina` (`opstina_sif`, `naziv`, `grad_sif`) VALUES
(1, 'Centar', 1),
(2, 'Vracar', 2),
(3, 'Stari grad', 2),
(4, 'Konjarnik', 2),
(5, 'Banovo brdo', 2),
(6, 'Savski venac', 2),
(7, 'Banjica', 2),
(8, 'Subotica', 3);

-- --------------------------------------------------------

--
-- Table structure for table `preduzece`
--

CREATE TABLE `preduzece` (
  `preduzece_sif` int(11) NOT NULL,
  `pun_naziv` text NOT NULL,
  `kratak_naziv` varchar(100) NOT NULL,
  `mat_br` varchar(100) NOT NULL,
  `pib` varchar(100) NOT NULL,
  `sajt_link` varchar(100) NOT NULL,
  `telefon` varchar(100) NOT NULL,
  `posebne_napomene` text NOT NULL,
  `preduzetnik_sif` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `logotip` varchar(255) NOT NULL,
  `kratak_opis` text NOT NULL,
  `glavna_lokacija_sif` int(11) NOT NULL,
  `glavna_delatnost_sif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `preduzece`
--

INSERT INTO `preduzece` (`preduzece_sif`, `pun_naziv`, `kratak_naziv`, `mat_br`, `pib`, `sajt_link`, `telefon`, `posebne_napomene`, `preduzetnik_sif`, `status`, `logotip`, `kratak_opis`, `glavna_lokacija_sif`, `glavna_delatnost_sif`) VALUES
(4, 'Digitalna i ofset stampa - Pogon', 'Pogon', '12345', '54321', 'www.pogon.rs', '063/336-054', 'Osnovana: 2005. godine', 4, 1, 'pogon.jpg', 'ŠTAMPARIJA I KOPIRNICA POGON se nalazi na Vra?aru, 50m od tehni?kih fakulteta (Arhitektura, Gra?evina, ETF i Mašinski) blizu Vukovog spomenika.', 15, 1906),
(5, 'Kozmeticki salon Terra Esthetica', 'Terra Estheticha', '6789', '9865', 'www.terra-esthetica.rs', '063/63-20-83', ' Terra Esthetica je kozmeti?ki salon posve?en nezi lica i tela.', 4, 1, 'terra.jpg', 'Verujemo da lepota izvire iz sklada, zdravlja i zadovoljstva, a da se održava stalnom brigom i kvalitetnim preparatima. Mi spajamo dobar ose?aj i dobar izgled,  nauku i prirodu. Mi ?inimo da lepota bude vidljiva.', 16, 2967),
(6, 'Ovlasceni Elektrolux servis', 'AEG - ZANUSSI', '8900', '0098', 'www.elektroluks.co.rs', '063/267-743', 'Mi smo ovlaš?eni servis bele tehnike za brendove:  - ELECTROLUX  - AEG  - ZANUSSI  - INDESIT I ARISTON  - LG ', 4, 1, '6.jpg', 'Ovlaš?eni ELECTROLUX servis je firma sa preko 10 godina iskustva u servisiranju bele tehnike, sa sedištem u Beogradu, Ustani?ka 194.', 17, 2021),
(7, 'Roda Cineplexx', 'Cineplexx', '0909', '9090', 'www.rodacineplex.com', '011/2545-260', 'Roda Cineplex je kompletno renoviran 2002. godine kada je u prostoru starog bioskopa izgra?en moderan cineplex sa tri bioskopske sale, ukupnog kapaciteta 387 mesta i širokim foajeom u kom je smešten kafe bioskopa.', 4, 1, '7.jpg', 'Roda Cineplex ?esto ugoš?ava filmske umetnike i radnike u kulturi. Kod nas se realizuju premijere igranih i dokumentarnih filmova, organizuju se konferencije za štampu, ', 18, 2926),
(8, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 4, 0, '5.jpg', 'test', 19, 2718),
(10, 'Gradski veseraj', 'Hemijsko ?iš?enje Beograd', '5665', '6556', 'www.gradskiveseraj.com', '064/456-3513', ' U našoj perionici veša Gradski vešeraj možete dobiti usluge: - pranja veša - sušenja veša - peglanja veša - hemijsko ?iš?enje', 4, 1, '8.png', 'Spremni smo da dokažemo zašto smo na tržištu i da zadobijemo Vaše poverenje.  Savremena perionica veša sa ciljem pružanjem usluga visokog kvaliteta.', 21, 2966),
(11, 'GAS EXPRES PLUS D.O.O', 'Gas, gasna tehnika Beograd', '0009', '9000', 'www.gasexpres.rs', '063/261-561', 'Dostava gasa (plina) za doma?instva', 4, 1, '9.png', '- dostava plinskih boca na adresu  - mogu?nost pla?anja preko ra?una - prate?a oprema - prodaja tehni?kih gasova (industrija)', 22, 1651),
(12, 'Cvecara Kuca Cveca', 'Kuca Cveca', '90999', '00990', 'www.kucacveca.rs', '062/8227-370', '&#34;Ku?a cve?a&#34; uvek daje sve od sebe da svaki cvet u buketu za vaše voljene bude savršen, da buket uvek bude svež i lep kao i da uvek stigne na vreme.', 4, 1, '12.jpg', 'Izra?ujemo bukete po želji za kancelarije, agencije, ordinacije i ostale poslovne prostore, restorane, kafi?e, klubove, ro?endane, krštenja, promocije, proslave godišnjica, razne bukete za stambene prostore..', 23, 2437),
(13, 'proba', 'proba', '222', '222', 'proba.com', 'probaa', 'proba', 4, 0, '5.jpg', 'probaaa', 24, 2718),
(14, 'Trubina DOO', 'Agregati Beograd', '555567', '76555', 'www.turbina-group.com', '063/276-956', ' Preduze?e Turbina je osnovano 1990 godine i uspešno se bavimo proizvodnjom, prodajom, montažom servisiranjem i održavanjem velikih agregatskih postrojenja.', 4, 1, '13.jpg', '30 godina iskustva u ovom poslu garantuje Vam kvalitet i pouzdanost koju nudimo za naše proizvode i usluge.', 25, 2056),
(15, 'Foto Luka', 'Fotografske radnje Beograd', '555665', '6767676', 'www.fotoluka.com', '069/266-33-22', ' NOVO JASTUK SA VAŠIM SLIKAMA - CENA 900DIN', 4, 1, '14.jpg', '* POŠALJITE SLIKE OD KU?E PREKO OBRAZCA SA NAŠEM SAJTU    - besplatna dostava na ku?nu adresu * DIGITALNA IZRADA FOTOGRAFIJA SA SVIH MEDIJA * IZRADA FOTOGRAFIJA SA MOBILNIH TELEFONA * FOTOGRAFIJE ZA LICNA DOKUMENTA ZA 5 MINUTA * ŠTAMPANJE NA FOTO I MAGI?NIM ŠOLJAMA * RADIMO PUZZLE A4 /120 DELOVA/ I SRCE /A5 75 DELOVA/ * MAJCE SA VAŠIM LIKOM...', 26, 2812);

-- --------------------------------------------------------

--
-- Table structure for table `preduzece_delatnost`
--

CREATE TABLE `preduzece_delatnost` (
  `preduzece_delatnost_sif` int(11) NOT NULL,
  `preduzece_sif` int(11) NOT NULL,
  `delatnost_sif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `preduzetnik`
--

CREATE TABLE `preduzetnik` (
  `preduzetnik_sif` int(11) NOT NULL,
  `ime` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `prezime` varchar(255) NOT NULL,
  `telefon` varchar(255) NOT NULL,
  `adresa` varchar(255) NOT NULL,
  `sifra` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `preduzetnik`
--

INSERT INTO `preduzetnik` (`preduzetnik_sif`, `ime`, `email`, `prezime`, `telefon`, `adresa`, `sifra`) VALUES
(1, 'Pera', 'peric@pera.com', 'Peric', '0629684119', 'kraljevskih brigada 6', 'perinasifra'),
(2, 'bogi', 'sogi@logi.com', 'dogi', 'zovi tbr', 'bratovska 420', '123123'),
(3, 'Kosta', 'pljoska@koska.com', 'Tosta', '44545', 'blalalala', '123456789'),
(4, 'test', 'test@test.com', 'test', '123', '123', '123123'),
(5, '123123', 'bogi@aa.com', '123123', '123323224', 'adadadasdas 23', '123123'),
(6, 'Igor', 'bogi@aa.cp', 'Stricevic', '343433312', 'weqeqweqwe', '123123');

-- --------------------------------------------------------

--
-- Table structure for table `proizvod`
--

CREATE TABLE `proizvod` (
  `proizvod_sif` int(11) NOT NULL,
  `naziv` varchar(100) NOT NULL,
  `opis` varchar(250) NOT NULL,
  `vrsta_proizvoda_sif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proizvod`
--

INSERT INTO `proizvod` (`proizvod_sif`, `naziv`, `opis`, `vrsta_proizvoda_sif`) VALUES
(1, 'crveno', 'lepo slatko crveno grozdje, samo se ovde moze naci', 1);

-- --------------------------------------------------------

--
-- Table structure for table `radno_vreme`
--

CREATE TABLE `radno_vreme` (
  `readno_vreme_sif` int(11) NOT NULL,
  `preduzece_sif` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `otvara` int(11) NOT NULL,
  `zatvara` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `radno_vreme`
--

INSERT INTO `radno_vreme` (`readno_vreme_sif`, `preduzece_sif`, `day`, `otvara`, `zatvara`) VALUES
(11, 7, 0, 12, 23),
(12, 7, 1, 12, 23),
(13, 7, 2, 12, 23),
(14, 7, 3, 12, 23),
(15, 4, 0, 7, 16),
(16, 4, 1, 7, 16),
(17, 5, 0, 10, 23),
(18, 5, 1, 10, 23),
(19, 6, 0, 8, 21),
(20, 6, 1, 8, 21),
(21, 8, 0, 23, 23),
(22, 8, 1, 23, 23),
(23, 10, 0, 10, 18),
(24, 10, 1, 10, 18),
(25, 10, 2, 10, 18),
(26, 10, 3, 10, 18),
(27, 10, 4, 10, 18),
(28, 10, 5, 10, 18),
(29, 11, 0, 8, 17),
(30, 11, 1, 8, 17),
(31, 11, 2, 8, 17),
(32, 11, 3, 8, 17),
(33, 11, 4, 8, 17),
(34, 11, 5, 8, 15),
(35, 12, 0, 9, 20),
(36, 12, 1, 9, 20),
(37, 12, 2, 9, 20),
(38, 12, 3, 9, 20),
(39, 12, 4, 9, 20),
(40, 12, 5, 9, 20),
(41, 13, 0, 2, 23),
(42, 13, 1, 1, 23),
(43, 14, 0, 8, 16),
(44, 14, 1, 8, 16),
(45, 14, 2, 8, 16),
(46, 14, 3, 8, 16),
(47, 14, 4, 8, 16),
(48, 15, 0, 8, 20),
(49, 15, 1, 8, 20),
(50, 15, 2, 7, 20),
(51, 15, 3, 7, 20),
(52, 15, 4, 8, 20);

-- --------------------------------------------------------

--
-- Table structure for table `regija`
--

CREATE TABLE `regija` (
  `regija_sif` int(11) NOT NULL,
  `naziv` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regija`
--

INSERT INTO `regija` (`regija_sif`, `naziv`) VALUES
(1, 'Vojvodina'),
(2, 'Beogradski okrug');

-- --------------------------------------------------------

--
-- Table structure for table `slike`
--

CREATE TABLE `slike` (
  `slike_sif` int(11) NOT NULL,
  `slika` varchar(255) NOT NULL,
  `preduzece_sif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `telefon`
--

CREATE TABLE `telefon` (
  `telefon_sif` int(11) NOT NULL,
  `telefon` varchar(100) NOT NULL,
  `preduzece_sif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vrsta_delatnosti`
--

CREATE TABLE `vrsta_delatnosti` (
  `vrsta_delatnosti_sif` int(11) NOT NULL,
  `naziv` varchar(255) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `vrsta_delatnosti_sifra` varchar(255) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vrsta_delatnosti`
--

INSERT INTO `vrsta_delatnosti` (`vrsta_delatnosti_sif`, `naziv`, `vrsta_delatnosti_sifra`) VALUES
(1, 'Poljoprivreda', 'AA'),
(2, 'Šumarstvo', 'AB'),
(3, 'Vodoprivreda', 'AV'),
(4, 'RIBARSTVO', 'B'),
(5, 'Vađenje energetskih sirovina', 'VA'),
(6, 'Vađenje ostalih sirovina i materijala', 'VB'),
(7, 'Prehrambeni proizvodi, pića i duvan', 'GA'),
(8, 'Proizv. tekstila i tekstilnih proizvoda', 'GB'),
(9, 'Prerada kože i proizv. predmeta od kože', 'GV'),
(10, 'Prerada drveta i proizvodi od drveta', 'GG'),
(11, 'Proizv. papira, izdavanje i štampanje', 'GD'),
(12, 'Proizv. koksa i derivata nafte', 'GĐ'),
(13, 'Proizv. hemijskih proizvoda i vlakana', 'GE'),
(14, 'Proizv. proizvoda od gume i plastike', 'GŽ'),
(15, 'Proizv. proizvoda od ostalih minerala', 'GZ'),
(16, 'Proizv. metala i metalnih proizvoda', 'GI'),
(17, 'Proizv. ostalih mašina i uređaja', 'GJ'),
(18, 'Proizv. električnih i optičkih uređaja', 'GK'),
(19, 'Proizv. saobraćajnih sredstava', 'GL'),
(20, 'Ostala prerađivačka industrija', 'GLJ'),
(21, 'PROIZV. EL. ENERGIJE, GASA I VODE', 'D'),
(22, 'GRAĐEVINARSTVO', 'Đ'),
(23, 'TRGOVINA NA VELIKO I MALO, OPRAVKA', 'E'),
(24, 'HOTELI I RESTORANI', 'Ž'),
(25, 'SAOBRAĆAJ, SKLADIŠTENJE I VEZE', 'Z'),
(26, 'FINANSIJSKO POSREDOVAnjE', 'I'),
(27, 'POSLOVI S NEKRETNINAMA, IZNAJMLJIVANJE', 'J'),
(28, 'DRŽAVNA UPRAVA I SOCIJALNO OSIGURANJE', 'K'),
(29, 'OBRAZOVANJE', 'L'),
(30, 'ZDRAVSTVENI I SOCIJALNI RAD', 'LJ'),
(31, 'DR. KOMUNALNE, DRUŠTVENE I LIČNE USLUGE', 'M'),
(32, 'DOMAĆINSTVA SA ZAPOSLENIM LICIMA', 'N'),
(33, 'EKSTERITORIJALNE ORGANIZACIJE I TELA', 'NJ');

-- --------------------------------------------------------

--
-- Table structure for table `vrsta_proizvoda`
--

CREATE TABLE `vrsta_proizvoda` (
  `vrsta_proizvoda_sif` int(11) NOT NULL,
  `naziv` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vrsta_proizvoda`
--

INSERT INTO `vrsta_proizvoda` (`vrsta_proizvoda_sif`, `naziv`) VALUES
(1, 'Grozde');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_sif`);

--
-- Indexes for table `delatnosti`
--
ALTER TABLE `delatnosti`
  ADD PRIMARY KEY (`delatnosti_SIF`),
  ADD KEY `vrsta_del` (`vrsta_delatnosti_sif`);

--
-- Indexes for table `grad`
--
ALTER TABLE `grad`
  ADD PRIMARY KEY (`grad_sif`),
  ADD UNIQUE KEY `naziv` (`naziv`),
  ADD KEY `grad_regija` (`regija_sif`);

--
-- Indexes for table `lokacija`
--
ALTER TABLE `lokacija`
  ADD PRIMARY KEY (`lokacija_sif`),
  ADD KEY `lokacija_opstina` (`opstina_sif`),
  ADD KEY `lokacija_preduzece` (`preduzece_sif`);

--
-- Indexes for table `nudi_proizvod`
--
ALTER TABLE `nudi_proizvod`
  ADD PRIMARY KEY (`nudi_proizvod_sif`),
  ADD KEY `np_pro` (`proizvod_sif`),
  ADD KEY `np_pre` (`preduzece_sif`);

--
-- Indexes for table `opstina`
--
ALTER TABLE `opstina`
  ADD PRIMARY KEY (`opstina_sif`),
  ADD KEY `opstina_grad` (`grad_sif`);

--
-- Indexes for table `preduzece`
--
ALTER TABLE `preduzece`
  ADD PRIMARY KEY (`preduzece_sif`),
  ADD UNIQUE KEY `pib` (`pib`),
  ADD KEY `preduzece_preduzetnik` (`preduzetnik_sif`),
  ADD KEY `preduzece_lokacija` (`glavna_lokacija_sif`),
  ADD KEY `preduzece_delatnost` (`glavna_delatnost_sif`);

--
-- Indexes for table `preduzece_delatnost`
--
ALTER TABLE `preduzece_delatnost`
  ADD PRIMARY KEY (`preduzece_delatnost_sif`),
  ADD KEY `pd_p` (`preduzece_sif`),
  ADD KEY `pd_d` (`delatnost_sif`);

--
-- Indexes for table `preduzetnik`
--
ALTER TABLE `preduzetnik`
  ADD PRIMARY KEY (`preduzetnik_sif`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `proizvod`
--
ALTER TABLE `proizvod`
  ADD PRIMARY KEY (`proizvod_sif`),
  ADD KEY `p_vp` (`vrsta_proizvoda_sif`);

--
-- Indexes for table `radno_vreme`
--
ALTER TABLE `radno_vreme`
  ADD PRIMARY KEY (`readno_vreme_sif`),
  ADD KEY `rv_preduzece` (`preduzece_sif`);

--
-- Indexes for table `regija`
--
ALTER TABLE `regija`
  ADD PRIMARY KEY (`regija_sif`);

--
-- Indexes for table `slike`
--
ALTER TABLE `slike`
  ADD PRIMARY KEY (`slike_sif`),
  ADD KEY `slike_preduzece` (`preduzece_sif`);

--
-- Indexes for table `telefon`
--
ALTER TABLE `telefon`
  ADD PRIMARY KEY (`telefon_sif`),
  ADD KEY `telefon_preduzece` (`preduzece_sif`);

--
-- Indexes for table `vrsta_delatnosti`
--
ALTER TABLE `vrsta_delatnosti`
  ADD PRIMARY KEY (`vrsta_delatnosti_sif`);

--
-- Indexes for table `vrsta_proizvoda`
--
ALTER TABLE `vrsta_proizvoda`
  ADD PRIMARY KEY (`vrsta_proizvoda_sif`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_sif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delatnosti`
--
ALTER TABLE `delatnosti`
  MODIFY `delatnosti_SIF` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2983;

--
-- AUTO_INCREMENT for table `grad`
--
ALTER TABLE `grad`
  MODIFY `grad_sif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lokacija`
--
ALTER TABLE `lokacija`
  MODIFY `lokacija_sif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `nudi_proizvod`
--
ALTER TABLE `nudi_proizvod`
  MODIFY `nudi_proizvod_sif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `opstina`
--
ALTER TABLE `opstina`
  MODIFY `opstina_sif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `preduzece`
--
ALTER TABLE `preduzece`
  MODIFY `preduzece_sif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `preduzece_delatnost`
--
ALTER TABLE `preduzece_delatnost`
  MODIFY `preduzece_delatnost_sif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `preduzetnik`
--
ALTER TABLE `preduzetnik`
  MODIFY `preduzetnik_sif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `proizvod`
--
ALTER TABLE `proizvod`
  MODIFY `proizvod_sif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `radno_vreme`
--
ALTER TABLE `radno_vreme`
  MODIFY `readno_vreme_sif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `regija`
--
ALTER TABLE `regija`
  MODIFY `regija_sif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slike`
--
ALTER TABLE `slike`
  MODIFY `slike_sif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `telefon`
--
ALTER TABLE `telefon`
  MODIFY `telefon_sif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vrsta_proizvoda`
--
ALTER TABLE `vrsta_proizvoda`
  MODIFY `vrsta_proizvoda_sif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `delatnosti`
--
ALTER TABLE `delatnosti`
  ADD CONSTRAINT `vrsta_del` FOREIGN KEY (`vrsta_delatnosti_sif`) REFERENCES `vrsta_delatnosti` (`vrsta_delatnosti_sif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `grad`
--
ALTER TABLE `grad`
  ADD CONSTRAINT `grad_regija` FOREIGN KEY (`regija_sif`) REFERENCES `regija` (`regija_sif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lokacija`
--
ALTER TABLE `lokacija`
  ADD CONSTRAINT `lokacija_opstina` FOREIGN KEY (`opstina_sif`) REFERENCES `opstina` (`opstina_sif`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lokacija_preduzece` FOREIGN KEY (`preduzece_sif`) REFERENCES `preduzece` (`preduzece_sif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nudi_proizvod`
--
ALTER TABLE `nudi_proizvod`
  ADD CONSTRAINT `np_pre` FOREIGN KEY (`preduzece_sif`) REFERENCES `preduzece` (`preduzece_sif`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `np_pro` FOREIGN KEY (`proizvod_sif`) REFERENCES `proizvod` (`proizvod_sif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `opstina`
--
ALTER TABLE `opstina`
  ADD CONSTRAINT `opstina_grad` FOREIGN KEY (`grad_sif`) REFERENCES `grad` (`grad_sif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `preduzece`
--
ALTER TABLE `preduzece`
  ADD CONSTRAINT `preduzece_delatnost` FOREIGN KEY (`glavna_delatnost_sif`) REFERENCES `delatnosti` (`delatnosti_SIF`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `preduzece_lokacija` FOREIGN KEY (`glavna_lokacija_sif`) REFERENCES `lokacija` (`lokacija_sif`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `preduzece_preduzetnik` FOREIGN KEY (`preduzetnik_sif`) REFERENCES `preduzetnik` (`preduzetnik_sif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `preduzece_delatnost`
--
ALTER TABLE `preduzece_delatnost`
  ADD CONSTRAINT `pd_d` FOREIGN KEY (`delatnost_sif`) REFERENCES `delatnosti` (`delatnosti_SIF`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pd_p` FOREIGN KEY (`preduzece_sif`) REFERENCES `preduzece` (`preduzece_sif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `proizvod`
--
ALTER TABLE `proizvod`
  ADD CONSTRAINT `p_vp` FOREIGN KEY (`vrsta_proizvoda_sif`) REFERENCES `vrsta_proizvoda` (`vrsta_proizvoda_sif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `radno_vreme`
--
ALTER TABLE `radno_vreme`
  ADD CONSTRAINT `rv_preduzece` FOREIGN KEY (`preduzece_sif`) REFERENCES `preduzece` (`preduzece_sif`);

--
-- Constraints for table `slike`
--
ALTER TABLE `slike`
  ADD CONSTRAINT `slike_preduzece` FOREIGN KEY (`preduzece_sif`) REFERENCES `preduzece` (`preduzece_sif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `telefon`
--
ALTER TABLE `telefon`
  ADD CONSTRAINT `telefon_preduzece` FOREIGN KEY (`preduzece_sif`) REFERENCES `preduzece` (`preduzece_sif`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
