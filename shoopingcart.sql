-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2014 at 04:44 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shoopingcart`
--
CREATE DATABASE IF NOT EXISTS `shoopingcart` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `shoopingcart`;

-- --------------------------------------------------------

--
-- Table structure for table `internet_shop`
--

CREATE TABLE IF NOT EXISTS `internet_shop` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `img` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `img` (`img`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- Dumping data for table `internet_shop`
--

INSERT INTO `internet_shop` (`id`, `img`, `name`, `description`, `price`) VALUES
(12, 'k6.jpg', 'keychain', 'great as souvenirs or giveaways for birthday;in bags and cellphone decoration', 25),
(13, 'm1.jpg', 'Magic Mug', 'great as souvenirs or giveaways for birthday, weddings, reunions or any event *can also be used as campaign or promotional material Personalized White Mugs, 11 oz. It is good as Company giveaways and souvenirs, also for special occasions like Birthday, Debut, Weddings and even Baptismal/ Dedication giveaways. ', 150),
(14, 'gallery_img_7.jpg', 'Thumbler', 'great as souvenirs or giveaways for birthday, weddings, reunions or any event *can also be used as campaign or promotional material ', 90),
(15, 'tt7.jpg', 'Thumbler', 'great as souvenirs or giveaways for birthday, weddings, reunions or any event *can also be used as campaign or promotional material ', 90),
(19, 'm5.jpg', 'Mug', 'great as souvenirs or giveaways for birthday, weddings, reunions or any event *can also be used as campaign or promotional material Personalized White Mugs, 11 oz. It is good as Company giveaways and souvenirs, also for special occasions like Birthday, Debut, Weddings and even Baptismal/ Dedication giveaways.', 100),
(20, 'k3.jpg', 'Keychain', 'great as souvenirs or giveaways for birthday;in bags and cellphone decoration', 25),
(25, 'button.jpg', 'Button Pin', 'great as souvenirs or giveaways for birthday;in bags and cellphone decoration', 15),
(26, 'pvc.jpg', 'PVC Bag Tag', 'great as souvenirs or giveaways for birthday;in bags and cellphone decoration', 12),
(22, 't6.jpg', 'T-shirt', 'T-shirts T- SHIRTS FOR ELECTIONS, CORPORATE GIVE-AWAYS, CLUBS AND ORGANIZATIONS, SOUVENIRS, ETC... WHITE T-SHIRT/ FREE SIZE/ ROUND NECK/ 120 GSM---37.00 PHP T- SHIRT WITH PRINT---47.00... MYBRO SPORTS AND FASHION BRINGS YOU THE STUNNING, UPDATED DESIGNS OF BASKETBALL JERSEYS IN THE WORLD GONE OUTSIDE WITH LIBERATED MOVES, BOLD JERSEYS, MOVING AHEAD FOR THE FUTURE OF SPORTS... ', 180),
(24, 'tt6.jpg', 'Thumbler', 'great as souvenirs or giveaways for birthday, weddings, reunions or any event *can also be used as campaign or promotional material', 90);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `name`, `email`, `subject`, `message`) VALUES
(54, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `confirmation` varchar(30) NOT NULL,
  `total` varchar(100) NOT NULL,
  `design` varchar(300) NOT NULL,
  `note` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product`, `qty`, `confirmation`, `total`, `design`, `note`) VALUES
(1, 'Magic Mug', 1000, 'TKE-KMS', '150000', 'design/wire_transfer_256.png', 'rewewe'),
(2, 'Mug', 5, 'DSO-4CH', '500', 'design/', 'small'),
(3, 'Magic Mug', 1111, 'TKE-KMS', '166650', 'design/ownerpic.png', 'ewewewe'),
(4, 'Magic Mug', 2222, 'TKE-KMS', '333300', 'design/ownerpic.png', 'sdsdsdsd'),
(6, 'Magic Mug', 22222, 'HXF-MII', '3333300', 'design/New Picture.png', 'eweewe'),
(8, 'Echo Bag', 8, 'RUO-FQX', '200', 'design/', 'wallet size'),
(9, 'Thumbler', 4, 'KSD-BYN', '360', 'design/', 'small'),
(10, 'Thumbler', 100, 'OQF-6YC', '9000', 'design/hAnNah018.jpg', ''),
(11, 'keychain', 90, 'QMJ-HRX', '2250', 'design/hAnNah018.jpg', 'butterfly'),
(12, 'Mug', 9, 'QY-FJ3', '900', 'design/hAnNah018.jpg', ''),
(13, 'T-shirt', 100, 'WYQW-5OZ', '18000', 'design/wire_transfer_256.png', 'small, black 100'),
(15, 'Keychain', 3, 'MM-MDE', '75', 'design/hAnNah018.jpg', 'butterfly'),
(16, 'Magic Mug', 143, 'IUJ-B44', '21450', 'design/ownerpic.png', ''),
(17, 'Mug', 1, 'GLM-VO3', '100', 'design/537484_234955419971298_1129768462_n.jpg', ''),
(18, 'Magic Mug', 1001, 'OLV-M5C', '150150', 'design/wire_transfer_256.png', ''),
(19, 'keychain', 1, 'AS-TED', '25', 'design/ownerpic.png', 'heart'),
(20, 'Magic Mug', 1, 'MCK-UJG', '150', 'design/wire_transfer_256.png', ''),
(21, 'PVC Bag Tag', 6, 'FGX-W0Y', '72', 'design/537484_234955419971298_1129768462_n.jpg', 'wallet size'),
(22, 'Mug', 1, 'ZGX-2ZG', '100', 'design/', '');

-- --------------------------------------------------------

--
-- Table structure for table `paymentm`
--

CREATE TABLE IF NOT EXISTS `paymentm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dmethodid` varchar(30) NOT NULL,
  `methodname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `paymentm`
--

INSERT INTO `paymentm` (`id`, `dmethodid`, `methodname`) VALUES
(1, '1', 'Cash On Delivery'),
(2, '2', 'BDO'),
(3, '2', 'Metro Bank'),
(4, '2', 'Smart Padala'),
(5, '3', 'BDO'),
(6, '3', 'Metro Bank'),
(7, '3', 'Smart Padala');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `reservation_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` int(20) NOT NULL,
  `payable` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `confirmation` varchar(20) NOT NULL,
  `delivery` varchar(300) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(100) NOT NULL,
  `payment` varchar(100) NOT NULL,
  `delivery_type` varchar(100) NOT NULL,
  PRIMARY KEY (`reservation_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `position` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `position`) VALUES
(1, 'admin', 'admin', 'front desk');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
