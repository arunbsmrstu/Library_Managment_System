-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2015 at 04:12 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookdetails`
--

CREATE TABLE IF NOT EXISTS `bookdetails` (
  `Book_id` varchar(50) NOT NULL,
  `Book_name` varchar(50) NOT NULL,
  `Author` varchar(50) NOT NULL,
  `Subject` varchar(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `no_of_Copies` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookdetails`
--

INSERT INTO `bookdetails` (`Book_id`, `Book_name`, `Author`, `Subject`, `Department`, `no_of_Copies`) VALUES
('001', 'Introduction to Computer', 'Peter Norton', 'Computer Fundamentals', 'CSE', 33),
('002', 'Computer System', 'J. Stanley Warford', 'Computer Fundamentals', 'CSE', 23),
('003', 'Programing with ANSI C', 'E. Balagurusamy', 'Structured Programming Language', 'CSE', 24),
('004', 'The Art of Computer Pogramming', 'D.E. Knuth', 'Structured Programming Language', 'CSE', 22),
('005', 'Teach yourself C', 'H. Schildt', 'Structured Programming Language', 'CSE', 32),
('006', 'Optoelectronics : An Introduction', 'J. Wilson, J.Hawkes', 'Optoelectronics', 'EEE', 44),
('008', 'Fundamental of Computer Graphics', 'F. S. Hill', 'Computer Graphics', 'CSE', 24),
('009', 'Computer Organization and Architecture	', 'William Stallings', 'Computer Architecture and Organization', 'CSE', 44),
('010', 'Computer Architecture and Organization', 'John P.Hayes', 'Computer Architecture and Organization', 'CSE', 24),
('011', 'TCP/IP Protocol Suite', 'Forouzan', 'Computer Networks', 'CSE', 25),
('012', 'Computer Networks', 'Andrew S. Tanenbaum', 'Computer Networks', 'CSE', 26),
('013', 'Data and Computer Communications', 'William Stallings', 'Computer Networks', 'CSE', 21),
('014', 'Dtabase System Concepts', 'A. Silberschatz', 'Database Management Systems', 'CSE', 24),
('015', 'Database Management Systems', 'Raghu', 'Database Management Systems', 'CSE', 24),
('016', 'Fiber optic communication', 'Joseph C. Palais', 'Optoelectronics', 'EEE', 55),
('017', 'How to program Java', 'Deitel', 'Object Oriented Programming ', 'CSE', 32);

-- --------------------------------------------------------

--
-- Table structure for table `lms_user`
--

CREATE TABLE IF NOT EXISTS `lms_user` (
  `user_name` varchar(30) NOT NULL,
  `user_pass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lms_user`
--

INSERT INTO `lms_user` (`user_name`, `user_pass`) VALUES
('Arun', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `student_id` varchar(20) NOT NULL,
  `student_name` varchar(30) NOT NULL,
  `department` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `department`, `phone`) VALUES
('20121201018', 'Rakib', 'CSE', '01819662966'),
('20121201031', 'Sawon Karmakar', 'CSE', '01953180779'),
('20121201047', 'Arun Biswas', 'CSE', '01714662966'),
('20121201051', 'Ratul', 'CSE', '01714662967'),
('20121201065', 'Shohel Khan', 'CSE', '01714662980');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `Name` varchar(50) NOT NULL,
  `Id` varchar(20) NOT NULL,
  `Year` varchar(30) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Book_id` varchar(50) NOT NULL,
  `Date_of_issue` varchar(30) NOT NULL,
  `Date_of_return` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Name`, `Id`, `Year`, `Department`, `Book_id`, `Date_of_issue`, `Date_of_return`) VALUES
('Arun Biswas', '20121201047', '2012-13', 'CSE', '001', '22-04-2015', '26-04-2015'),
('Ratul', '20121201051', '2012-13', 'CSE', '003', '23-04-2015', '27-04-2015');

-- --------------------------------------------------------

--
-- Table structure for table `transection`
--

CREATE TABLE IF NOT EXISTS `transection` (
  `tr_id` int(11) NOT NULL,
  `tr_student_id` varchar(30) NOT NULL,
  `tr_book_id` varchar(30) NOT NULL,
  `tr_issu_date` varchar(30) NOT NULL,
  `tr_return_date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transection`
--

INSERT INTO `transection` (`tr_id`, `tr_student_id`, `tr_book_id`, `tr_issu_date`, `tr_return_date`) VALUES
(1, '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookdetails`
--
ALTER TABLE `bookdetails`
 ADD PRIMARY KEY (`Book_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
 ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `transection`
--
ALTER TABLE `transection`
 ADD PRIMARY KEY (`tr_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
