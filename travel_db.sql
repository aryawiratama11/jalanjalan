-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2014 at 10:08 AM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `travel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_customer`
--

CREATE TABLE IF NOT EXISTS `tb_customer` (
`id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `alamat` text NOT NULL,
  `telepon` text NOT NULL,
  `email` text NOT NULL,
  `tgl_buat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bank` text NOT NULL,
  `bank_norek` varchar(30) NOT NULL,
  `bank_namarek` text NOT NULL,
  `ktp` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tb_customer`
--

INSERT INTO `tb_customer` (`id`, `nama`, `alamat`, `telepon`, `email`, `tgl_buat`, `bank`, `bank_norek`, `bank_namarek`, `ktp`) VALUES
(1, 'admin', '', '', '', '2014-10-23 04:01:19', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_emailadmin`
--

CREATE TABLE IF NOT EXISTS `tb_emailadmin` (
  `email` text NOT NULL,
  `password` text NOT NULL,
`id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tb_emailadmin`
--

INSERT INTO `tb_emailadmin` (`email`, `password`, `id`) VALUES
('14ce7f2385b0af89bb50c7585f953532c26f5067', '906471feb6adc34c4034d166e966503d28affd0a', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_level`
--

CREATE TABLE IF NOT EXISTS `tb_level` (
`id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tb_level`
--

INSERT INTO `tb_level` (`id`, `nama`) VALUES
(1, 'root'),
(2, 'Administrator'),
(3, 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu`
--

CREATE TABLE IF NOT EXISTS `tb_menu` (
`menu_id` int(11) NOT NULL,
  `menu_nama` text NOT NULL,
  `menu_uri` text NOT NULL,
  `menu_allowed` text NOT NULL,
  `sort` int(11) NOT NULL,
  `parent` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tb_menu`
--

INSERT INTO `tb_menu` (`menu_id`, `menu_nama`, `menu_uri`, `menu_allowed`, `sort`, `parent`) VALUES
(1, 'Tiket Order', 'tiket/order', '+1+2+3+', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
`id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `aktiv` tinyint(1) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `user_level` int(11) NOT NULL,
  `date` text NOT NULL,
  `token` varchar(6) NOT NULL,
  `sess_aktiv` tinyint(1) DEFAULT NULL COMMENT '1 = aktif, 0 = non aktiv',
  `url_token` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `aktiv`, `id_customer`, `user_level`, `date`, `token`, `sess_aktiv`, `url_token`) VALUES
(1, 'dhimas@fujipresisi.com', '21232f297a57a5a743894a0e4a801fc3', 1, 1, 1, '20141029075620', '', 0, ''),
(2, 'gezaotic@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 1, 1, 1, '', '', 0, ''),
(3, 'asd', '7815696ecbf1c96e6894b779456d330e', 1, 1, 1, '', '', NULL, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_customer`
--
ALTER TABLE `tb_customer`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_emailadmin`
--
ALTER TABLE `tb_emailadmin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_level`
--
ALTER TABLE `tb_level`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_menu`
--
ALTER TABLE `tb_menu`
 ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
 ADD PRIMARY KEY (`id`), ADD KEY `id_customer` (`id_customer`,`user_level`), ADD KEY `id_customer_2` (`id_customer`), ADD KEY `user_level` (`user_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_customer`
--
ALTER TABLE `tb_customer`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_emailadmin`
--
ALTER TABLE `tb_emailadmin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_level`
--
ALTER TABLE `tb_level`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_menu`
--
ALTER TABLE `tb_menu`
MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_user`
--
ALTER TABLE `tb_user`
ADD CONSTRAINT `tb_user_ibfk_1` FOREIGN KEY (`user_level`) REFERENCES `tb_level` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `tb_user_ibfk_2` FOREIGN KEY (`id_customer`) REFERENCES `tb_customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
