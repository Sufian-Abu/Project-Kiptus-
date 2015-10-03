-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2014 at 01:20 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

CREATE TABLE IF NOT EXISTS `budget` (
  `budget_id` int(11) NOT NULL AUTO_INCREMENT,
  `house_bill` int(11) DEFAULT NULL,
  `water` int(11) DEFAULT NULL,
  `electricity` int(11) DEFAULT NULL,
  `garage` int(11) DEFAULT NULL,
  `servent` int(11) DEFAULT NULL,
  `gas` int(11) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `travel` int(11) DEFAULT NULL,
  `food` int(11) DEFAULT NULL,
  `cloth` int(11) DEFAULT NULL,
  `study` int(11) DEFAULT NULL,
  `refreshment` int(11) DEFAULT NULL,
  `other` int(11) DEFAULT NULL,
  `last_update_budget` timestamp NULL DEFAULT NULL,
  `User_user_id` smallint(6) NOT NULL,
  PRIMARY KEY (`budget_id`,`User_user_id`),
  KEY `fk_Budget_User1_idx` (`User_user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `budget`
--

INSERT INTO `budget` (`budget_id`, `house_bill`, `water`, `electricity`, `garage`, `servent`, `gas`, `mobile`, `travel`, `food`, `cloth`, `study`, `refreshment`, `other`, `last_update_budget`, `User_user_id`) VALUES
(1, 1500, 0, 300, 200, 0, 0, 500, 750, 1200, 500, 2000, 200, 50, NULL, 1),
(2, 2000, 150, 350, 0, 200, 0, 350, 1000, 1000, 500, 800, 150, 50, NULL, 2),
(3, 2500, 0, 300, 0, 200, 0, 450, 800, 900, 500, 2000, 280, 130, NULL, 3),
(4, 22000, 500, 1200, 700, 1000, 350, 1200, 3000, 15000, 5000, 500, 2000, 500, NULL, 4),
(5, 15000, 500, 700, 500, 700, 300, 500, 800, 10000, 3000, 7000, 500, 800, NULL, 5),
(6, 8000, 500, 800, 200, 900, 400, 700, 2000, 9000, 1500, 6000, 1000, 600, NULL, 6),
(7, 30000, 700, 1200, 500, 1000, 500, 1500, 2500, 15000, 4500, 15000, 3000, 1200, NULL, 6),
(8, 2000, 300, 400, 0, 300, 250, 400, 800, 2500, 500, 3000, 600, 250, NULL, 8),
(9, 10000, 500, 800, 300, 500, 400, 600, 1200, 9000, 1500, 0, 300, 200, NULL, 9),
(10, 25000, 600, 1200, 600, 800, 500, 2000, 2500, 10000, 2500, 7000, 3000, 2500, NULL, 10);

-- --------------------------------------------------------

--
-- Table structure for table `budget_has_exp_nonfix`
--

CREATE TABLE IF NOT EXISTS `budget_has_exp_nonfix` (
  `Budget_budget_id` int(11) NOT NULL,
  `Budget_Exp_monthly_exp_monthly_id` tinyint(4) NOT NULL,
  `Exp_NonFix_exp_nonfix_id` int(11) NOT NULL,
  PRIMARY KEY (`Budget_budget_id`,`Budget_Exp_monthly_exp_monthly_id`,`Exp_NonFix_exp_nonfix_id`),
  KEY `fk_Budget_has_Exp_NonFix_Exp_NonFix1_idx` (`Exp_NonFix_exp_nonfix_id`),
  KEY `fk_Budget_has_Exp_NonFix_Budget1_idx` (`Budget_budget_id`,`Budget_Exp_monthly_exp_monthly_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `expenditure`
--

CREATE TABLE IF NOT EXISTS `expenditure` (
  `exp_monthly_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `house_bill` int(11) DEFAULT NULL,
  `water_bill` int(11) DEFAULT NULL,
  `electricity_bill` int(11) DEFAULT NULL,
  `garage_bill` int(11) DEFAULT NULL,
  `servent_bill` int(11) DEFAULT NULL,
  `gas_bill` int(11) DEFAULT NULL,
  `mobile_bill` int(11) DEFAULT NULL,
  `travel_bill` int(11) DEFAULT NULL,
  `food_bill` int(11) DEFAULT NULL,
  `cloth_bill` int(11) DEFAULT NULL,
  `study_bill` int(11) DEFAULT NULL,
  `refreshment_bill` int(11) DEFAULT NULL,
  `other_bill` int(11) DEFAULT NULL,
  `last_update` timestamp NULL DEFAULT NULL,
  `User_user_id` smallint(6) NOT NULL,
  PRIMARY KEY (`exp_monthly_id`,`User_user_id`),
  KEY `fk_Expenditure_User1_idx` (`User_user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `expenditure`
--

INSERT INTO `expenditure` (`exp_monthly_id`, `house_bill`, `water_bill`, `electricity_bill`, `garage_bill`, `servent_bill`, `gas_bill`, `mobile_bill`, `travel_bill`, `food_bill`, `cloth_bill`, `study_bill`, `refreshment_bill`, `other_bill`, `last_update`, `User_user_id`) VALUES
(1, 1200, 0, 250, 200, 0, 0, 300, 600, 1100, 500, 1700, 150, 50, NULL, 1),
(2, 1700, 200, 250, 0, 200, 0, 300, 700, 800, 500, 500, 100, 50, NULL, 2),
(3, 2200, 0, 250, 0, 150, 0, 400, 700, 800, 400, 1500, 250, 50, NULL, 3),
(4, 20000, 400, 1000, 500, 700, 200, 1000, 2500, 14000, 4500, 500, 1500, 500, NULL, 4),
(5, 14000, 500, 600, 500, 600, 300, 500, 800, 9000, 2500, 6000, 500, 700, NULL, 5),
(6, 7000, 400, 700, 200, 800, 400, 600, 1800, 9000, 2500, 6000, 400, 400, NULL, 6),
(7, 28000, 600, 1100, 400, 900, 400, 1400, 2200, 14000, 4000, 12000, 2500, 1100, NULL, 7),
(8, 1800, 200, 0, 300, 250, 400, 300, 2000, 2200, 500, 3000, 600, 250, NULL, 8),
(9, 10000, 500, 800, 300, 500, 400, 600, 1200, 8000, 1200, 0, 300, 200, NULL, 9),
(10, 23000, 400, 1200, 600, 800, 500, 2000, 2500, 9000, 2200, 6700, 2500, 2200, NULL, 10);

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE IF NOT EXISTS `income` (
  `income_id` int(11) NOT NULL AUTO_INCREMENT,
  `tution` int(11) DEFAULT NULL,
  `job` int(11) DEFAULT NULL,
  `teaching` int(11) DEFAULT NULL,
  `others` int(11) DEFAULT NULL,
  `last_update_income` timestamp NULL DEFAULT NULL,
  `User_user_id` smallint(6) NOT NULL,
  PRIMARY KEY (`income_id`,`User_user_id`),
  KEY `fk_Income_User_idx` (`User_user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`income_id`, `tution`, `job`, `teaching`, `others`, `last_update_income`, `User_user_id`) VALUES
(1, 4500, 0, 0, 5000, NULL, 1),
(2, 10000, 5000, 0, 6000, NULL, 2),
(3, 12000, 7000, 0, 7454, NULL, 3),
(4, 200000, 0, 20000, 15000, NULL, 4),
(5, 0, 50000, 0, 10000, NULL, 5),
(6, 10000, 22000, 0, 5000, NULL, 6),
(7, NULL, 70000, 0, NULL, NULL, 7),
(8, 12000, 4500, 0, NULL, NULL, 8),
(9, 5000, 25000, 0, NULL, NULL, 9),
(10, 0, 250000, 0, 15000, NULL, 10);

-- --------------------------------------------------------

--
-- Table structure for table `saving`
--

CREATE TABLE IF NOT EXISTS `saving` (
  `Saving_id` int(11) NOT NULL AUTO_INCREMENT,
  `reason_saving` varchar(45) DEFAULT NULL,
  `saving_amount` int(11) DEFAULT NULL,
  `last_update_saving` timestamp NULL DEFAULT NULL,
  `User_user_id` smallint(6) NOT NULL,
  PRIMARY KEY (`Saving_id`,`User_user_id`),
  KEY `fk_Saving_User1_idx` (`User_user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `saving`
--

INSERT INTO `saving` (`Saving_id`, `reason_saving`, `saving_amount`, `last_update_saving`, `User_user_id`) VALUES
(1, 'marraige', 1000, NULL, 1),
(2, 'house', 3400000, NULL, 2),
(3, 'car', 4568990, NULL, 3),
(4, 'food', 1234567890, NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `user_password` varchar(25) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_age` smallint(6) NOT NULL,
  `user_profession` varchar(45) NOT NULL,
  `user_area` varchar(35) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `User_ID_UNIQUE` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_password`, `user_name`, `user_age`, `user_profession`, `user_area`) VALUES
(1, '123', 'tajul', 20, 'student', 'mohakali'),
(2, '234', 'abu', 21, 'student', 'mohakali'),
(3, '345', 'syeda', 22, 'student', 'mohakali'),
(4, '789', 'oli', 37, 'teacher', 'mohakali'),
(5, '9876', 'koko', 28, 'job', 'gulshan'),
(6, '545764754', 'arafat', 40, 'govt_job', 'mirpur'),
(7, '46687467', 'rajkin', 35, 'Developer', 'malibag'),
(8, '7343274', 'oliur ', 26, 'student', 'mirpur10'),
(9, '687434', 'shajol', 36, 'Technical_officer', 'gulshan'),
(10, '43443', 'rezaur', 32, 'Programmer', 'gulshan');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `budget`
--
ALTER TABLE `budget`
  ADD CONSTRAINT `fk_Budget_User1` FOREIGN KEY (`User_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `budget_has_exp_nonfix`
--
ALTER TABLE `budget_has_exp_nonfix`
  ADD CONSTRAINT `fk_Budget_has_Exp_NonFix_Budget1` FOREIGN KEY (`Budget_budget_id`) REFERENCES `budget` (`budget_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `expenditure`
--
ALTER TABLE `expenditure`
  ADD CONSTRAINT `fk_Expenditure_User1` FOREIGN KEY (`User_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `income`
--
ALTER TABLE `income`
  ADD CONSTRAINT `fk_Income_User` FOREIGN KEY (`User_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `saving`
--
ALTER TABLE `saving`
  ADD CONSTRAINT `fk_Saving_User1` FOREIGN KEY (`User_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
