-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2018 at 11:54 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `my_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE IF NOT EXISTS `content` (
`id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `title` varchar(225) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `date`, `title`, `description`) VALUES
(1, 'December 27,2017 ', 'Learn - PHP curl Function', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae ut ratione similique temporibus tempora dicta soluta? Qui hic, voluptatem nemo quo corporis dignissimos voluptatum debitis cumque fugiat mollitia quasi quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae ut ratione similique.'),
(2, 'December 24,2017 ', 'Learn - PHP object Oriented Programming', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae ut ratione similique temporibus tempora dicta soluta? Qui hic, voluptatem nemo quo corporis dignissimos voluptatum debitis cumque fugiat mollitia quasi quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae ut ratione similique.'),
(3, 'December 22,2017 ', 'Become Expert In front End Programming', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae ut ratione similique temporibus tempora dicta soluta? Qui hic, voluptatem nemo quo corporis dignissimos voluptatum debitis cumque fugiat mollitia quasi quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae ut ratione similique.'),
(4, 'December 20,2017 ', 'Javascript is a Dangerous Language ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae ut ratione similique temporibus tempora dicta soluta? Qui hic, voluptatem nemo quo corporis dignissimos voluptatum debitis cumque fugiat mollitia quasi quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae ut ratione similique.');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
`id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `password`) VALUES
(1, 'shuvo', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `content`
--
ALTER TABLE `content`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
