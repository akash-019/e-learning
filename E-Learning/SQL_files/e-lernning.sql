-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2019 at 04:19 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-lernning`
--

-- --------------------------------------------------------

--
-- Table structure for table `tech_images`
--

CREATE TABLE `tech_images` (
  `Image_ID` int(11) NOT NULL,
  `Image_Name` varchar(50) DEFAULT NULL,
  `Adder_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tech_images`
--

INSERT INTO `tech_images` (`Image_ID`, `Image_Name`, `Adder_ID`) VALUES
(1, '../images/2skyjava.jpeg', 2),
(2, '../images/2skypython.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tech_list`
--

CREATE TABLE `tech_list` (
  `Tech_ID` int(11) NOT NULL,
  `Tech_Name` varchar(20) DEFAULT NULL,
  `Tech_Desc` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tech_list`
--

INSERT INTO `tech_list` (`Tech_ID`, `Tech_Name`, `Tech_Desc`) VALUES
(1, 'Java', 'Our core Java programming tutorial is designed for students and working professionals. Java is an object-oriented, class-based, concurrent, secured and general-purpose computer-programming language. It is a widely used robust technology.'),
(2, 'C ', 'C language Tutorial with programming approach for beginners and professionals, helps you to understand the C language tutorial easily. Our C tutorial explains each topic with programs.'),
(3, 'C++', 'C++ tutorial provides basic and advanced concepts of C++. Our C++ tutorial is designed for beginners and professionals.  C++ is an object-oriented programming language. It is an extension to C programming.'),
(4, 'C#', 'C# Tutorial C Sharp Tutorial C# tutorial provides basic and advanced concepts of C#. Our C# tutorial is designed for beginners and professionals.  C# is a programming language of .Net Framework.'),
(5, 'Python', 'Python is an interpreted, high-level, general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python has a design philosophy that emphasizes code readability, notably using significant whitespace.'),
(6, '.Net', '.NET Framework is a software framework developed by Microsoft that runs primarily on Microsoft Windows. It includes a large class library named as Framework Class Library and provides language interoperability across several programming languages.');

-- --------------------------------------------------------

--
-- Table structure for table `tech_post`
--

CREATE TABLE `tech_post` (
  `Post_ID` int(11) NOT NULL,
  `Post_Title` varchar(50) DEFAULT NULL,
  `Post_Text` text,
  `Topic_ID` int(11) DEFAULT NULL,
  `Adder_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tech_post`
--

INSERT INTO `tech_post` (`Post_ID`, `Post_Title`, `Post_Text`, `Topic_ID`, `Adder_ID`) VALUES
(1, 'Classes in Java', 'A class is a group of objects which have common properties. It is a template or blueprint from which objects are created. It is a logical entity. It can\'t be physical.\r\n\r\nA class in Java can contain:\r\n\r\nFields\r\nMethods\r\nConstructors\r\nBlocks\r\nNested class and interface', 1, 1),
(2, 'Overloading and Overriding', 'If a class has multiple methods having same name but different in parameters, it is known as Method Overloading.\r\n\r\nIf we have to perform only one operation, having same name of the methods increases the readability of the program.\r\n\r\nIf subclass (child class) has the same method as declared in the parent class, it is known as method overriding in Java.\r\n\r\nIn other words, If a subclass provides the specific implementation of the method that has been declared by one of its parent class, it is known as method overriding.', 3, 1),
(3, 'What Is Object?', 'An entity that has state and behavior is known as an object e.g. chair, bike, marker, pen, table, car etc. It can be physical or logical (tangible and intangible). The example of an intangible object is the banking system.\r\n\r\nAn object has three characteristics:\r\n\r\nState: represents the data (value) of an object.\r\nBehavior: represents the behavior (functionality) of an object such as deposit, withdraw, etc.\r\nIdentity: An object identity is typically implemented via a unique ID. The value of the ID is not visible to the external user. However, it is used internally by the JVM to identify each object uniquely.', 2, 1),
(4, 'About Polymorphism', '<img src=../images/2skyjava.jpeg width=300 height=300>', 3, 2),
(5, 'About Python', '<img src=../images/2skypython.jpg width=300 height=300>', 17, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tech_topics`
--

CREATE TABLE `tech_topics` (
  `Topic_ID` int(11) NOT NULL,
  `Tech_ID` int(11) DEFAULT NULL,
  `Topic_Name` varchar(50) DEFAULT NULL,
  `Adder_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tech_topics`
--

INSERT INTO `tech_topics` (`Topic_ID`, `Tech_ID`, `Topic_Name`, `Adder_ID`) VALUES
(1, 1, 'Class', 1),
(2, 1, 'Object', 1),
(3, 1, 'Polymorphism', 1),
(4, 1, 'Inheritance', 1),
(5, 2, 'Structure and Union', 1),
(6, 2, 'Pointer', 1),
(7, 2, 'Looping and Branch', 1),
(8, 3, 'Object', 1),
(9, 3, 'Inheritance', 1),
(10, 3, 'Class', 1),
(12, 3, 'Pointers', 1),
(13, 4, 'Structures', 1),
(14, 4, 'Encapsulation', 1),
(15, 4, 'Enums', 1),
(16, 4, 'Interfaces', 1),
(17, 5, 'Iterators', 1),
(18, 5, 'RegEx', 1),
(19, 5, 'File Handling', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` int(11) NOT NULL,
  `User_Name` varchar(50) NOT NULL,
  `User_Email` varchar(50) NOT NULL,
  `User_Password` varchar(10) NOT NULL,
  `User_Role` varchar(10) DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_ID`, `User_Name`, `User_Email`, `User_Password`, `User_Role`) VALUES
(1, 'Ramya', 'ras2692@gmail.com', 'qwerty', 'admin'),
(2, 'sky', 'sky@gmail.com', 'sky', 'manager'),
(3, 'dev', 'dev@gmail.com', 'dev', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tech_images`
--
ALTER TABLE `tech_images`
  ADD PRIMARY KEY (`Image_ID`),
  ADD KEY `Adder_ID` (`Adder_ID`);

--
-- Indexes for table `tech_list`
--
ALTER TABLE `tech_list`
  ADD PRIMARY KEY (`Tech_ID`);

--
-- Indexes for table `tech_post`
--
ALTER TABLE `tech_post`
  ADD PRIMARY KEY (`Post_ID`),
  ADD KEY `Topic_ID` (`Topic_ID`),
  ADD KEY `Adder_ID` (`Adder_ID`);

--
-- Indexes for table `tech_topics`
--
ALTER TABLE `tech_topics`
  ADD PRIMARY KEY (`Topic_ID`),
  ADD KEY `Tech_ID` (`Tech_ID`),
  ADD KEY `Adder_ID` (`Adder_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`),
  ADD UNIQUE KEY `User_Name` (`User_Name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tech_images`
--
ALTER TABLE `tech_images`
  MODIFY `Image_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tech_list`
--
ALTER TABLE `tech_list`
  MODIFY `Tech_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tech_post`
--
ALTER TABLE `tech_post`
  MODIFY `Post_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tech_topics`
--
ALTER TABLE `tech_topics`
  MODIFY `Topic_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tech_images`
--
ALTER TABLE `tech_images`
  ADD CONSTRAINT `tech_images_ibfk_1` FOREIGN KEY (`Adder_ID`) REFERENCES `user` (`User_ID`);

--
-- Constraints for table `tech_post`
--
ALTER TABLE `tech_post`
  ADD CONSTRAINT `tech_post_ibfk_1` FOREIGN KEY (`Topic_ID`) REFERENCES `tech_topics` (`Topic_ID`),
  ADD CONSTRAINT `tech_post_ibfk_2` FOREIGN KEY (`Adder_ID`) REFERENCES `user` (`User_ID`);

--
-- Constraints for table `tech_topics`
--
ALTER TABLE `tech_topics`
  ADD CONSTRAINT `tech_topics_ibfk_1` FOREIGN KEY (`Tech_ID`) REFERENCES `tech_list` (`Tech_ID`),
  ADD CONSTRAINT `tech_topics_ibfk_2` FOREIGN KEY (`Adder_ID`) REFERENCES `user` (`User_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
