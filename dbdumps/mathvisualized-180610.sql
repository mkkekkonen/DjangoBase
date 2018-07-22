-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 10, 2018 at 10:24 PM
-- Server version: 5.7.22-0ubuntu18.04.1
-- PHP Version: 7.2.7-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mathvisualized`
--

-- --------------------------------------------------------

--
-- Table structure for table `mathvisualized_category`
--

DROP TABLE IF EXISTS `mathvisualized_category`;
CREATE TABLE `mathvisualized_category` (
  `id` int(11) NOT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mathvisualized_category`
--

INSERT INTO `mathvisualized_category` (`id`, `name`) VALUES
(1, 'Analytic Geometry');

-- --------------------------------------------------------

--
-- Table structure for table `mathvisualized_page`
--

DROP TABLE IF EXISTS `mathvisualized_page`;
CREATE TABLE `mathvisualized_page` (
  `id` int(11) NOT NULL,
  `title` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `url_title` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `js_lib` varchar(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mathvisualized_page`
--

INSERT INTO `mathvisualized_page` (`id`, `title`, `text`, `subcategory_id`, `url_title`, `js_lib`) VALUES
(1, 'Plotting a Curve from an Equation', 'Hello world!', 1, 'curveequation', 'b'),
(2, 'The Distance Between Two Points', 'The distance between two points', 2, 'distancepoints', 'k');

-- --------------------------------------------------------

--
-- Table structure for table `mathvisualized_subcategory`
--

DROP TABLE IF EXISTS `mathvisualized_subcategory`;
CREATE TABLE `mathvisualized_subcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mathvisualized_subcategory`
--

INSERT INTO `mathvisualized_subcategory` (`id`, `name`, `category_id`) VALUES
(1, 'The Equation of a Curve', 1),
(2, 'Cartesian Coordinates', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mathvisualized_category`
--
ALTER TABLE `mathvisualized_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mathvisualized_page`
--
ALTER TABLE `mathvisualized_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mathvisualized_page_subcategory_id_78a4b0ba_fk_mathvisua` (`subcategory_id`);

--
-- Indexes for table `mathvisualized_subcategory`
--
ALTER TABLE `mathvisualized_subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mathvisualized_subca_category_id_2deb3f8d_fk_mathvisua` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mathvisualized_category`
--
ALTER TABLE `mathvisualized_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mathvisualized_page`
--
ALTER TABLE `mathvisualized_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mathvisualized_subcategory`
--
ALTER TABLE `mathvisualized_subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `mathvisualized_page`
--
ALTER TABLE `mathvisualized_page`
  ADD CONSTRAINT `mathvisualized_page_subcategory_id_78a4b0ba_fk_mathvisua` FOREIGN KEY (`subcategory_id`) REFERENCES `mathvisualized_subcategory` (`id`);

--
-- Constraints for table `mathvisualized_subcategory`
--
ALTER TABLE `mathvisualized_subcategory`
  ADD CONSTRAINT `mathvisualized_subca_category_id_2deb3f8d_fk_mathvisua` FOREIGN KEY (`category_id`) REFERENCES `mathvisualized_category` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
