-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2019 at 04:57 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pro`
--

-- --------------------------------------------------------

--
-- Table structure for table `ftvce990`
--

CREATE TABLE `ftvce990` (
  `qu` tinytext,
  `op1` tinytext,
  `op2` tinytext,
  `op3` tinytext,
  `op4` tinytext,
  `ans` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ftvce990`
--

INSERT INTO `ftvce990` (`qu`, `op1`, `op2`, `op3`, `op4`, `ans`) VALUES
('How many languages and dialects are spoken by people all over the world?', '6000', '9000', '4000', '1000', '2\r'),
('Approximately, how many people speak Chinese language?', '1billion', '1million', '1lakh', '1thousand', '1\r'),
('The language with the richest vocabulary is:', 'hindi', 'french', 'english', 'german', '3\r'),
('English Language have more than ?? words:', '450000', '45000', '4500', '450', '1\r'),
('The oldest Indian language is:', 'telugu', 'hindi', 'tamil', 'punjabi', '3'),
('Which book has been printed in the maximum number of languages and these scripts?', 'The Bible', 'Hiraka Sutra', 'The Super Book', 'Noneofthese', '1'),
('The only religious book ever printed in a shorthand scripts is', 'The Ramayana', 'The Mahabharata', 'The bible', 'Guru Granth Sahib', '3'),
('The oldest printed work in the world, which dates back to AD 868 is:', 'The Bible', 'The Hirake Sutra', 'The Ramayana', 'The Mahabharata', '2\r'),
('The largest book, the super book, is ?? and weight is ??', '270 cm, 300 cm, 252 kg.', '100 cm, 110 cm, 100 kg.', '200 cm, 100 cm, 60 kg.', 'None of these', '1\r'),
('Les Hommes de bonne volontÃ© is the:', 'Longest novel ever published', 'Shortest novel every published', 'The oldest novel', 'None of these', '1\r'),
('The author of the play/book ?Ratnawali? is:', 'Tulsidas', 'Kalidas', 'Harsha Vardhan', 'Prem Chand', '3'),
('Which of the following in the book/play written by Maithili Sharan Gupt?', 'Saket', 'Satyartha Prakash', 'Shakuntala', 'Savitri', '1\r'),
('The book ?Satyartha Prakash? was written by:', 'Swami Dayanand', 'Swami Vivekanand', 'Sarojini Naidu', 'Kalidas', '1\r'),
('The play/book ?Shakuntala? was written by:', 'Maithili Sharan gupt', 'Swami Dayanand', 'Kalidas', 'Tulsidas', '3'),
('Which of the following is the author of ?Song of India, The?:', 'Firdausi', 'Sarojini Naidu', 'Lala Lajpat Rai', 'Sri Aurobindo Ghosh', '2'),
('The author of the book ?Time machine? is:', 'Lewis Carroll', 'Robert Louis Stevenson', 'Charles Lamb', 'H.G. Wells', '4\r'),
('Which of the following book was written by Tulsidas:', 'Vinay Patrika', 'Ramcharitmanas', 'Both (a) and (b)', 'Yashodhara', '3\r'),
('The book ?Vish Vriksha? was written by:', 'Bankimchandra Chatterjee', 'Annie Basant', 'Tulsidas', 'Kalidas', '1\r'),
('The book ?We Indians? was written by:', 'H.G. Wells', 'Khushwant Singh', 'James Jeans', 'Thomas Moore', '2'),
('Which of he follow ing is he author of play/book ?Yashodhara?:', 'Maithili Sharan Gupt', 'Khushwant Singh', 'Bankimchandra C hatterjee', 'Sarojini Naidu', '1\r'),
('Dhyan Chand was:', 'A great hockey player', 'Captained he Indian h ockey team which won a gold medal in 1936 Berlin Olympics', 'Scored 101 goals at the Olympic games and 300 goals in the international matches ', 'All the statements are correct', '4\r'),
('Who developed the small pox vaccination?', 'Eduard Jenner', 'Alexander Fleming', 'Albert Einstein', 'None of these', '1\r'),
('Euclid was:', 'Greek mathematician', 'Contributor to the use of deductive principles of logic as the basis of geometry', 'Propounded the geometrical theosems', 'All the statements are correct', '4\r'),
('Fa-hien was:', 'The first Buddhist pilgrim of China to visit India during the reign of Chandragupta Vikramaditya', 'The discover of Puerto Rico and Jamaica', 'The first Buddhist pilgrim of India to visit China', 'None of these', '1'),
('Firdausi was:', 'A person poet', 'Well known for his epic ?Sharnama?', 'Both are correct', 'None of these', '3'),
('Who is also kno wn as the ?Lady with the Lamp??', 'Florence Nightingale', 'Sarojini Naidu', 'Rani Laxmibai', 'Bachendri Pal', '1'),
('Gabriel Daniel F ahrenheit was:', 'A German Physicist', 'Developed the merc ury thermometer in 1714', 'Devised temperature scale', 'All are correct', '4\r'),
('Galileo was an I talian astronomer who:', 'Developed the telescope', 'Discovered 4 satellites of Jupiter', 'Discovered that the movement o f the pendulum produces a regular time measurement.', 'All are correct', '4\r'),
('Who is known a s the father of English poetry?', 'Geoffrey Chaucer', 'John Milton', 'John Keats', 'None of these', '1\r'),
('The American G eneral who led the revolt against the British & declared American independence was:', 'George Washington', 'Bill Clinton', 'George Bush', 'Noneofthese', '1\r'),
('Which of the following is not a valid variable name declaration?', 'int _a3', 'int 3_a', 'int a_3', 'int _3a', '2\r'),
('All keywords in C are in', 'LowerCase letters', 'UpperCase letters', 'CamelCase letters', 'None', '1\r'),
('Variable name resolving (number of significant characters for uniqueness of variable) depends on', 'Assemblers and loaders implementations', 'C language', 'Compiler and linker implementations', 'None of these', '3\r'),
('Which of the datatypes have size that is variable?', 'int', 'struct', 'float', 'double', '2\r'),
('Which is correct with respect to size of the datatypes?', 'char > int > float', 'int > char > float', 'char < int < double', 'double > char > int', '3\r'),
('Which of the following declaration is not supported by C?', '3e', 'float str = 3e2', 'char *str', 'String str', '4\r'),
('Which keyword is used to prevent any changes in the variable within a C program?', 'non mutable', 'volatile', 'mutable', 'const', '3\r'),
('Result of a logical or relational expression in C is', '0 if expression is false and any positive number if expression is true', 'True or False', '0 or 1', 'None', '3\r'),
('Relational operators cannot be used on:', 'strings', 'structure', 'float', 'long', '2\r'),
('Which among the following is NOT a logical or relational operator?', '!=', '==', '||', '=', '4\r'),
('Which type conversion is NOT accepted?', 'From char to int', 'From float to char pointer', 'From double to char', 'From negative int to char', '2\r'),
('Which of the following typecasting is accepted by C?', 'Widening conversions', 'Narrowing conversions', 'Both', 'None', '3\r'),
('Are logical operators sequence points?', 'Depends on the compiler', 'True', 'False', 'Depends on the standard', '2\r'),
('Does logical operators in C language are evaluated with short circuit?', 'Depends on the standard', 'Depends on the compiler', 'False', 'True', '4');

-- --------------------------------------------------------

--
-- Table structure for table `ftvce990idq`
--

CREATE TABLE `ftvce990idq` (
  `id` varchar(10) NOT NULL,
  `q1` int(5) DEFAULT NULL,
  `q2` int(5) DEFAULT NULL,
  `q3` int(5) DEFAULT NULL,
  `q4` int(5) DEFAULT NULL,
  `q5` int(5) DEFAULT NULL,
  `q6` int(5) DEFAULT NULL,
  `q7` int(5) DEFAULT NULL,
  `q8` int(5) DEFAULT NULL,
  `q9` int(5) DEFAULT NULL,
  `q10` int(5) DEFAULT NULL,
  `q11` int(5) DEFAULT NULL,
  `q12` int(5) DEFAULT NULL,
  `q13` int(5) DEFAULT NULL,
  `q14` int(5) DEFAULT NULL,
  `timeleft` datetime DEFAULT NULL,
  `sttimeleft` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ftvce990idq`
--

INSERT INTO `ftvce990idq` (`id`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`, `q11`, `q12`, `q13`, `q14`, `timeleft`, `sttimeleft`) VALUES
('16881A05J3', 4, 20, 9, 39, 42, 26, 33, 41, 28, 31, 10, 13, 23, 35, '2019-07-17 06:28:26', '2019-07-17 06:25:26'),
('16881A05M2', 41, 12, 15, 7, 25, 21, 26, 23, 19, 38, 31, 16, 27, 17, '2019-02-28 10:56:04', '2019-02-28 10:53:04');

-- --------------------------------------------------------

--
-- Table structure for table `ftvce990marks`
--

CREATE TABLE `ftvce990marks` (
  `id` varchar(10) NOT NULL,
  `marks` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ftvce990marks`
--

INSERT INTO `ftvce990marks` (`id`, `marks`) VALUES
('16881A05J3', 1),
('16881A05M2', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ftvce990rem`
--

CREATE TABLE `ftvce990rem` (
  `id` varchar(10) NOT NULL,
  `q1` text,
  `q2` text,
  `q3` text,
  `q4` text,
  `q5` text,
  `q6` text,
  `q7` text,
  `q8` text,
  `q9` text,
  `q10` text,
  `q11` text,
  `q12` text,
  `q13` text,
  `q14` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ftvce990rem`
--

INSERT INTO `ftvce990rem` (`id`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`, `q11`, `q12`, `q13`, `q14`) VALUES
('16881A05J3', 'q00', 'q11', 'q21', 'q31', 'q41', 'q51', '0', '0', '0', '0', '0', '0', '0', '0'),
('16881A05M2', 'q01', '0', 'q20', 'q31', '0', 'q50', '0', '0', '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `gk`
--

CREATE TABLE `gk` (
  `qu` text NOT NULL,
  `op1` text NOT NULL,
  `op2` text NOT NULL,
  `op3` text NOT NULL,
  `op4` text NOT NULL,
  `ans` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gk`
--

INSERT INTO `gk` (`qu`, `op1`, `op2`, `op3`, `op4`, `ans`) VALUES
('Approximately, how many people speak Chinese language?', '1billion', '1million', '1lakh', '1thousand', '1\r'),
('Dhyan Chand was:', 'A great hockey player', 'Captained he Indian h ockey team which won a gold medal in 1936 Berlin Olympics', 'Scored 101 goals at the Olympic games and 300 goals in the international matches ', 'All the statements are correct', '4\r'),
('English Language have more than ?? words:', '450000', '45000', '4500', '450', '1\r'),
('Euclid was:', 'Greek mathematician', 'Contributor to the use of deductive principles of logic as the basis of geometry', 'Propounded the geometrical theosems', 'All the statements are correct', '4\r'),
('Fa-hien was:', 'The first Buddhist pilgrim of China to visit India during the reign of Chandragupta Vikramaditya', 'The discover of Puerto Rico and Jamaica', 'The first Buddhist pilgrim of India to visit China', 'None of these', '1'),
('Firdausi was:', 'A person poet', 'Well known for his epic ?Sharnama?', 'Both are correct', 'None of these', '3'),
('Gabriel Daniel F ahrenheit was:', 'A German Physicist', 'Developed the merc ury thermometer in 1714', 'Devised temperature scale', 'All are correct', '4\r'),
('Galileo was an I talian astronomer who:', 'Developed the telescope', 'Discovered 4 satellites of Jupiter', 'Discovered that the movement o f the pendulum produces a regular time measurement.', 'All are correct', '4\r'),
('How many languages and dialects are spoken by people all over the world?', '6000', '9000', '4000', '1000', '2\r'),
('Les Hommes de bonne volontÃ© is the:', 'Longest novel ever published', 'Shortest novel every published', 'The oldest novel', 'None of these', '1\r'),
('The American G eneral who led the revolt against the British & declared American independence was:', 'George Washington', 'Bill Clinton', 'George Bush', 'Noneofthese', '1\r'),
('The author of the book ?Time machine? is:', 'Lewis Carroll', 'Robert Louis Stevenson', 'Charles Lamb', 'H.G. Wells', '4\r'),
('The author of the play/book ?Ratnawali? is:', 'Tulsidas', 'Kalidas', 'Harsha Vardhan', 'Prem Chand', '3'),
('The book ?Satyartha Prakash? was written by:', 'Swami Dayanand', 'Swami Vivekanand', 'Sarojini Naidu', 'Kalidas', '1\r'),
('The book ?Vish Vriksha? was written by:', 'Bankimchandra Chatterjee', 'Annie Basant', 'Tulsidas', 'Kalidas', '1\r'),
('The book ?We Indians? was written by:', 'H.G. Wells', 'Khushwant Singh', 'James Jeans', 'Thomas Moore', '2'),
('The language with the richest vocabulary is:', 'hindi', 'french', 'english', 'german', '3\r'),
('The largest book, the super book, is ?? and weight is ??', '270 cm, 300 cm, 252 kg.', '100 cm, 110 cm, 100 kg.', '200 cm, 100 cm, 60 kg.', 'None of these', '1\r'),
('The oldest Indian language is:', 'telugu', 'hindi', 'tamil', 'punjabi', '3'),
('The oldest printed work in the world, which dates back to AD 868 is:', 'The Bible', 'The Hirake Sutra', 'The Ramayana', 'The Mahabharata', '2\r'),
('The only religious book ever printed in a shorthand scripts is', 'The Ramayana', 'The Mahabharata', 'The bible', 'Guru Granth Sahib', '3'),
('The play/book ?Shakuntala? was written by:', 'Maithili Sharan gupt', 'Swami Dayanand', 'Kalidas', 'Tulsidas', '3'),
('Which book has been printed in the maximum number of languages and these scripts?', 'The Bible', 'Hiraka Sutra', 'The Super Book', 'Noneofthese', '1'),
('Which of he follow ing is he author of play/book ?Yashodhara?:', 'Maithili Sharan Gupt', 'Khushwant Singh', 'Bankimchandra C hatterjee', 'Sarojini Naidu', '1\r'),
('Which of the following book was written by Tulsidas:', 'Vinay Patrika', 'Ramcharitmanas', 'Both (a) and (b)', 'Yashodhara', '3\r'),
('Which of the following in the book/play written by Maithili Sharan Gupt?', 'Saket', 'Satyartha Prakash', 'Shakuntala', 'Savitri', '1\r'),
('Which of the following is the author of ?Song of India, The?:', 'Firdausi', 'Sarojini Naidu', 'Lala Lajpat Rai', 'Sri Aurobindo Ghosh', '2'),
('Who developed the small pox vaccination?', 'Eduard Jenner', 'Alexander Fleming', 'Albert Einstein', 'None of these', '1\r'),
('Who is also kno wn as the ?Lady with the Lamp??', 'Florence Nightingale', 'Sarojini Naidu', 'Rani Laxmibai', 'Bachendri Pal', '1'),
('Who is known a s the father of English poetry?', 'Geoffrey Chaucer', 'John Milton', 'John Keats', 'None of these', '1\r');

-- --------------------------------------------------------

--
-- Table structure for table `gk2`
--

CREATE TABLE `gk2` (
  `qu` text NOT NULL,
  `op1` text NOT NULL,
  `op2` text NOT NULL,
  `op3` text NOT NULL,
  `op4` text NOT NULL,
  `ans` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gk2`
--

INSERT INTO `gk2` (`qu`, `op1`, `op2`, `op3`, `op4`, `ans`) VALUES
('All keywords in C are in', 'LowerCase letters', 'UpperCase letters', 'CamelCase letters', 'None', '1\r'),
('Approximately, how many people speak Chinese language?', '1billion', '1million', '1lakh', '1thousand', '1\r'),
('Are logical operators sequence points?', 'Depends on the compiler', 'True', 'False', 'Depends on the standard', '2\r'),
('Dhyan Chand was:', 'A great hockey player', 'Captained he Indian h ockey team which won a gold medal in 1936 Berlin Olympics', 'Scored 101 goals at the Olympic games and 300 goals in the international matches ', 'All the statements are correct', '4\r'),
('Does logical operators in C language are evaluated with short circuit?', 'Depends on the standard', 'Depends on the compiler', 'False', 'True', '4\r'),
('English Language have more than ?? words:', '450000', '45000', '4500', '450', '1\r'),
('Euclid was:', 'Greek mathematician', 'Contributor to the use of deductive principles of logic as the basis of geometry', 'Propounded the geometrical theosems', 'All the statements are correct', '4\r'),
('Fa-hien was:', 'The first Buddhist pilgrim of China to visit India during the reign of Chandragupta Vikramaditya', 'The discover of Puerto Rico and Jamaica', 'The first Buddhist pilgrim of India to visit China', 'None of these', '1'),
('Firdausi was:', 'A person poet', 'Well known for his epic ?Sharnama?', 'Both are correct', 'None of these', '3'),
('Gabriel Daniel F ahrenheit was:', 'A German Physicist', 'Developed the merc ury thermometer in 1714', 'Devised temperature scale', 'All are correct', '4\r'),
('Galileo was an I talian astronomer who:', 'Developed the telescope', 'Discovered 4 satellites of Jupiter', 'Discovered that the movement o f the pendulum produces a regular time measurement.', 'All are correct', '4\r'),
('How many languages and dialects are spoken by people all over the world?', '6000', '9000', '4000', '1000', '2\r'),
('Les Hommes de bonne volontÃ© is the:', 'Longest novel ever published', 'Shortest novel every published', 'The oldest novel', 'None of these', '1\r'),
('Relational operators cannot be used on:', 'strings', 'structure', 'float', 'long', '2\r'),
('Result of a logical or relational expression in C is', '0 if expression is false and any positive number if expression is true', 'True or False', '0 or 1', 'None', '3\r'),
('The American G eneral who led the revolt against the British & declared American independence was:', 'George Washington', 'Bill Clinton', 'George Bush', 'Noneofthese', '1\r'),
('The author of the book ?Time machine? is:', 'Lewis Carroll', 'Robert Louis Stevenson', 'Charles Lamb', 'H.G. Wells', '4\r'),
('The author of the play/book ?Ratnawali? is:', 'Tulsidas', 'Kalidas', 'Harsha Vardhan', 'Prem Chand', '3'),
('The book ?Satyartha Prakash? was written by:', 'Swami Dayanand', 'Swami Vivekanand', 'Sarojini Naidu', 'Kalidas', '1\r'),
('The book ?Vish Vriksha? was written by:', 'Bankimchandra Chatterjee', 'Annie Basant', 'Tulsidas', 'Kalidas', '1\r'),
('The book ?We Indians? was written by:', 'H.G. Wells', 'Khushwant Singh', 'James Jeans', 'Thomas Moore', '2'),
('The language with the richest vocabulary is:', 'hindi', 'french', 'english', 'german', '3\r'),
('The largest book, the super book, is ?? and weight is ??', '270 cm, 300 cm, 252 kg.', '100 cm, 110 cm, 100 kg.', '200 cm, 100 cm, 60 kg.', 'None of these', '1\r'),
('The oldest Indian language is:', 'telugu', 'hindi', 'tamil', 'punjabi', '3'),
('The oldest printed work in the world, which dates back to AD 868 is:', 'The Bible', 'The Hirake Sutra', 'The Ramayana', 'The Mahabharata', '2\r'),
('The only religious book ever printed in a shorthand scripts is', 'The Ramayana', 'The Mahabharata', 'The bible', 'Guru Granth Sahib', '3'),
('The play/book ?Shakuntala? was written by:', 'Maithili Sharan gupt', 'Swami Dayanand', 'Kalidas', 'Tulsidas', '3'),
('Variable name resolving (number of significant characters for uniqueness of variable) depends on', 'Assemblers and loaders implementations', 'C language', 'Compiler and linker implementations', 'None of these', '3\r'),
('When double is converted to float, the value is?', 'Rounded', 'Truncated', 'Depends on the standard', 'Depends on the compiler 4\r', ''),
('Which among the following is NOT a logical or relational operator?', '!=', '==', '||', '=', '4\r'),
('Which book has been printed in the maximum number of languages and these scripts?', 'The Bible', 'Hiraka Sutra', 'The Super Book', 'Noneofthese', '1'),
('Which is correct with respect to size of the datatypes?', 'char > int > float', 'int > char > float', 'char < int < double', 'double > char > int', '3\r'),
('Which keyword is used to prevent any changes in the variable within a C program?', 'non mutable', 'volatile', 'mutable', 'const', '3\r'),
('Which of he follow ing is he author of play/book ?Yashodhara?:', 'Maithili Sharan Gupt', 'Khushwant Singh', 'Bankimchandra C hatterjee', 'Sarojini Naidu', '1\r'),
('Which of the datatypes have size that is variable?', 'int', 'struct', 'float', 'double', '2\r'),
('Which of the following book was written by Tulsidas:', 'Vinay Patrika', 'Ramcharitmanas', 'Both (a) and (b)', 'Yashodhara', '3\r'),
('Which of the following declaration is not supported by C?', '3e', 'float str = 3e2', 'char *str', 'String str', '4\r'),
('Which of the following in the book/play written by Maithili Sharan Gupt?', 'Saket', 'Satyartha Prakash', 'Shakuntala', 'Savitri', '1\r'),
('Which of the following is not a valid variable name declaration?', 'int _a3', 'int 3_a', 'int a_3', 'int _3a', '2\r'),
('Which of the following is the author of ?Song of India, The?:', 'Firdausi', 'Sarojini Naidu', 'Lala Lajpat Rai', 'Sri Aurobindo Ghosh', '2'),
('Which of the following typecasting is accepted by C?', 'Widening conversions', 'Narrowing conversions', 'Both', 'None', '3\r'),
('Which type conversion is NOT accepted?', 'From char to int', 'From float to char pointer', 'From double to char', 'From negative int to char', '2\r'),
('Who developed the small pox vaccination?', 'Eduard Jenner', 'Alexander Fleming', 'Albert Einstein', 'None of these', '1\r'),
('Who is also kno wn as the ?Lady with the Lamp??', 'Florence Nightingale', 'Sarojini Naidu', 'Rani Laxmibai', 'Bachendri Pal', '1'),
('Who is known a s the father of English poetry?', 'Geoffrey Chaucer', 'John Milton', 'John Keats', 'None of these', '1\r');

-- --------------------------------------------------------

--
-- Table structure for table `htmlvce789`
--

CREATE TABLE `htmlvce789` (
  `qu` tinytext,
  `op1` tinytext,
  `op2` tinytext,
  `op3` tinytext,
  `op4` tinytext,
  `ans` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `htmlvce789`
--

INSERT INTO `htmlvce789` (`qu`, `op1`, `op2`, `op3`, `op4`, `ans`) VALUES
('How many languages and dialects are spoken by people all over the world?', '6000', '9000', '4000', '1000', '2\r'),
('Approximately, how many people speak Chinese language?', '1billion', '1million', '1lakh', '1thousand', '1\r'),
('The language with the richest vocabulary is:', 'hindi', 'french', 'english', 'german', '3\r'),
('English Language have more than ?? words:', '450000', '45000', '4500', '450', '1\r'),
('The oldest Indian language is:', 'telugu', 'hindi', 'tamil', 'punjabi', '3'),
('Which book has been printed in the maximum number of languages and these scripts?', 'The Bible', 'Hiraka Sutra', 'The Super Book', 'Noneofthese', '1'),
('The only religious book ever printed in a shorthand scripts is', 'The Ramayana', 'The Mahabharata', 'The bible', 'Guru Granth Sahib', '3'),
('The oldest printed work in the world, which dates back to AD 868 is:', 'The Bible', 'The Hirake Sutra', 'The Ramayana', 'The Mahabharata', '2\r'),
('The largest book, the super book, is ?? and weight is ??', '270 cm, 300 cm, 252 kg.', '100 cm, 110 cm, 100 kg.', '200 cm, 100 cm, 60 kg.', 'None of these', '1\r'),
('Les Hommes de bonne volontÃ© is the:', 'Longest novel ever published', 'Shortest novel every published', 'The oldest novel', 'None of these', '1\r'),
('The author of the play/book ?Ratnawali? is:', 'Tulsidas', 'Kalidas', 'Harsha Vardhan', 'Prem Chand', '3');

-- --------------------------------------------------------

--
-- Table structure for table `htmlvce789idq`
--

CREATE TABLE `htmlvce789idq` (
  `id` varchar(10) NOT NULL,
  `q1` int(5) DEFAULT NULL,
  `q2` int(5) DEFAULT NULL,
  `q3` int(5) DEFAULT NULL,
  `q4` int(5) DEFAULT NULL,
  `q5` int(5) DEFAULT NULL,
  `q6` int(5) DEFAULT NULL,
  `q7` int(5) DEFAULT NULL,
  `q8` int(5) DEFAULT NULL,
  `timeleft` datetime DEFAULT NULL,
  `sttimeleft` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `htmlvce789idq`
--

INSERT INTO `htmlvce789idq` (`id`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `timeleft`, `sttimeleft`) VALUES
('16881A05M2', 9, 4, 6, 10, 8, 0, 1, 2, '2019-06-24 17:19:30', '2019-06-24 17:16:30');

-- --------------------------------------------------------

--
-- Table structure for table `htmlvce789marks`
--

CREATE TABLE `htmlvce789marks` (
  `id` varchar(10) NOT NULL,
  `marks` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `htmlvce789marks`
--

INSERT INTO `htmlvce789marks` (`id`, `marks`) VALUES
('16881A05M2', 3);

-- --------------------------------------------------------

--
-- Table structure for table `htmlvce789rem`
--

CREATE TABLE `htmlvce789rem` (
  `id` varchar(10) NOT NULL,
  `q1` text,
  `q2` text,
  `q3` text,
  `q4` text,
  `q5` text,
  `q6` text,
  `q7` text,
  `q8` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `htmlvce789rem`
--

INSERT INTO `htmlvce789rem` (`id`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`) VALUES
('16881A05M2', 'q02', 'q11', 'q21', 'q30', 'q40', 'q51', 'q61', 'q72');

-- --------------------------------------------------------

--
-- Table structure for table `idq`
--

CREATE TABLE `idq` (
  `id` text NOT NULL,
  `q1` int(11) NOT NULL,
  `q2` int(11) NOT NULL,
  `q3` int(11) NOT NULL,
  `q4` int(11) NOT NULL,
  `q5` int(11) NOT NULL,
  `q6` int(11) NOT NULL,
  `q7` int(11) NOT NULL,
  `q8` int(11) NOT NULL,
  `q9` int(11) NOT NULL,
  `q10` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `idq`
--

INSERT INTO `idq` (`id`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`) VALUES
('16881A0503', 21, 20, 5, 4, 7, 3, 14, 23, 24, 29),
('16881A0504', 5, 26, 27, 13, 22, 16, 29, 21, 25, 19),
('16881A0505', 27, 20, 7, 13, 28, 5, 9, 22, 19, 16),
('16881A0506', 29, 3, 18, 2, 27, 17, 8, 1, 10, 5),
('16881A0510', 25, 36, 19, 30, 1, 44, 29, 14, 43, 41),
('16881A0517', 4, 18, 21, 23, 10, 11, 12, 27, 26, 8),
('16881A0525', 22, 6, 44, 42, 0, 12, 7, 26, 36, 31),
('16881A0544', 11, 4, 39, 19, 35, 33, 37, 23, 12, 26),
('16881A0590', 5, 1, 22, 6, 9, 10, 23, 13, 25, 24),
('16881A05C8', 5, 8, 23, 12, 21, 3, 0, 24, 26, 18),
('16881A05D3', 13, 24, 19, 29, 14, 21, 10, 22, 20, 23),
('16881A05D5', 8, 17, 27, 1, 22, 2, 21, 20, 4, 23),
('16881A05J2', 4, 14, 3, 18, 6, 20, 16, 0, 8, 24),
('16881A05J3', 20, 24, 17, 7, 10, 12, 14, 16, 28, 25),
('16881A05J4', 6, 22, 7, 16, 4, 8, 21, 3, 15, 2),
('16881A05J5', 12, 27, 19, 20, 15, 24, 6, 3, 22, 17),
('16881A05K8', 29, 1, 23, 18, 0, 8, 3, 22, 12, 7),
('16881A05L0', 27, 24, 11, 23, 6, 26, 10, 17, 16, 4),
('16881A05L4', 9, 24, 26, 22, 7, 29, 2, 1, 8, 11),
('16881A05L9', 6, 27, 12, 19, 8, 15, 10, 1, 9, 25),
('16881A05M0', 2, 9, 5, 23, 14, 20, 34, 0, 26, 16),
('16881A05M1', 0, 15, 18, 12, 27, 10, 19, 23, 9, 7),
('16881A05M2', 42, 1, 6, 24, 2, 13, 8, 3, 10, 36),
('16881A05M5', 5, 24, 9, 13, 28, 1, 16, 19, 26, 7),
('16881A05M9', 44, 39, 10, 26, 12, 41, 0, 5, 9, 18),
('16881A05N0', 28, 11, 16, 8, 9, 4, 3, 0, 23, 22),
('16881A05N6', 35, 36, 4, 0, 42, 17, 9, 31, 38, 19),
('16881A05P1', 0, 7, 9, 11, 27, 14, 17, 18, 23, 22),
('16881A05P2', 10, 3, 5, 21, 27, 23, 15, 25, 18, 11),
('16881A05P4', 20, 22, 16, 7, 19, 13, 18, 2, 28, 21),
('16881A05P7', 21, 7, 22, 26, 9, 5, 3, 6, 15, 13),
('16881A05P8', 33, 20, 26, 39, 30, 9, 38, 21, 41, 19),
('16881A1205', 9, 17, 2, 22, 24, 11, 28, 0, 15, 27),
('16881A1238', 16, 14, 28, 8, 29, 12, 5, 20, 4, 18),
('16881A1240', 20, 23, 15, 25, 19, 8, 29, 28, 4, 16),
('16881A1259', 27, 21, 8, 9, 6, 22, 17, 11, 25, 7),
('17881A0538', 16, 12, 7, 4, 0, 25, 10, 29, 11, 17),
('17881A05C6', 29, 2, 15, 18, 19, 22, 24, 21, 3, 5),
('17881A1234', 9, 28, 19, 6, 18, 5, 11, 0, 24, 29),
('17881A1275', 23, 5, 27, 10, 17, 11, 1, 6, 3, 25),
('18881A05D5', 0, 11, 42, 29, 36, 21, 5, 13, 33, 10),
('18881A05D9', 11, 16, 23, 29, 8, 43, 19, 44, 20, 4),
('18881A05J8', 19, 11, 22, 3, 21, 17, 14, 13, 12, 23),
('18881A05M3', 29, 40, 5, 34, 3, 27, 4, 2, 6, 35);

-- --------------------------------------------------------

--
-- Table structure for table `m1vce990`
--

CREATE TABLE `m1vce990` (
  `qu` tinytext,
  `op1` tinytext,
  `op2` tinytext,
  `op3` tinytext,
  `op4` tinytext,
  `ans` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m1vce990`
--

INSERT INTO `m1vce990` (`qu`, `op1`, `op2`, `op3`, `op4`, `ans`) VALUES
('How many languages and dialects are spoken by people all over the world?', '6000', '9000', '4000', '1000', '2\r'),
('Approximately, how many people speak Chinese language?', '1billion', '1million', '1lakh', '1thousand', '1\r'),
('The language with the richest vocabulary is:', 'hindi', 'french', 'english', 'german', '3\r'),
('English Language have more than ?? words:', '450000', '45000', '4500', '450', '1\r'),
('The oldest Indian language is:', 'telugu', 'hindi', 'tamil', 'punjabi', '3'),
('Which book has been printed in the maximum number of languages and these scripts?', 'The Bible', 'Hiraka Sutra', 'The Super Book', 'Noneofthese', '1'),
('The only religious book ever printed in a shorthand scripts is', 'The Ramayana', 'The Mahabharata', 'The bible', 'Guru Granth Sahib', '3'),
('The oldest printed work in the world, which dates back to AD 868 is:', 'The Bible', 'The Hirake Sutra', 'The Ramayana', 'The Mahabharata', '2\r'),
('The largest book, the super book, is ?? and weight is ??', '270 cm, 300 cm, 252 kg.', '100 cm, 110 cm, 100 kg.', '200 cm, 100 cm, 60 kg.', 'None of these', '1\r'),
('Les Hommes de bonne volontÃ© is the:', 'Longest novel ever published', 'Shortest novel every published', 'The oldest novel', 'None of these', '1\r'),
('The author of the play/book ?Ratnawali? is:', 'Tulsidas', 'Kalidas', 'Harsha Vardhan', 'Prem Chand', '3'),
('Which of the following in the book/play written by Maithili Sharan Gupt?', 'Saket', 'Satyartha Prakash', 'Shakuntala', 'Savitri', '1\r'),
('The book ?Satyartha Prakash? was written by:', 'Swami Dayanand', 'Swami Vivekanand', 'Sarojini Naidu', 'Kalidas', '1\r'),
('The play/book ?Shakuntala? was written by:', 'Maithili Sharan gupt', 'Swami Dayanand', 'Kalidas', 'Tulsidas', '3'),
('Which of the following is the author of ?Song of India, The?:', 'Firdausi', 'Sarojini Naidu', 'Lala Lajpat Rai', 'Sri Aurobindo Ghosh', '2'),
('The author of the book ?Time machine? is:', 'Lewis Carroll', 'Robert Louis Stevenson', 'Charles Lamb', 'H.G. Wells', '4\r'),
('Which of the following book was written by Tulsidas:', 'Vinay Patrika', 'Ramcharitmanas', 'Both (a) and (b)', 'Yashodhara', '3\r'),
('The book ?Vish Vriksha? was written by:', 'Bankimchandra Chatterjee', 'Annie Basant', 'Tulsidas', 'Kalidas', '1\r'),
('The book ?We Indians? was written by:', 'H.G. Wells', 'Khushwant Singh', 'James Jeans', 'Thomas Moore', '2'),
('Which of he follow ing is he author of play/book ?Yashodhara?:', 'Maithili Sharan Gupt', 'Khushwant Singh', 'Bankimchandra C hatterjee', 'Sarojini Naidu', '1\r'),
('Dhyan Chand was:', 'A great hockey player', 'Captained he Indian h ockey team which won a gold medal in 1936 Berlin Olympics', 'Scored 101 goals at the Olympic games and 300 goals in the international matches ', 'All the statements are correct', '4\r'),
('Who developed the small pox vaccination?', 'Eduard Jenner', 'Alexander Fleming', 'Albert Einstein', 'None of these', '1\r'),
('Euclid was:', 'Greek mathematician', 'Contributor to the use of deductive principles of logic as the basis of geometry', 'Propounded the geometrical theosems', 'All the statements are correct', '4\r'),
('Fa-hien was:', 'The first Buddhist pilgrim of China to visit India during the reign of Chandragupta Vikramaditya', 'The discover of Puerto Rico and Jamaica', 'The first Buddhist pilgrim of India to visit China', 'None of these', '1'),
('Firdausi was:', 'A person poet', 'Well known for his epic ?Sharnama?', 'Both are correct', 'None of these', '3'),
('Who is also kno wn as the ?Lady with the Lamp??', 'Florence Nightingale', 'Sarojini Naidu', 'Rani Laxmibai', 'Bachendri Pal', '1'),
('Gabriel Daniel F ahrenheit was:', 'A German Physicist', 'Developed the merc ury thermometer in 1714', 'Devised temperature scale', 'All are correct', '4\r'),
('Galileo was an I talian astronomer who:', 'Developed the telescope', 'Discovered 4 satellites of Jupiter', 'Discovered that the movement o f the pendulum produces a regular time measurement.', 'All are correct', '4\r'),
('Who is known a s the father of English poetry?', 'Geoffrey Chaucer', 'John Milton', 'John Keats', 'None of these', '1\r'),
('The American G eneral who led the revolt against the British & declared American independence was:', 'George Washington', 'Bill Clinton', 'George Bush', 'Noneofthese', '1\r');

-- --------------------------------------------------------

--
-- Table structure for table `m1vce990idq`
--

CREATE TABLE `m1vce990idq` (
  `id` varchar(10) NOT NULL,
  `q1` int(5) DEFAULT NULL,
  `q2` int(5) DEFAULT NULL,
  `q3` int(5) DEFAULT NULL,
  `q4` int(5) DEFAULT NULL,
  `q5` int(5) DEFAULT NULL,
  `q6` int(5) DEFAULT NULL,
  `q7` int(5) DEFAULT NULL,
  `q8` int(5) DEFAULT NULL,
  `q9` int(5) DEFAULT NULL,
  `q10` int(5) DEFAULT NULL,
  `q11` int(5) DEFAULT NULL,
  `q12` int(5) DEFAULT NULL,
  `timeleft` datetime DEFAULT NULL,
  `sttimeleft` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m1vce990idq`
--

INSERT INTO `m1vce990idq` (`id`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`, `q11`, `q12`, `timeleft`, `sttimeleft`) VALUES
('16881A0533', 7, 26, 10, 17, 14, 6, 18, 22, 13, 20, 0, 3, '2019-05-03 16:01:01', '2019-05-03 15:57:01'),
('16881A05M2', 20, 22, 12, 17, 1, 6, 3, 24, 25, 0, 7, 2, '2019-05-29 19:04:55', '2019-05-29 19:00:55');

-- --------------------------------------------------------

--
-- Table structure for table `m1vce990marks`
--

CREATE TABLE `m1vce990marks` (
  `id` varchar(10) NOT NULL,
  `marks` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m1vce990marks`
--

INSERT INTO `m1vce990marks` (`id`, `marks`) VALUES
('16881A05M2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `m1vce990rem`
--

CREATE TABLE `m1vce990rem` (
  `id` varchar(10) NOT NULL,
  `q1` text,
  `q2` text,
  `q3` text,
  `q4` text,
  `q5` text,
  `q6` text,
  `q7` text,
  `q8` text,
  `q9` text,
  `q10` text,
  `q11` text,
  `q12` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m1vce990rem`
--

INSERT INTO `m1vce990rem` (`id`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`, `q11`, `q12`) VALUES
('16881A0533', 'q01', 'q11', 'q21', '0', '0', '0', '0', '0', '0', '0', 'q101', 'q111'),
('16881A05M2', 'q01', 'q11', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` varchar(15) NOT NULL,
  `marks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `marks`) VALUES
('15881A05E5', 5),
('15881A05M2', 0),
('16881A0510', 0),
('16881A0525', 0),
('16881A0544', 2),
('16881A05L4', 3),
('16881A05M0', 4),
('16881A05M1', 0),
('16881A05M2', 0),
('16881A05M9', 0),
('16881A05N6', 0),
('16881A05P2', 0),
('16881A05P8', 0),
('16881A1238', 0),
('16881A1240', 1),
('16881A1259', 0),
('18881A05D9', 1),
('18881A05M3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pdf`
--

CREATE TABLE `pdf` (
  `sub` text NOT NULL,
  `fid` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pdf`
--

INSERT INTO `pdf` (`sub`, `fid`, `status`) VALUES
('WT', 'VCE123', 'stop');

-- --------------------------------------------------------

--
-- Table structure for table `pdf2`
--

CREATE TABLE `pdf2` (
  `sub` text NOT NULL,
  `fid` text NOT NULL,
  `status` text NOT NULL,
  `quest` text NOT NULL,
  `time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pdf2`
--

INSERT INTO `pdf2` (`sub`, `fid`, `status`, `quest`, `time`) VALUES
('ft', 'VCE990', 'stop', '14', '3'),
('M1', 'VCE990', 'stop', '12', '4'),
('HTML', 'VCE789', 'start', '8', '3');

-- --------------------------------------------------------

--
-- Table structure for table `stud`
--

CREATE TABLE `stud` (
  `name` varchar(15) DEFAULT NULL,
  `id` varchar(15) NOT NULL,
  `pass` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stud`
--

INSERT INTO `stud` (`name`, `id`, `pass`) VALUES
('YUVRAJ', '15881A05M5', '#6O8P'),
('RAGHU', '16881A0487', '#3M1Q'),
('Hemanth', '16881A04F5', '#1K1W'),
('sai', '16881A0533', '#4B6R'),
('madhu manideep', '16881A0546', '#6V3B'),
('madhu manideep', '16881A0589', '#7E2D'),
('dhoni', '16881A0590', '#9Z4U'),
('karunakar', '16881A05C8', '#8B2C'),
('Nagadeep', '16881A05D5', '#0P2H'),
('sri ram', '16881A05J2', '#2V1B'),
('ABJ', '16881A05J3', '#6K1R'),
('shivasai', '16881A05J5', '#5O0Z'),
('Chava Santosh', '16881A05J9', '#5F8O'),
('srija', '16881A05K5', '#1E8H'),
('G Rahul', '16881A05K7', '#8G2K'),
('K rashik', '16881A05K9', '#3S3I'),
('K MANOJ', '16881A05L0', '#2Z0Q'),
('praveen', '16881A05L3', '#3W7X'),
('dileep', '16881A05L4', '#0I5E'),
('murali', '16881A05M0', '#5N9X'),
('ANVESH', '16881A05M1', '#2V0L'),
('MANIDEEP', '16881A05M2', '#8Q9B'),
('rohith', '16881A05M5', '#4A1Z'),
('manaswini', '16881A05M9', '#3O2K'),
('LEELA PRASAD', '16881A05N2', '#2Q7R'),
('rammohan', '16881A05N6', '#7P0G'),
('praharsha', '16881A05N8', '#1I6M'),
('praneeth', '16881A05P1', '#9C6H'),
('vamshi krishna', '16881A05P2', '#0Q0G'),
('KC', '16881A05P4', '#0U0F'),
('madhusudhan', '16881A05P5', '#0H2S'),
('HANIL', '16881A05P7', '#1V9T'),
('phani', '16881A05P8', '#7O7O'),
('rajaram', '16881A05P9', '#7D7E'),
('VENKAT', '16881A05Q0', '#5F2N'),
('Ashutosh ', '16881A1205', '#7T5X'),
('jashwanth', '16881A1233', '#6C0O'),
('akash', '16881A1238', '#2J7V'),
('ANUSHA', '16881A1240', '#8B4S'),
('murali', '16881A1245', '#0Y9W'),
('Murali krishna', '16881A1259', '#0O9K'),
('SAI ROHITH', '16881A1267', '#6L2I'),
('akash bro', '16881A1290', '#6G9F'),
('nehra', '16881A1298', '#9T9S'),
('raju', '17881A0538', '#2E8Q'),
('Akhil', '17881A05C6', '#6F7C'),
('ANIRUDH', '17881A1205', '#9F3I'),
('I am IT', '17881A1234', '#5H6G'),
('shashank', '17881A12A8', '#9M3F'),
('Nagadeep', '18881A05D5', '#8C6U'),
('manaswini madhu', '18881A05D9', '#1Z8Q'),
('ramujan', '18881A05J8', '#1V1W'),
('SIR', '18881A05M0', '#6J5D'),
('raghunandan', '18881A05M2', '#9K3O'),
('manideep madhu', '18881A05M3', '#7K7D'),
('JJUUU', '18881A05M9', '#2M3O'),
('SAINI', '18881A05Q0', '#0M5X');

-- --------------------------------------------------------

--
-- Table structure for table `vce@45`
--

CREATE TABLE `vce@45` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wtvce123`
--

CREATE TABLE `wtvce123` (
  `qu` tinytext,
  `op1` tinytext,
  `op2` tinytext,
  `op3` tinytext,
  `op4` tinytext,
  `ans` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wtvce123`
--

INSERT INTO `wtvce123` (`qu`, `op1`, `op2`, `op3`, `op4`, `ans`) VALUES
('How many languages and dialects are spoken by people all over the world?', '6000', '9000', '4000', '1000', '2\r'),
('Approximately, how many people speak Chinese language?', '1billion', '1million', '1lakh', '1thousand', '1\r'),
('The language with the richest vocabulary is:', 'hindi', 'french', 'english', 'german', '3\r'),
('English Language have more than ?? words:', '450000', '45000', '4500', '450', '1\r'),
('The oldest Indian language is:', 'telugu', 'hindi', 'tamil', 'punjabi', '3'),
('Which book has been printed in the maximum number of languages and these scripts?', 'The Bible', 'Hiraka Sutra', 'The Super Book', 'Noneofthese', '1'),
('The only religious book ever printed in a shorthand scripts is', 'The Ramayana', 'The Mahabharata', 'The bible', 'Guru Granth Sahib', '3'),
('The oldest printed work in the world, which dates back to AD 868 is:', 'The Bible', 'The Hirake Sutra', 'The Ramayana', 'The Mahabharata', '2\r'),
('The largest book, the super book, is ?? and weight is ??', '270 cm, 300 cm, 252 kg.', '100 cm, 110 cm, 100 kg.', '200 cm, 100 cm, 60 kg.', 'None of these', '1\r'),
('Les Hommes de bonne volontÃ© is the:', 'Longest novel ever published', 'Shortest novel every published', 'The oldest novel', 'None of these', '1\r'),
('The author of the play/book ?Ratnawali? is:', 'Tulsidas', 'Kalidas', 'Harsha Vardhan', 'Prem Chand', '3'),
('Which of the following in the book/play written by Maithili Sharan Gupt?', 'Saket', 'Satyartha Prakash', 'Shakuntala', 'Savitri', '1\r'),
('The book ?Satyartha Prakash? was written by:', 'Swami Dayanand', 'Swami Vivekanand', 'Sarojini Naidu', 'Kalidas', '1\r'),
('The play/book ?Shakuntala? was written by:', 'Maithili Sharan gupt', 'Swami Dayanand', 'Kalidas', 'Tulsidas', '3'),
('Which of the following is the author of ?Song of India, The?:', 'Firdausi', 'Sarojini Naidu', 'Lala Lajpat Rai', 'Sri Aurobindo Ghosh', '2'),
('The author of the book ?Time machine? is:', 'Lewis Carroll', 'Robert Louis Stevenson', 'Charles Lamb', 'H.G. Wells', '4\r'),
('Which of the following book was written by Tulsidas:', 'Vinay Patrika', 'Ramcharitmanas', 'Both (a) and (b)', 'Yashodhara', '3\r'),
('The book ?Vish Vriksha? was written by:', 'Bankimchandra Chatterjee', 'Annie Basant', 'Tulsidas', 'Kalidas', '1\r'),
('The book ?We Indians? was written by:', 'H.G. Wells', 'Khushwant Singh', 'James Jeans', 'Thomas Moore', '2'),
('Which of he follow ing is he author of play/book ?Yashodhara?:', 'Maithili Sharan Gupt', 'Khushwant Singh', 'Bankimchandra C hatterjee', 'Sarojini Naidu', '1\r'),
('Dhyan Chand was:', 'A great hockey player', 'Captained he Indian h ockey team which won a gold medal in 1936 Berlin Olympics', 'Scored 101 goals at the Olympic games and 300 goals in the international matches ', 'All the statements are correct', '4\r'),
('Who developed the small pox vaccination?', 'Eduard Jenner', 'Alexander Fleming', 'Albert Einstein', 'None of these', '1\r'),
('Euclid was:', 'Greek mathematician', 'Contributor to the use of deductive principles of logic as the basis of geometry', 'Propounded the geometrical theosems', 'All the statements are correct', '4\r'),
('Fa-hien was:', 'The first Buddhist pilgrim of China to visit India during the reign of Chandragupta Vikramaditya', 'The discover of Puerto Rico and Jamaica', 'The first Buddhist pilgrim of India to visit China', 'None of these', '1'),
('Firdausi was:', 'A person poet', 'Well known for his epic ?Sharnama?', 'Both are correct', 'None of these', '3'),
('Who is also kno wn as the ?Lady with the Lamp??', 'Florence Nightingale', 'Sarojini Naidu', 'Rani Laxmibai', 'Bachendri Pal', '1'),
('Gabriel Daniel F ahrenheit was:', 'A German Physicist', 'Developed the merc ury thermometer in 1714', 'Devised temperature scale', 'All are correct', '4\r'),
('Galileo was an I talian astronomer who:', 'Developed the telescope', 'Discovered 4 satellites of Jupiter', 'Discovered that the movement o f the pendulum produces a regular time measurement.', 'All are correct', '4\r'),
('Who is known a s the father of English poetry?', 'Geoffrey Chaucer', 'John Milton', 'John Keats', 'None of these', '1\r'),
('The American G eneral who led the revolt against the British & declared American independence was:', 'George Washington', 'Bill Clinton', 'George Bush', 'Noneofthese', '1\r'),
('Which of the following is not a valid variable name declaration?', 'int _a3', 'int 3_a', 'int a_3', 'int _3a', '2\r'),
('All keywords in C are in', 'LowerCase letters', 'UpperCase letters', 'CamelCase letters', 'None', '1\r'),
('Variable name resolving (number of significant characters for uniqueness of variable) depends on', 'Assemblers and loaders implementations', 'C language', 'Compiler and linker implementations', 'None of these', '3\r'),
('Which of the datatypes have size that is variable?', 'int', 'struct', 'float', 'double', '2\r'),
('Which is correct with respect to size of the datatypes?', 'char > int > float', 'int > char > float', 'char < int < double', 'double > char > int', '3\r'),
('Which of the following declaration is not supported by C?', '3e', 'float str = 3e2', 'char *str', 'String str', '4\r'),
('Which keyword is used to prevent any changes in the variable within a C program?', 'non mutable', 'volatile', 'mutable', 'const', '3\r'),
('Result of a logical or relational expression in C is', '0 if expression is false and any positive number if expression is true', 'True or False', '0 or 1', 'None', '3\r'),
('Relational operators cannot be used on:', 'strings', 'structure', 'float', 'long', '2\r'),
('Which among the following is NOT a logical or relational operator?', '!=', '==', '||', '=', '4\r'),
('When double is converted to float, the value is?', 'Rounded', 'Truncated', 'Depends on the standard', 'Depends on the compiler 4\r', NULL),
('Which type conversion is NOT accepted?', 'From char to int', 'From float to char pointer', 'From double to char', 'From negative int to char', '2\r'),
('Which of the following typecasting is accepted by C?', 'Widening conversions', 'Narrowing conversions', 'Both', 'None', '3\r'),
('Are logical operators sequence points?', 'Depends on the compiler', 'True', 'False', 'Depends on the standard', '2\r'),
('Does logical operators in C language are evaluated with short circuit?', 'Depends on the standard', 'Depends on the compiler', 'False', 'True', '4');

-- --------------------------------------------------------

--
-- Table structure for table `wtvce123idq`
--

CREATE TABLE `wtvce123idq` (
  `id` varchar(10) NOT NULL,
  `q1` int(5) DEFAULT NULL,
  `q2` int(5) DEFAULT NULL,
  `q3` int(5) DEFAULT NULL,
  `q4` int(5) DEFAULT NULL,
  `q5` int(5) DEFAULT NULL,
  `q6` int(5) DEFAULT NULL,
  `q7` int(5) DEFAULT NULL,
  `q8` int(5) DEFAULT NULL,
  `q9` int(5) DEFAULT NULL,
  `q10` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wtvce123idq`
--

INSERT INTO `wtvce123idq` (`id`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`) VALUES
('15881A05M5', 9, 29, 30, 10, 3, 38, 12, 5, 2, 40),
('16881A05J5', 29, 42, 1, 11, 10, 21, 17, 2, 9, 13),
('16881A05K5', 27, 23, 22, 35, 9, 14, 19, 43, 37, 20),
('16881A05M1', 20, 8, 40, 31, 42, 3, 23, 22, 41, 17),
('16881A05M2', 42, 1, 33, 4, 30, 37, 29, 15, 6, 8),
('16881A05N2', 33, 13, 37, 38, 44, 5, 11, 3, 16, 35);

-- --------------------------------------------------------

--
-- Table structure for table `wtvce123marks`
--

CREATE TABLE `wtvce123marks` (
  `id` varchar(10) NOT NULL,
  `marks` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wtvce123marks`
--

INSERT INTO `wtvce123marks` (`id`, `marks`) VALUES
('15881A05M5', 4),
('16881A05J5', 5),
('16881A05K5', 9),
('16881A05M1', 3),
('16881A05M2', 2),
('16881A05N2', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ftvce990idq`
--
ALTER TABLE `ftvce990idq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ftvce990marks`
--
ALTER TABLE `ftvce990marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ftvce990rem`
--
ALTER TABLE `ftvce990rem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gk`
--
ALTER TABLE `gk`
  ADD PRIMARY KEY (`qu`(200));

--
-- Indexes for table `gk2`
--
ALTER TABLE `gk2`
  ADD PRIMARY KEY (`qu`(200));

--
-- Indexes for table `htmlvce789idq`
--
ALTER TABLE `htmlvce789idq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `htmlvce789marks`
--
ALTER TABLE `htmlvce789marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `htmlvce789rem`
--
ALTER TABLE `htmlvce789rem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `idq`
--
ALTER TABLE `idq`
  ADD PRIMARY KEY (`id`(20));

--
-- Indexes for table `m1vce990idq`
--
ALTER TABLE `m1vce990idq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m1vce990marks`
--
ALTER TABLE `m1vce990marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m1vce990rem`
--
ALTER TABLE `m1vce990rem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stud`
--
ALTER TABLE `stud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wtvce123idq`
--
ALTER TABLE `wtvce123idq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wtvce123marks`
--
ALTER TABLE `wtvce123marks`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
