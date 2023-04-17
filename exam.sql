-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2023 at 09:15 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cid` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `description`, `title`) VALUES
(1, 'This is Programing Category for python.', 'Python Programing'),
(2, 'This is for general knowledge.', 'GK'),
(13, 'This is testing case', 'Test 1');

-- --------------------------------------------------------

--
-- Table structure for table `category_seq`
--

CREATE TABLE `category_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_seq`
--

INSERT INTO `category_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(38);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `ques_id` bigint(20) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `content` varchar(5000) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `quiz_q_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`ques_id`, `answer`, `content`, `image`, `option1`, `option2`, `option3`, `option4`, `quiz_q_id`) VALUES
(16, '(3) L, N, O', ' Which of the following groups represents the three ladies in the group ?', NULL, '(1) N, P, L', '(2) P, L, N', '(3) L, N, O', '(4) O, P, L', 1),
(17, 'Guido van Rossum', ' Who developed Python Programming Language?', NULL, ' Wick van Rossum', 'Rasmus Lerdorf', 'Guido van Rossum', 'Niene Stom', 14),
(18, ' all of the mentioned', 'Which type of Programming does Python support?', NULL, 'object-oriented programming', 'structured programming', 'functional programming', ' all of the mentioned', 14),
(19, 'yes', 'Is Python case sensitive when dealing with identifiers?', NULL, 'no', 'yes', 'machine dependent', 'none of the mentioned', 14),
(20, '.py', 'Which of the following is the correct extension of the Python file?', NULL, '.python', '.pl', '.py', ' .p', 14),
(21, ' Python code is both compiled and interpreted', ' Is Python code compiled or interpreted?', NULL, ' Python code is both compiled and interpreted', ' Python code is neither compiled nor interpreted', 'Python code is only compiled', 'Python code is only interpreted', 14),
(22, 'None of the mentioned', ' All keywords in Python are in _________', NULL, 'Capitalized', 'lower case', 'UPPER CASE', 'None of the mentioned', 14),
(23, '7', 'What will be the value of the following Python expression?\n\n4 + 3 % 5', NULL, '7', '2', '4', '1', 14),
(24, 'Indentation', 'Which of the following is used to define a block of code in Python language?', NULL, 'Indentation', 'Key', 'Brackets', 'All of the mentioned', 14),
(25, 'def', 'Which keyword is used for function in Python language?', NULL, 'Function', 'def', 'Fun', 'Define', 14),
(26, '#', 'Which of the following character is used to give single-line comments in Python?', NULL, '//', '#', '!', '/*', 14),
(27, 'error', 'What will be the output of the following Python code?\n\ni = 1\nwhile True:\n    if i%3 == 0:\n        break\n    print(i)\n \n    i + = 1', NULL, ' 1 2 3', 'error', ' 1 2', 'none of the mentioned', 14),
(28, ' sys.version', 'Which of the following functions can help us to find the version of python that we are currently working on?', NULL, 'sys.version(1)', 'sys.version(0)', ' sys.version()', ' sys.version', 14),
(29, 'lambda', 'Python supports the creation of anonymous functions at runtime, using a construct called __________', NULL, 'pi', 'anonymous', 'lambda', ' none of the mentioned', 14),
(30, ' Parentheses, Exponential, Multiplication, Division, Addition, Subtraction', 'What is the order of precedence in python?', NULL, 'Exponential, Parentheses, Multiplication, Division, Addition, Subtraction', 'Exponential, Parentheses, Division, Multiplication, Addition, Subtraction', 'Parentheses, Exponential, Multiplication, Division, Subtraction, Addition', ' Parentheses, Exponential, Multiplication, Division, Addition, Subtraction', 14),
(31, '4', 'What will be the output of the following Python code snippet if x=1?\n\nx<<2', NULL, '4', '2', '1', '8', 14),
(32, 'Preferred Installer Program', 'What does pip stand for python?', NULL, 'Pip Installs Python', 'Pip Installs Packages', 'Preferred Installer Program', 'All of the mentioned', 14),
(33, ' unlimited length', 'Which of the following is true for variable names in Python?', NULL, 'underscore and ampersand are the only two special characters allowed', ' unlimited length', 'all private members must have leading and trailing underscores', 'none of the mentioned', 14),
(34, '512, 64, 512', 'What are the values of the following Python expressions?\n\n 2**(3**2)\n (2**3)**2\n 2**3**2', NULL, '512, 64, 512', '512, 512, 512', '64, 512, 64', '64, 64, 64', 14),
(35, '//', 'Which of the following is the truncation division operator in Python?', NULL, '|', '//', '/', '%', 14),
(36, 'c) [1, 2, ‘hello’] ', 'What will be the output of the following Python code?\n\nl=[1, 0, 2, 0, \'hello\', \'\', []]\nlist(filter(bool, l))', NULL, '[1, 0, 2, ‘hello’, ”, []] ', 'Error', '[1, 2, ‘hello’] ', ' [1, 0, 2, 0, ‘hello’, ”, []] ', 14),
(37, 'Chal rha hai', '<p>Testing question</p>', NULL, 'asd', 'qwe', 'zxc', 'Chal rha hai', 1);

-- --------------------------------------------------------

--
-- Table structure for table `question_seq`
--

CREATE TABLE `question_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question_seq`
--

INSERT INTO `question_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `q_id` bigint(20) NOT NULL,
  `active` bit(1) NOT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `max_marks` varchar(255) DEFAULT NULL,
  `number_of_questions` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category_cid` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`q_id`, `active`, `description`, `max_marks`, `number_of_questions`, `title`, `category_cid`) VALUES
(1, b'1', 'This is A GK Quiz', '200', '20', 'General Ability', 2),
(14, b'1', 'First Python Question Paper', '20', '20', 'Quiz_Python1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_seq`
--

CREATE TABLE `quiz_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_seq`
--

INSERT INTO `quiz_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` bigint(20) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(44, 'ADMIN'),
(45, 'NORMAL');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `enabled`, `first_name`, `last_name`, `password`, `phone`, `username`, `profile`) VALUES
(7, 'an@g.com', b'1', 'Raj', 'an', '$2a$10$ruNkdEHI7ybz/q0vi4UGROdoB3QE7bKMzBCcG6j0DCu.qqIuVE.ve', '432345654', 'Rit', 'default.png'),
(9, 'abc@gmail.com', b'1', 'Utkarsh', 'Singh', '$2a$10$0/8DR.D7gjOK7m.VUH.aPeCI8zfLLkh42LVIGUJ35rA6.kkX.A62.', NULL, 'King@123', 'default.png'),
(11, 'Utsav@123#', b'1', 'Utsav', 'Mishra', '$2a$10$b7sukj1ZRC7yBVni1YMcyOB23r/.O0APLk1j1RMW/IyqfKFfyTjrS', '6393584328', 'Utsav', 'default.png');

-- --------------------------------------------------------

--
-- Table structure for table `users_seq`
--

CREATE TABLE `users_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_seq`
--

INSERT INTO `users_seq` (`next_val`) VALUES
(501);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_role_id` bigint(20) NOT NULL,
  `role_role_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_role_id`, `role_role_id`, `user_id`) VALUES
(8, 45, 7),
(10, 44, 9),
(12, 45, 11);

-- --------------------------------------------------------

--
-- Table structure for table `user_role_seq`
--

CREATE TABLE `user_role_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role_seq`
--

INSERT INTO `user_role_seq` (`next_val`) VALUES
(201);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`ques_id`),
  ADD KEY `FKq1xd7v9iuws36j2pb22my632e` (`quiz_q_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`q_id`),
  ADD KEY `FKesqyvgxnab2ul8osr3a1dtulc` (`category_cid`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_role_id`),
  ADD KEY `FK7u21823ktfhu9bmx2350x6n8s` (`role_role_id`),
  ADD KEY `FKj345gk1bovqvfame88rcx7yyx` (`user_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `FKq1xd7v9iuws36j2pb22my632e` FOREIGN KEY (`quiz_q_id`) REFERENCES `quiz` (`q_id`);

--
-- Constraints for table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `FKesqyvgxnab2ul8osr3a1dtulc` FOREIGN KEY (`category_cid`) REFERENCES `category` (`cid`);

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK7u21823ktfhu9bmx2350x6n8s` FOREIGN KEY (`role_role_id`) REFERENCES `roles` (`role_id`),
  ADD CONSTRAINT `FKj345gk1bovqvfame88rcx7yyx` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
