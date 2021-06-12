-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2021 at 05:38 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dd_events`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `Sno` int(50) NOT NULL,
  `Name` text NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone_num` varchar(50) NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `mess` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`Sno`, `Name`, `Email`, `Phone_num`, `date`, `mess`) VALUES
(10, 'sshf', 'dfjds', '123456', '2021-06-06 16:09:02', 'hi bhai'),
(11, 'ankit', 'ankitshende001', '123654789', '2021-06-07 20:46:35', 'mumbai'),
(12, 'hey', 'hey', '', '2021-06-07 20:47:50', ''),
(13, 'hey', '', '', '2021-06-07 20:48:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `thoughts`
--

CREATE TABLE `thoughts` (
  `Sno` int(11) NOT NULL,
  `Title` text NOT NULL,
  `slug` varchar(40) NOT NULL,
  `Story` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thoughts`
--

INSERT INTO `thoughts` (`Sno`, `Title`, `slug`, `Story`, `img_file`, `date`) VALUES
(1, 'A marriage story', 'first-post', 'Sheena:\"You are trying to tell me you regret marrying me.\"\r\n\r\nSumit: \"I didn\'t say that.\r\nGod forbid who else\' life would have got ruined then! I can\'t see people suffer you know!! \":P :D\r\n\r\n\"Wait I\'ll show you what is suffering.\r\nYou will get enlightened for sure.\"\r\n\r\nShe started throwing all pillows on him.\r\n\r\n\"Ouch! No one beat me this bad till today.It hurts so much.\r\nLook probably I got a fracture.\r\nFracture neck of humerus it seems.:P\"\r\n\r\n\r\n\"Great diagnosis.\r\nAnd no food for today,\r\nCook yourself or order from outside.\"\r\n\r\n\"Oh thank goodness,.I needed a break or I was going to die of food poisoning.:D\"\r\n\r\n\"You are such a .... !!\"\r\n\r\n\"But you are my innocent sweetheart.\r\nI love teasing you.\r\nYou know why?\"\r\n\r\n\"Why\" Sheena asked anticipating another lame joke of his.\r\n\r\n\"Because you look even prettier when you are angry.<3\"\r\n\r\nAnd Sheena melted instantaneously.\r\n\r\n\"Well you don\'t look bad when you blush either.;)\"\r\n\r\n\"Enough lies,now come back to reality!:P\"\r\n\r\n\"You just wait.\" Sheena says looking for the nearest object to throw at him.\r\n\r\n\"Mummmyyy!! Run for your life.: D\"', 'marraige.jpg', '2021-06-06 16:48:16'),
(2, 'A marriage story.', 'second-post', 'I am Surgeon and my wife is Anaesthetist.  “We were married in the traditional way. Our two families knew each other by common relative , so a meeting was arranged. We’d never met.  I came to her house with my family, and we went to a room for two hours and talked.  We didn’t talked about our expectations, our idea of love, and our plans for the future,her hobbies or her cooking skills or past relationships.  Instead we talked about casualty duty, emergency surgeries, her daily work schedule, my daily schedule, so lots of talk about surgeon anaesthetist relationship.  We were so consumed in our medical talk that instantly we began to like each other. We forget to exchange each other’s cell number.  I thought about it for day, then I sent her friend request along with a message on Facebook , saying:  ‘Let’s do it.’  And she accepted the friend request and wrote back:  ‘Alright, my dear.’”', 'marraige.jpg', '2021-06-06 20:12:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `thoughts`
--
ALTER TABLE `thoughts`
  ADD PRIMARY KEY (`Sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `Sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `thoughts`
--
ALTER TABLE `thoughts`
  MODIFY `Sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
