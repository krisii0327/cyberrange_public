-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 06, 2025 at 06:33 PM
-- Server version: 8.0.35
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codetechsolution`
--

-- --------------------------------------------------------

--
-- Table structure for table `cts_about`
--

CREATE TABLE `cts_about` (
  `id` int NOT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ptitle` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `stitle` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cts_about`
--

INSERT INTO `cts_about` (`id`, `title`, `ptitle`, `stitle`, `text`) VALUES
(1, 'About our company', 'Looking to enhance your solution\'s intelligence, efficiency, and reliability?', 'who we are', 'CodeTech Solutions is a new programming start-up company founded by four founded by an ambitious young computer scientist. Their goal is to revolutionize it the industry with the help of the latest technologies and innovative solutions.');

-- --------------------------------------------------------

--
-- Table structure for table `cts_contacts`
--

CREATE TABLE `cts_contacts` (
  `id` int NOT NULL,
  `title` varchar(200) NOT NULL,
  `ptitle` text NOT NULL,
  `text` text NOT NULL,
  `phone` varchar(200) NOT NULL,
  `skype` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `map` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cts_contacts`
--

INSERT INTO `cts_contacts` (`id`, `title`, `ptitle`, `text`, `phone`, `skype`, `email`, `map`) VALUES
(1, 'Get in touch with us', 'Our team is waiting for more ambitious young IT professionals to apply.', 'Feel free to ask if you have any question regarding our services or if you just want to say Hello, we would love to hear from you.', '+36 (1) 666-5605 or +6221 213 22 22', 'hello.codetechsolutions', 'info@codetechsolutions.com', 'https://maps.google.com/maps?width=571&amp;height=355&amp;hl=en&amp;q=Bécsi út Óbudai Egyetem&amp;t=&amp;z=15&amp;ie=UTF8&amp;iwloc=B&amp;output=embed');

-- --------------------------------------------------------

--
-- Table structure for table `cts_developers`
--

CREATE TABLE `cts_developers` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `active` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cts_developers`
--

INSERT INTO `cts_developers` (`id`, `name`, `title`, `email`, `active`) VALUES
(1, 'Alex', 'CEO', 'alex-ceo@codetechsolutions.com', 1),
(2, 'Zoe', 'Graphics', 'zoe@codetechsolutions.com', 1),
(3, 'Laca', 'Head of Projects', 'liam@codetechsolutions.com', 1),
(4, 'Mia', 'Black-belt sw engineer', 'mia@codetechsolutions.com', 1),
(5, 'Daniel', 'He\'s coffe is heavenly', 'dany@codetechsolutions.com', 1),
(6, 'Lily', 'Head of Projects', 'ly@codetechsolutions.com', 1),
(7, 'Soma', 'Head of Projects', 's0ma@codetechsolutions.com', 1),
(8, 'Vivien', 'SW engineer', 'vivien@codetechsolutions.com', 1),
(9, 'Sarah', 'Head of developers', 'sarah.johanna@codetechsolutions.com', 0),
(10, 'Peter', 'App Designer', 'p3t3r@codetechsolutions.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cts_homepage`
--

CREATE TABLE `cts_homepage` (
  `id` int NOT NULL,
  `title` varchar(300) NOT NULL,
  `text` varchar(300) NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cts_homepage`
--

INSERT INTO `cts_homepage` (`id`, `title`, `text`, `image`) VALUES
(1, 'code(tech){Solutions}', 'Our Firmware delivers the intelligence to your system', 'img-1.png'),
(2, 'Hello I\'am CTS', 'Custom Solutions & Services', 'img-2.png'),
(3, 'With latest technology', 'Looking to enhance your solution\'s intelligence, efficiency, and reliability?', 'img-3.png'),
(4, 'Save your child!', 'Is it possible to save the child from harmful contents?', 'img-4.png');

-- --------------------------------------------------------

--
-- Table structure for table `cts_services`
--

CREATE TABLE `cts_services` (
  `id` int NOT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ptitle` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `stitle` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cts_services`
--

INSERT INTO `cts_services` (`id`, `title`, `ptitle`, `stitle`, `text`) VALUES
(1, 'CTS\' services', 'aiassist, securenet, healthtrack, edugamix', '', 'CodeTech Solutions team passionately <br/> believes in coding creates an opportunity to push boundaries \n			  and shape the future. Offers benefits that are critical <br />to efficient and up-to-date for development processes.');

-- --------------------------------------------------------

--
-- Table structure for table `cts_services_details`
--

CREATE TABLE `cts_services_details` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `icon` varchar(255) NOT NULL,
  `active` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cts_services_details`
--

INSERT INTO `cts_services_details` (`id`, `title`, `text`, `icon`, `active`) VALUES
(1, 'AIAssist', 'AIAssist is an intelligent assistant that is artificial using intelligence algorithms to help users a in everyday tasks.', 'icon-group', 1),
(2, 'SecureNet', 'SecureNet is an innovative, secure network solution, which protects companies\' sensitive data traffic and enhances the cyber security.', 'icon-thumbs-up', 1),
(3, 'HealthTrack', 'HealthTrack is a health tracking platform that connects healthcare providers and patients.', 'icon-beaker', 1),
(4, 'EduGamiX', 'EduGamiX is an interactive educational platform that is playful helps students in learning.', 'icon-twitter', 1),
(5, 'EduAbort', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cts_works`
--

CREATE TABLE `cts_works` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `active` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cts_works`
--

INSERT INTO `cts_works` (`id`, `title`, `text`, `active`) VALUES
(1, 'What we\'ve done', 'Passion drives us daily to shape a better tomorrow. <br /> Our tailored products and advanced development services enhance safety.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `datum` varchar(30) NOT NULL,
  `projekt` varchar(200) NOT NULL,
  `cim` varchar(500) NOT NULL,
  `leiras` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `datum`, `projekt`, `cim`, `leiras`) VALUES
(1, '2023-03-04', 'AI Assist', 'Partnership with TechCorp', 'AI Assist is excited to announce its strategic partnership with TechCorp, a leading technology firm specializing in enterprise solutions. This collaboration will allow both companies to leverage each other\'s expertise in developing cutting-edge AI applications.'),
(2, '2023-03-07', 'AI Assist', 'Security Patch Update', 'AI Assist has released a crucial security update to address potential vulnerabilities in its AI systems. The latest patch includes fixes for previously identified risks and improvements to data encryption techniques.'),
(3, '2023-03-10', 'HealthTrack', 'Sleep Monitoring Enhancements', 'New AI-based sleep monitoring available in HealthTrack.'),
(4, '2023-03-13', 'AI Assist', 'Expansion to New Markets', 'AI Assist is expanding its reach to new international markets, including Europe and Asia. This move aligns with the company\'s vision to make artificial intelligence accessible to businesses worldwide.'),
(5, '2023-03-16', 'EduGamiX', 'Virtual Reality in Learning', 'EduGamiX integrates VR technology into educational games.'),
(6, '2023-03-19', 'HealthTrack', 'Partnership with Hospitals', 'HealthTrack partners with hospitals for better health insights.'),
(7, '2023-03-22', 'AI Assist', 'User Feedback Integration', 'Listening to user feedback is a priority for AI Assist. Based on extensive beta testing and customer insights, several key improvements have been integrated into the latest version of the platform.'),
(8, '2023-03-25', 'SecureNet', 'Usage Statistics Report', 'Over 1 million families now use SecureNet for child protection.'),
(9, '2023-03-28', 'SecureNet', 'Usage Statistics Report', 'Over 1 million families now use SecureNet for child protection.'),
(10, '2023-03-31', 'HealthTrack', 'Diabetes Management Feature', 'New feature helps users track and manage diabetes efficiently.'),
(11, '2023-04-03', 'EduGamiX', 'Collaboration with Universities', 'EduGamiX collaborates with universities to enhance digital learning.'),
(12, '2023-04-06', 'HealthTrack', 'New Heart Monitoring Feature', 'HealthTrack introduces real-time heart monitoring for users.'),
(13, '2023-04-09', 'AI Assist', 'New AI Model Released', 'The AI Assist team has launched a groundbreaking artificial intelligence model designed to improve predictive accuracy and efficiency. This new model is based on advanced deep learning techniques, enabling businesses to gain better insights from their data.'),
(14, '2023-04-12', 'EduGamiX', 'Expansion to Online Platforms', 'New browser-based educational games introduced by EduGamiX.'),
(15, '2023-04-15', 'AI Assist', 'Partnership with TechCorp', 'AI Assist is excited to announce its strategic partnership with TechCorp, a leading technology firm specializing in enterprise solutions. This collaboration will allow both companies to leverage each other\'s expertise in developing cutting-edge AI applications.'),
(16, '2023-04-18', 'AI Assist', 'Partnership with TechCorp', 'AI Assist is excited to announce its strategic partnership with TechCorp, a leading technology firm specializing in enterprise solutions. This collaboration will allow both companies to leverage each other\'s expertise in developing cutting-edge AI applications.'),
(17, '2023-04-21', 'HealthTrack', 'Sleep Monitoring Enhancements', 'New AI-based sleep monitoring available in HealthTrack.'),
(18, '2023-04-24', 'EduGamiX', 'Virtual Reality in Learning', 'EduGamiX integrates VR technology into educational games.'),
(19, '2023-04-27', 'AI Assist', 'Security Patch Update', 'AI Assist has released a crucial security update to address potential vulnerabilities in its AI systems. The latest patch includes fixes for previously identified risks and improvements to data encryption techniques.'),
(20, '2023-04-30', 'AI Assist', 'User Feedback Integration', 'Listening to user feedback is a priority for AI Assist. Based on extensive beta testing and customer insights, several key improvements have been integrated into the latest version of the platform.'),
(21, '2023-05-03', 'AI Assist', 'Security Patch Update', 'AI Assist has released a crucial security update to address potential vulnerabilities in its AI systems. The latest patch includes fixes for previously identified risks and improvements to data encryption techniques.'),
(22, '2023-05-06', 'HealthTrack', 'Partnership with Hospitals', 'HealthTrack partners with hospitals for better health insights.'),
(23, '2023-05-09', 'EduGamiX', 'User Engagement Statistics', 'EduGamiX reports a 40% increase in active users.'),
(24, '2023-05-12', 'SecureNet', 'Collaboration with Schools', 'SecureNet partners with schools to improve digital safety awareness.'),
(25, '2023-05-15', 'SecureNet', 'Usage Statistics Report', 'Over 1 million families now use SecureNet for child protection.'),
(26, '2023-05-18', 'SecureNet', 'New Security Features', 'Enhanced encryption and safer browsing introduced in SecureNet.'),
(27, '2023-05-21', 'AI Assist', 'User Feedback Integration', 'Listening to user feedback is a priority for AI Assist. Based on extensive beta testing and customer insights, several key improvements have been integrated into the latest version of the platform.'),
(28, '2023-05-24', 'AI Assist', 'Security Patch Update', 'AI Assist has released a crucial security update to address potential vulnerabilities in its AI systems. The latest patch includes fixes for previously identified risks and improvements to data encryption techniques.'),
(29, '2023-05-27', 'SecureNet', 'New Security Features', 'Enhanced encryption and safer browsing introduced in SecureNet.'),
(30, '2023-05-30', 'SecureNet', 'Usage Statistics Report', 'Over 1 million families now use SecureNet for child protection.'),
(31, '2023-06-02', 'SecureNet', 'Usage Statistics Report', 'Over 1 million families now use SecureNet for child protection.'),
(32, '2023-06-05', 'SecureNet', 'Collaboration with Schools', 'SecureNet partners with schools to improve digital safety awareness.'),
(33, '2023-06-08', 'SecureNet', 'Mobile App Release', 'SecureNet parental control app is now available on iOS and Android.'),
(34, '2023-06-11', 'SecureNet', 'Usage Statistics Report', 'Over 1 million families now use SecureNet for child protection.'),
(35, '2023-06-14', 'AI Assist', 'Expansion to New Markets', 'AI Assist is expanding its reach to new international markets, including Europe and Asia. This move aligns with the company\'s vision to make artificial intelligence accessible to businesses worldwide.'),
(36, '2023-06-17', 'SecureNet', 'Collaboration with Schools', 'SecureNet partners with schools to improve digital safety awareness.'),
(37, '2023-06-20', 'AI Assist', 'User Feedback Integration', 'Listening to user feedback is a priority for AI Assist. Based on extensive beta testing and customer insights, several key improvements have been integrated into the latest version of the platform.'),
(38, '2023-06-23', 'HealthTrack', 'Partnership with Hospitals', 'HealthTrack partners with hospitals for better health insights.'),
(39, '2023-06-26', 'HealthTrack', 'Sleep Monitoring Enhancements', 'New AI-based sleep monitoring available in HealthTrack.'),
(40, '2023-06-29', 'SecureNet', 'Mobile App Release', 'SecureNet parental control app is now available on iOS and Android.'),
(41, '2023-07-02', 'HealthTrack', 'Fitness Tracking Improved', 'Updated algorithms now provide more accurate fitness tracking.'),
(42, '2023-07-05', 'HealthTrack', 'Diabetes Management Feature', 'New feature helps users track and manage diabetes efficiently.'),
(43, '2023-07-08', 'EduGamiX', 'Expansion to Online Platforms', 'New browser-based educational games introduced by EduGamiX.'),
(44, '2023-07-11', 'EduGamiX', 'Collaboration with Universities', 'EduGamiX collaborates with universities to enhance digital learning.'),
(45, '2023-07-14', 'AI Assist', 'New AI Model Released', 'The AI Assist team has launched a groundbreaking artificial intelligence model designed to improve predictive accuracy and efficiency. This new model is based on advanced deep learning techniques, enabling businesses to gain better insights from their data.'),
(46, '2023-07-17', 'EduGamiX', 'Expansion to Online Platforms', 'New browser-based educational games introduced by EduGamiX.'),
(47, '2023-07-20', 'HealthTrack', 'Fitness Tracking Improved', 'Updated algorithms now provide more accurate fitness tracking.'),
(48, '2023-07-23', 'EduGamiX', 'Collaboration with Universities', 'EduGamiX collaborates with universities to enhance digital learning.'),
(49, '2023-07-26', 'SecureNet', 'Parental Control App Update', 'SecureNet introduced new content filtering options.'),
(50, '2023-07-29', 'AI Assist', 'Partnership with TechCorp', 'AI Assist is excited to announce its strategic partnership with TechCorp, a leading technology firm specializing in enterprise solutions. This collaboration will allow both companies to leverage each other\'s expertise in developing cutting-edge AI applications.'),
(51, '2023-08-01', 'AI Assist', 'Security Patch Update', 'AI Assist has released a crucial security update to address potential vulnerabilities in its AI systems. The latest patch includes fixes for previously identified risks and improvements to data encryption techniques.'),
(52, '2023-08-04', 'AI Assist', 'Security Patch Update', 'AI Assist has released a crucial security update to address potential vulnerabilities in its AI systems. The latest patch includes fixes for previously identified risks and improvements to data encryption techniques.'),
(53, '2023-08-07', 'EduGamiX', 'Collaboration with Universities', 'EduGamiX collaborates with universities to enhance digital learning.'),
(54, '2023-08-10', 'EduGamiX', 'Collaboration with Universities', 'EduGamiX collaborates with universities to enhance digital learning.'),
(55, '2023-08-13', 'SecureNet', 'Collaboration with Schools', 'SecureNet partners with schools to improve digital safety awareness.'),
(56, '2023-08-16', 'SecureNet', 'Collaboration with Schools', 'SecureNet partners with schools to improve digital safety awareness.'),
(57, '2023-08-19', 'SecureNet', 'New Security Features', 'Enhanced encryption and safer browsing introduced in SecureNet.'),
(58, '2023-08-22', 'EduGamiX', 'User Engagement Statistics', 'EduGamiX reports a 40% increase in active users.'),
(59, '2023-08-25', 'AI Assist', 'Partnership with TechCorp', 'AI Assist is excited to announce its strategic partnership with TechCorp, a leading technology firm specializing in enterprise solutions. This collaboration will allow both companies to leverage each other\'s expertise in developing cutting-edge AI applications.'),
(60, '2023-08-28', 'EduGamiX', 'Virtual Reality in Learning', 'EduGamiX integrates VR technology into educational games.'),
(61, '2023-08-31', 'SecureNet', 'Usage Statistics Report', 'Over 1 million families now use SecureNet for child protection.'),
(62, '2023-09-03', 'EduGamiX', 'Expansion to Online Platforms', 'New browser-based educational games introduced by EduGamiX.'),
(63, '2023-09-06', 'EduGamiX', 'User Engagement Statistics', 'EduGamiX reports a 40% increase in active users.'),
(64, '2023-09-09', 'SecureNet', 'Parental Control App Update', 'SecureNet introduced new content filtering options.'),
(65, '2023-09-12', 'EduGamiX', 'Expansion to Online Platforms', 'New browser-based educational games introduced by EduGamiX.'),
(66, '2023-09-15', 'HealthTrack', 'Fitness Tracking Improved', 'Updated algorithms now provide more accurate fitness tracking.'),
(67, '2023-09-18', 'EduGamiX', 'User Engagement Statistics', 'EduGamiX reports a 40% increase in active users.'),
(68, '2023-09-21', 'AI Assist', 'Expansion to New Markets', 'AI Assist is expanding its reach to new international markets, including Europe and Asia. This move aligns with the company\'s vision to make artificial intelligence accessible to businesses worldwide.'),
(69, '2023-09-24', 'HealthTrack', 'Partnership with Hospitals', 'HealthTrack partners with hospitals for better health insights.'),
(70, '2023-09-27', 'EduGamiX', 'Expansion to Online Platforms', 'New browser-based educational games introduced by EduGamiX.'),
(71, '2023-09-30', 'SecureNet', 'Parental Control App Update', 'SecureNet introduced new content filtering options.'),
(72, '2023-10-03', 'HealthTrack', 'New Heart Monitoring Feature', 'HealthTrack introduces real-time heart monitoring for users.'),
(73, '2023-10-06', 'EduGamiX', 'Virtual Reality in Learning', 'EduGamiX integrates VR technology into educational games.'),
(74, '2023-10-09', 'HealthTrack', 'Sleep Monitoring Enhancements', 'New AI-based sleep monitoring available in HealthTrack.'),
(75, '2023-10-12', 'HealthTrack', 'Sleep Monitoring Enhancements', 'New AI-based sleep monitoring available in HealthTrack.'),
(76, '2023-10-15', 'AI Assist', 'User Feedback Integration', 'Listening to user feedback is a priority for AI Assist. Based on extensive beta testing and customer insights, several key improvements have been integrated into the latest version of the platform.'),
(77, '2023-10-18', 'EduGamiX', 'Virtual Reality in Learning', 'EduGamiX integrates VR technology into educational games.'),
(78, '2023-10-21', 'EduGamiX', 'New Educational Game Launched', 'EduGamiX releases an interactive math learning game.'),
(79, '2023-10-24', 'HealthTrack', 'Fitness Tracking Improved', 'Updated algorithms now provide more accurate fitness tracking.'),
(80, '2023-10-27', 'HealthTrack', 'Partnership with Hospitals', 'HealthTrack partners with hospitals for better health insights.'),
(81, '2023-10-30', 'SecureNet', 'Collaboration with Schools', 'SecureNet partners with schools to improve digital safety awareness.'),
(82, '2023-11-02', 'HealthTrack', 'Partnership with Hospitals', 'HealthTrack partners with hospitals for better health insights.'),
(83, '2023-11-05', 'HealthTrack', 'Partnership with Hospitals', 'HealthTrack partners with hospitals for better health insights.'),
(84, '2023-11-08', 'AI Assist', 'Partnership with TechCorp', 'AI Assist is excited to announce its strategic partnership with TechCorp, a leading technology firm specializing in enterprise solutions. This collaboration will allow both companies to leverage each other\'s expertise in developing cutting-edge AI applications.'),
(85, '2023-11-11', 'AI Assist', 'User Feedback Integration', 'Listening to user feedback is a priority for AI Assist. Based on extensive beta testing and customer insights, several key improvements have been integrated into the latest version of the platform.'),
(86, '2023-11-14', 'SecureNet', 'Collaboration with Schools', 'SecureNet partners with schools to improve digital safety awareness.'),
(87, '2023-11-17', 'SecureNet', 'Usage Statistics Report', 'Over 1 million families now use SecureNet for child protection.'),
(88, '2023-11-20', 'SecureNet', 'New Security Features', 'Enhanced encryption and safer browsing introduced in SecureNet.'),
(89, '2023-11-23', 'HealthTrack', 'New Heart Monitoring Feature', 'HealthTrack introduces real-time heart monitoring for users.'),
(90, '2023-11-26', 'AI Assist', 'Security Patch Update', 'AI Assist has released a crucial security update to address potential vulnerabilities in its AI systems. The latest patch includes fixes for previously identified risks and improvements to data encryption techniques.'),
(91, '2023-11-29', 'HealthTrack', 'New Heart Monitoring Feature', 'HealthTrack introduces real-time heart monitoring for users.'),
(92, '2023-12-02', 'SecureNet', 'Mobile App Release', 'SecureNet parental control app is now available on iOS and Android.'),
(93, '2023-12-05', 'HealthTrack', 'Fitness Tracking Improved', 'Updated algorithms now provide more accurate fitness tracking.'),
(94, '2023-12-08', 'AI Assist', 'Security Patch Update', 'AI Assist has released a crucial security update to address potential vulnerabilities in its AI systems. The latest patch includes fixes for previously identified risks and improvements to data encryption techniques.'),
(95, '2023-12-11', 'HealthTrack', 'Fitness Tracking Improved', 'Updated algorithms now provide more accurate fitness tracking.'),
(96, '2023-12-14', 'HealthTrack', 'New Heart Monitoring Feature', 'HealthTrack introduces real-time heart monitoring for users.'),
(97, '2023-12-17', 'EduGamiX', 'New Educational Game Launched', 'EduGamiX releases an interactive math learning game.'),
(98, '2023-12-20', 'SecureNet', 'Mobile App Release', 'SecureNet parental control app is now available on iOS and Android.'),
(99, '2023-12-23', 'SecureNet', 'Usage Statistics Report', 'Over 1 million families now use SecureNet for child protection.'),
(100, '2023-12-26', 'EduGamiX', 'New Educational Game Launched', 'EduGamiX releases an interactive math learning game.'),
(101, '2023-12-29', 'HealthTrack', 'Sleep Monitoring Enhancements', 'New AI-based sleep monitoring available in HealthTrack.'),
(102, '2024-01-01', 'HealthTrack', 'Partnership with Hospitals', 'HealthTrack partners with hospitals for better health insights.'),
(103, '2024-01-04', 'HealthTrack', 'Diabetes Management Feature', 'New feature helps users track and manage diabetes efficiently.'),
(104, '2024-01-07', 'EduGamiX', 'Expansion to Online Platforms', 'New browser-based educational games introduced by EduGamiX.'),
(105, '2024-01-10', 'EduGamiX', 'Expansion to Online Platforms', 'New browser-based educational games introduced by EduGamiX.'),
(106, '2024-01-13', 'AI Assist', 'Security Patch Update', 'AI Assist has released a crucial security update to address potential vulnerabilities in its AI systems. The latest patch includes fixes for previously identified risks and improvements to data encryption techniques.'),
(107, '2024-01-16', 'HealthTrack', 'Diabetes Management Feature', 'New feature helps users track and manage diabetes efficiently.'),
(108, '2024-01-19', 'EduGamiX', 'Expansion to Online Platforms', 'New browser-based educational games introduced by EduGamiX.'),
(109, '2024-01-22', 'SecureNet', 'Usage Statistics Report', 'Over 1 million families now use SecureNet for child protection.'),
(110, '2024-01-25', 'EduGamiX', 'User Engagement Statistics', 'EduGamiX reports a 40% increase in active users.'),
(111, '2024-01-28', 'EduGamiX', 'New Educational Game Launched', 'EduGamiX releases an interactive math learning game.'),
(112, '2024-01-31', 'HealthTrack', 'New Heart Monitoring Feature', 'HealthTrack introduces real-time heart monitoring for users.'),
(113, '2024-02-03', 'AI Assist', 'Partnership with TechCorp', 'AI Assist is excited to announce its strategic partnership with TechCorp, a leading technology firm specializing in enterprise solutions. This collaboration will allow both companies to leverage each other\'s expertise in developing cutting-edge AI applications.'),
(114, '2024-02-06', 'AI Assist', 'Partnership with TechCorp', 'AI Assist is excited to announce its strategic partnership with TechCorp, a leading technology firm specializing in enterprise solutions. This collaboration will allow both companies to leverage each other\'s expertise in developing cutting-edge AI applications.'),
(115, '2024-02-09', 'SecureNet', 'Mobile App Release', 'SecureNet parental control app is now available on iOS and Android.'),
(116, '2024-02-12', 'AI Assist', 'Security Patch Update', 'AI Assist has released a crucial security update to address potential vulnerabilities in its AI systems. The latest patch includes fixes for previously identified risks and improvements to data encryption techniques.'),
(117, '2024-02-15', 'SecureNet', 'Usage Statistics Report', 'Over 1 million families now use SecureNet for child protection.'),
(118, '2024-02-18', 'HealthTrack', 'Fitness Tracking Improved', 'Updated algorithms now provide more accurate fitness tracking.'),
(119, '2024-02-21', 'EduGamiX', 'Virtual Reality in Learning', 'EduGamiX integrates VR technology into educational games.'),
(120, '2024-02-24', 'EduGamiX', 'New Educational Game Launched', 'EduGamiX releases an interactive math learning game.'),
(121, '2024-02-27', 'SecureNet', 'Usage Statistics Report', 'Over 1 million families now use SecureNet for child protection.'),
(122, '2024-03-01', 'HealthTrack', 'Partnership with Hospitals', 'HealthTrack partners with hospitals for better health insights.'),
(123, '2024-03-04', 'AI Assist', 'Partnership with TechCorp', 'AI Assist is excited to announce its strategic partnership with TechCorp, a leading technology firm specializing in enterprise solutions. This collaboration will allow both companies to leverage each other\'s expertise in developing cutting-edge AI applications.'),
(124, '2024-03-07', 'AI Assist', 'User Feedback Integration', 'Listening to user feedback is a priority for AI Assist. Based on extensive beta testing and customer insights, several key improvements have been integrated into the latest version of the platform.'),
(125, '2024-03-10', 'AI Assist', 'Partnership with TechCorp', 'AI Assist is excited to announce its strategic partnership with TechCorp, a leading technology firm specializing in enterprise solutions. This collaboration will allow both companies to leverage each other\'s expertise in developing cutting-edge AI applications.'),
(126, '2024-03-13', 'HealthTrack', 'Diabetes Management Feature', 'New feature helps users track and manage diabetes efficiently.'),
(127, '2024-03-16', 'HealthTrack', 'Diabetes Management Feature', 'New feature helps users track and manage diabetes efficiently.'),
(128, '2024-03-19', 'SecureNet', 'Parental Control App Update', 'SecureNet introduced new content filtering options.'),
(129, '2024-03-22', 'AI Assist', 'Partnership with TechCorp', 'AI Assist is excited to announce its strategic partnership with TechCorp, a leading technology firm specializing in enterprise solutions. This collaboration will allow both companies to leverage each other\'s expertise in developing cutting-edge AI applications.'),
(130, '2024-03-25', 'AI Assist', 'New AI Model Released', 'The AI Assist team has launched a groundbreaking artificial intelligence model designed to improve predictive accuracy and efficiency. This new model is based on advanced deep learning techniques, enabling businesses to gain better insights from their data.'),
(131, '2024-03-28', 'SecureNet', 'Collaboration with Schools', 'SecureNet partners with schools to improve digital safety awareness.'),
(132, '2024-03-31', 'HealthTrack', 'Fitness Tracking Improved', 'Updated algorithms now provide more accurate fitness tracking.'),
(133, '2024-04-03', 'AI Assist', 'Security Patch Update', 'AI Assist has released a crucial security update to address potential vulnerabilities in its AI systems. The latest patch includes fixes for previously identified risks and improvements to data encryption techniques.'),
(134, '2024-04-06', 'EduGamiX', 'Collaboration with Universities', 'EduGamiX collaborates with universities to enhance digital learning.'),
(135, '2024-04-09', 'SecureNet', 'Collaboration with Schools', 'SecureNet partners with schools to improve digital safety awareness.'),
(136, '2024-04-12', 'AI Assist', 'Expansion to New Markets', 'AI Assist is expanding its reach to new international markets, including Europe and Asia. This move aligns with the company\'s vision to make artificial intelligence accessible to businesses worldwide.'),
(137, '2024-04-15', 'HealthTrack', 'Partnership with Hospitals', 'HealthTrack partners with hospitals for better health insights.'),
(138, '2024-04-18', 'SecureNet', 'Usage Statistics Report', 'Over 1 million families now use SecureNet for child protection.'),
(139, '2024-04-21', 'EduGamiX', 'User Engagement Statistics', 'EduGamiX reports a 40% increase in active users.'),
(140, '2024-04-24', 'SecureNet', 'Parental Control App Update', 'SecureNet introduced new content filtering options.'),
(141, '2024-04-27', 'HealthTrack', 'Partnership with Hospitals', 'HealthTrack partners with hospitals for better health insights.'),
(142, '2024-04-30', 'HealthTrack', 'New Heart Monitoring Feature', 'HealthTrack introduces real-time heart monitoring for users.'),
(143, '2024-05-03', 'HealthTrack', 'Diabetes Management Feature', 'New feature helps users track and manage diabetes efficiently.'),
(144, '2024-05-06', 'AI Assist', 'User Feedback Integration', 'Listening to user feedback is a priority for AI Assist. Based on extensive beta testing and customer insights, several key improvements have been integrated into the latest version of the platform.'),
(145, '2024-05-09', 'EduGamiX', 'Virtual Reality in Learning', 'EduGamiX integrates VR technology into educational games.'),
(146, '2024-05-12', 'AI Assist', 'User Feedback Integration', 'Listening to user feedback is a priority for AI Assist. Based on extensive beta testing and customer insights, several key improvements have been integrated into the latest version of the platform.'),
(147, '2024-05-15', 'SecureNet', 'Parental Control App Update', 'SecureNet introduced new content filtering options.'),
(148, '2024-05-18', 'EduGamiX', 'User Engagement Statistics', 'EduGamiX reports a 40% increase in active users.'),
(149, '2024-05-21', 'AI Assist', 'Expansion to New Markets', 'AI Assist is expanding its reach to new international markets, including Europe and Asia. This move aligns with the company\'s vision to make artificial intelligence accessible to businesses worldwide.'),
(150, '2024-05-24', 'SecureNet', 'New Security Features', 'Enhanced encryption and safer browsing introduced in SecureNet.'),
(151, '2024-05-27', 'AI Assist', 'Partnership with TechCorp', 'AI Assist is excited to announce its strategic partnership with TechCorp, a leading technology firm specializing in enterprise solutions. This collaboration will allow both companies to leverage each other\'s expertise in developing cutting-edge AI applications.'),
(152, '2024-05-30', 'HealthTrack', 'Partnership with Hospitals', 'HealthTrack partners with hospitals for better health insights.'),
(153, '2024-06-02', 'EduGamiX', 'New Educational Game Launched', 'EduGamiX releases an interactive math learning game.'),
(154, '2024-06-05', 'EduGamiX', 'Expansion to Online Platforms', 'New browser-based educational games introduced by EduGamiX.'),
(155, '2024-06-08', 'SecureNet', 'New Security Features', 'Enhanced encryption and safer browsing introduced in SecureNet.'),
(156, '2024-06-11', 'AI Assist', 'Expansion to New Markets', 'AI Assist is expanding its reach to new international markets, including Europe and Asia. This move aligns with the company\'s vision to make artificial intelligence accessible to businesses worldwide.'),
(157, '2024-06-14', 'EduGamiX', 'New Educational Game Launched', 'EduGamiX releases an interactive math learning game.'),
(158, '2024-06-17', 'SecureNet', 'Usage Statistics Report', 'Over 1 million families now use SecureNet for child protection.'),
(159, '2024-06-20', 'AI Assist', 'Partnership with TechCorp', 'AI Assist is excited to announce its strategic partnership with TechCorp, a leading technology firm specializing in enterprise solutions. This collaboration will allow both companies to leverage each other\'s expertise in developing cutting-edge AI applications.'),
(160, '2024-06-23', 'AI Assist', 'User Feedback Integration', 'Listening to user feedback is a priority for AI Assist. Based on extensive beta testing and customer insights, several key improvements have been integrated into the latest version of the platform.'),
(161, '2024-06-26', 'EduGamiX', 'New Educational Game Launched', 'EduGamiX releases an interactive math learning game.'),
(162, '2024-06-29', 'SecureNet', 'New Security Features', 'Enhanced encryption and safer browsing introduced in SecureNet.'),
(163, '2024-07-02', 'SecureNet', 'New Security Features', 'Enhanced encryption and safer browsing introduced in SecureNet.'),
(164, '2024-07-05', 'SecureNet', 'Parental Control App Update', 'SecureNet introduced new content filtering options.'),
(165, '2024-07-08', 'SecureNet', 'Collaboration with Schools', 'SecureNet partners with schools to improve digital safety awareness.'),
(166, '2024-07-11', 'SecureNet', 'Mobile App Release', 'SecureNet parental control app is now available on iOS and Android.'),
(167, '2024-07-14', 'SecureNet', 'Usage Statistics Report', 'Over 1 million families now use SecureNet for child protection.'),
(168, '2024-07-17', 'SecureNet', 'Collaboration with Schools', 'SecureNet partners with schools to improve digital safety awareness.'),
(169, '2024-07-20', 'HealthTrack', 'Sleep Monitoring Enhancements', 'New AI-based sleep monitoring available in HealthTrack.'),
(170, '2024-07-23', 'EduGamiX', 'User Engagement Statistics', 'EduGamiX reports a 40% increase in active users.'),
(171, '2024-07-26', 'EduGamiX', 'Expansion to Online Platforms', 'New browser-based educational games introduced by EduGamiX.'),
(172, '2024-07-29', 'SecureNet', 'Collaboration with Schools', 'SecureNet partners with schools to improve digital safety awareness.'),
(173, '2024-08-01', 'SecureNet', 'New Security Features', 'Enhanced encryption and safer browsing introduced in SecureNet.'),
(174, '2024-08-04', 'EduGamiX', 'Collaboration with Universities', 'EduGamiX collaborates with universities to enhance digital learning.'),
(175, '2024-08-07', 'EduGamiX', 'Expansion to Online Platforms', 'New browser-based educational games introduced by EduGamiX.'),
(176, '2024-08-10', 'AI Assist', 'New AI Model Released', 'The AI Assist team has launched a groundbreaking artificial intelligence model designed to improve predictive accuracy and efficiency. This new model is based on advanced deep learning techniques, enabling businesses to gain better insights from their data.'),
(177, '2024-08-13', 'EduGamiX', 'Expansion to Online Platforms', 'New browser-based educational games introduced by EduGamiX.'),
(178, '2024-08-16', 'EduGamiX', 'Expansion to Online Platforms', 'New browser-based educational games introduced by EduGamiX.'),
(179, '2024-08-19', 'AI Assist', 'Expansion to New Markets', 'AI Assist is expanding its reach to new international markets, including Europe and Asia. This move aligns with the company\'s vision to make artificial intelligence accessible to businesses worldwide.'),
(180, '2024-08-22', 'EduGamiX', 'Collaboration with Universities', 'EduGamiX collaborates with universities to enhance digital learning.'),
(181, '2024-08-25', 'SecureNet', 'New Security Features', 'Enhanced encryption and safer browsing introduced in SecureNet.'),
(182, '2024-08-28', 'HealthTrack', 'New Heart Monitoring Feature', 'HealthTrack introduces real-time heart monitoring for users.'),
(183, '2024-08-31', 'HealthTrack', 'New Heart Monitoring Feature', 'HealthTrack introduces real-time heart monitoring for users.'),
(184, '2024-09-03', 'HealthTrack', 'Diabetes Management Feature', 'New feature helps users track and manage diabetes efficiently.'),
(185, '2024-09-06', 'HealthTrack', 'New Heart Monitoring Feature', 'HealthTrack introduces real-time heart monitoring for users.'),
(186, '2024-09-09', 'SecureNet', 'Usage Statistics Report', 'Over 1 million families now use SecureNet for child protection.'),
(187, '2024-09-12', 'AI Assist', 'Security Patch Update', 'AI Assist has released a crucial security update to address potential vulnerabilities in its AI systems. The latest patch includes fixes for previously identified risks and improvements to data encryption techniques.'),
(188, '2024-09-15', 'HealthTrack', 'Diabetes Management Feature', 'New feature helps users track and manage diabetes efficiently.'),
(189, '2024-09-18', 'HealthTrack', 'Sleep Monitoring Enhancements', 'New AI-based sleep monitoring available in HealthTrack.'),
(190, '2024-09-21', 'EduGamiX', 'Expansion to Online Platforms', 'New browser-based educational games introduced by EduGamiX.'),
(191, '2024-09-24', 'AI Assist', 'Security Patch Update', 'AI Assist has released a crucial security update to address potential vulnerabilities in its AI systems. The latest patch includes fixes for previously identified risks and improvements to data encryption techniques.'),
(192, '2024-09-27', 'SecureNet', 'Mobile App Release', 'SecureNet parental control app is now available on iOS and Android.'),
(193, '2024-09-30', 'AI Assist', 'Expansion to New Markets', 'AI Assist is expanding its reach to new international markets, including Europe and Asia. This move aligns with the company\'s vision to make artificial intelligence accessible to businesses worldwide.'),
(194, '2024-10-03', 'HealthTrack', 'Partnership with Hospitals', 'HealthTrack partners with hospitals for better health insights.'),
(195, '2024-10-06', 'EduGamiX', 'Expansion to Online Platforms', 'New browser-based educational games introduced by EduGamiX.'),
(196, '2024-10-09', 'EduGamiX', 'Virtual Reality in Learning', 'EduGamiX integrates VR technology into educational games.'),
(197, '2024-10-12', 'EduGamiX', 'Collaboration with Universities', 'EduGamiX collaborates with universities to enhance digital learning.'),
(198, '2024-10-15', 'EduGamiX', 'Collaboration with Universities', 'EduGamiX collaborates with universities to enhance digital learning.'),
(199, '2024-10-18', 'AI Assist', 'Expansion to New Markets', 'AI Assist is expanding its reach to new international markets, including Europe and Asia. This move aligns with the company\'s vision to make artificial intelligence accessible to businesses worldwide.'),
(200, '2024-10-21', 'EduGamiX', 'Expansion to Online Platforms', 'New browser-based educational games introduced by EduGamiX.'),
(201, '2024-10-24', 'AI Assist', 'New AI Model Released', 'The AI Assist team has launched a groundbreaking artificial intelligence model designed to improve predictive accuracy and efficiency. This new model is based on advanced deep learning techniques, enabling businesses to gain better insights from their data.'),
(202, '2024-10-27', 'SecureNet', 'Usage Statistics Report', 'Over 1 million families now use SecureNet for child protection.'),
(203, '2024-10-30', 'EduGamiX', 'Expansion to Online Platforms', 'New browser-based educational games introduced by EduGamiX.'),
(204, '2024-11-02', 'SecureNet', 'Parental Control App Update', 'SecureNet introduced new content filtering options.'),
(205, '2024-11-05', 'EduGamiX', 'User Engagement Statistics', 'EduGamiX reports a 40% increase in active users.'),
(206, '2024-11-08', 'SecureNet', 'New Security Features', 'Enhanced encryption and safer browsing introduced in SecureNet.'),
(207, '2024-11-11', 'EduGamiX', 'Expansion to Online Platforms', 'New browser-based educational games introduced by EduGamiX.'),
(208, '2024-11-14', 'AI Assist', 'Expansion to New Markets', 'AI Assist is expanding its reach to new international markets, including Europe and Asia. This move aligns with the company\'s vision to make artificial intelligence accessible to businesses worldwide.'),
(209, '2024-11-17', 'SecureNet', 'New Security Features', 'Enhanced encryption and safer browsing introduced in SecureNet.'),
(210, '2024-11-20', 'HealthTrack', 'Sleep Monitoring Enhancements', 'New AI-based sleep monitoring available in HealthTrack.'),
(211, '2024-11-23', 'EduGamiX', 'New Educational Game Launched', 'EduGamiX releases an interactive math learning game.'),
(212, '2024-11-26', 'HealthTrack', 'Diabetes Management Feature', 'New feature helps users track and manage diabetes efficiently.'),
(213, '2024-11-29', 'EduGamiX', 'Virtual Reality in Learning', 'EduGamiX integrates VR technology into educational games.'),
(214, '2024-12-02', 'HealthTrack', 'Partnership with Hospitals', 'HealthTrack partners with hospitals for better health insights.'),
(215, '2024-12-05', 'SecureNet', 'Mobile App Release', 'SecureNet parental control app is now available on iOS and Android.'),
(216, '2024-12-08', 'EduGamiX', 'Collaboration with Universities', 'EduGamiX collaborates with universities to enhance digital learning.'),
(217, '2024-12-11', 'EduGamiX', 'Collaboration with Universities', 'EduGamiX collaborates with universities to enhance digital learning.'),
(218, '2024-12-14', 'EduGamiX', 'New Educational Game Launched', 'EduGamiX releases an interactive math learning game.'),
(219, '2024-12-17', 'SecureNet', 'Mobile App Release', 'SecureNet parental control app is now available on iOS and Android.'),
(220, '2024-12-20', 'AI Assist', 'Security Patch Update', 'AI Assist has released a crucial security update to address potential vulnerabilities in its AI systems. The latest patch includes fixes for previously identified risks and improvements to data encryption techniques.'),
(221, '2024-12-23', 'AI Assist', 'User Feedback Integration', 'Listening to user feedback is a priority for AI Assist. Based on extensive beta testing and customer insights, several key improvements have been integrated into the latest version of the platform.'),
(222, '2024-12-26', 'AI Assist', 'Security Patch Update', 'AI Assist has released a crucial security update to address potential vulnerabilities in its AI systems. The latest patch includes fixes for previously identified risks and improvements to data encryption techniques.'),
(223, '2024-12-29', 'EduGamiX', 'User Engagement Statistics', 'EduGamiX reports a 40% increase in active users.'),
(224, '2025-01-01', 'AI Assist', 'Partnership with TechCorp', 'AI Assist is excited to announce its strategic partnership with TechCorp, a leading technology firm specializing in enterprise solutions. This collaboration will allow both companies to leverage each other\'s expertise in developing cutting-edge AI applications.'),
(225, '2025-01-04', 'AI Assist', 'User Feedback Integration', 'Listening to user feedback is a priority for AI Assist. Based on extensive beta testing and customer insights, several key improvements have been integrated into the latest version of the platform.'),
(226, '2025-01-07', 'HealthTrack', 'Diabetes Management Feature', 'New feature helps users track and manage diabetes efficiently.'),
(227, '2025-01-10', 'EduGamiX', 'New Educational Game Launched', 'EduGamiX releases an interactive math learning game.'),
(228, '2025-01-13', 'SecureNet', 'Mobile App Release', 'SecureNet parental control app is now available on iOS and Android.'),
(229, '2025-01-16', 'EduGamiX', 'Virtual Reality in Learning', 'EduGamiX integrates VR technology into educational games.'),
(230, '2025-01-19', 'SecureNet', 'Mobile App Release', 'SecureNet parental control app is now available on iOS and Android.'),
(231, '2025-01-22', 'SecureNet', 'Usage Statistics Report', 'Over 1 million families now use SecureNet for child protection.'),
(232, '2025-01-25', 'SecureNet', 'Mobile App Release', 'SecureNet parental control app is now available on iOS and Android.'),
(233, '2025-01-28', 'EduGamiX', 'New Educational Game Launched', 'EduGamiX releases an interactive math learning game.'),
(234, '2025-01-31', 'HealthTrack', 'Sleep Monitoring Enhancements', 'New AI-based sleep monitoring available in HealthTrack.'),
(235, '2025-02-03', 'AI Assist', 'Security Patch Update', 'AI Assist has released a crucial security update to address potential vulnerabilities in its AI systems. The latest patch includes fixes for previously identified risks and improvements to data encryption techniques.'),
(236, '2025-02-06', 'EduGamiX', 'Expansion to Online Platforms', 'New browser-based educational games introduced by EduGamiX.'),
(237, '2025-02-09', 'SecureNet', 'Usage Statistics Report', 'Over 1 million families now use SecureNet for child protection.'),
(238, '2025-02-12', 'AI Assist', 'New AI Model Released', 'The AI Assist team has launched a groundbreaking artificial intelligence model designed to improve predictive accuracy and efficiency. This new model is based on advanced deep learning techniques, enabling businesses to gain better insights from their data.'),
(239, '2025-02-15', 'AI Assist', 'User Feedback Integration', 'Listening to user feedback is a priority for AI Assist. Based on extensive beta testing and customer insights, several key improvements have been integrated into the latest version of the platform.'),
(240, '2025-02-18', 'AI Assist', 'User Feedback Integration', 'Listening to user feedback is a priority for AI Assist. Based on extensive beta testing and customer insights, several key improvements have been integrated into the latest version of the platform.'),
(241, '2025-02-21', 'EduGamiX', 'New Educational Game Launched', 'EduGamiX releases an interactive math learning game.'),
(242, '2025-02-24', 'EduGamiX', 'Collaboration with Universities', 'EduGamiX collaborates with universities to enhance digital learning.'),
(243, '2025-02-27', 'EduGamiX', 'User Engagement Statistics', 'EduGamiX reports a 40% increase in active users.'),
(244, '2025-03-02', 'AI Assist', 'Expansion to New Markets', 'AI Assist is expanding its reach to new international markets, including Europe and Asia. This move aligns with the company\'s vision to make artificial intelligence accessible to businesses worldwide.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `hash` varchar(500) NOT NULL,
  `admin_flag` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `hash`, `admin_flag`) VALUES
(1, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'orsolya', 'a123456', 'dc483e80a7a0bd9ef71d8cf973673924', 1),
(3, 'bence', 'admin1', 'e00cf25ad42683b3df678c61f42c6bda', 1),
(4, 'geza', '123456789', '25f9e794323b453885f5181f1b624d0b', 0),
(5, 'Vivien', 'password1', '7c6a180b36896a0a8c02787eeafb0e4c', 1),
(6, 'Alex', 'welcome1', '201f00b5ca5d65a1c118e5e32431514c', 1),
(7, 'Sarah', 'batman', 'ec0e2603172c73a8b644bb9456c1ff6e', 1),
(8, 'Zoe', '1234567890', 'e807f1fcf82d132f9bb018ca6738a19f', 1),
(9, 'Liam', 'password1234', 'bdc87b9c894da5168059e00ebffb9077', 1),
(10, 'Mia', 'batman', 'ec0e2603172c73a8b644bb9456c1ff6e', 1),
(11, 'Daniel', 'qwerty12', '0e311e5b9704f28b4e8557e8fa3fbe7d', 1),
(12, 'Lily', 'test123', 'cc03e747a6afbbcbf8be7668acfebee5', 1),
(13, 'Soma', 'batman', 'ec0e2603172c73a8b644bb9456c1ff6e', 1),
(14, 'Laca', '654321', 'c33367701511b4f6020ec61ded352059', 1),
(15, 'hanna', 'qwerty123', '3fc0a7acf087f549ac2b266baf94b8b1', 0),
(16, 'judit', 'password0', '305e4f55ce823e111a46a9d500bcb86c', 0),
(17, 'tibor', 'mypassword123', '9c87baa223f464954940f859bcf2e233', 0),
(18, 'laszlo', 'qwerty12345', '85064efb60a9601805dcea56ec5402f7', 0),
(19, 'gabor', 'qwerty123', '3fc0a7acf087f549ac2b266baf94b8b1', 0),
(20, 'istvan', 'aa12345678', 'd4f2a60315eef2b600cf0240ac0c37ad', 0),
(21, 'zoltan', 'admin1', 'e00cf25ad42683b3df678c61f42c6bda', 0),
(22, 'ivett', 'asdasd', 'a8f5f167f44f4964e6c998dee827110c', 0),
(23, 'ivett', 'password0', '305e4f55ce823e111a46a9d500bcb86c', 0),
(24, 'tibor', 'passwords', '48cccca3bab2ad18832233ee8dff1b0b', 0),
(25, 'renata', '1234', '81dc9bdb52d04dc20036dbd8313ed055', 0),
(26, 'aniko', 'userpass', '63e780c3f321d13109c71bf81805476e', 0),
(27, 'eszter', 'administrator', '200ceb26807d6bf99fd6f4f0d1ca54d4', 0),
(28, 'mate', 'welcome123', '5858ea228cc2edf88721699b2c8638e5', 0),
(29, 'robert', 'password1', '7c6a180b36896a0a8c02787eeafb0e4c', 0),
(30, 'orsi', '123123123123', '101193d7181cc88340ae5b2b17bba8a1', 0),
(31, 'robert', '999999', '52c69e3a57331081823331c4e69d3f2e', 0),
(32, 'laszlo', 'admin123', '0192023a7bbd73250516f069df18b500', 0),
(33, 'dorka', '123123123123', '101193d7181cc88340ae5b2b17bba8a1', 0),
(34, 'kristof', 'aaa111', 'eabd8ce9404507aa8c22714d3f5eada9', 0),
(35, 'orsi', '12345678', '25d55ad283aa400af464c76d713c07ad', 0),
(36, 'imre', '12345', '827ccb0eea8a706c4c34a16891f84e7b', 0),
(37, 'hanna', 'password321', 'db6ae64dfa9e78039db6df5b8edbc38c', 0),
(38, 'eva', 'userpass', '63e780c3f321d13109c71bf81805476e', 0),
(39, 'zsofia', 'abc1234', 'a141c47927929bc2d1fb6d336a256df4', 0),
(40, 'petra', '123321', 'c8837b23ff8aaa8a2dde915473ce0991', 0),
(41, 'norbert', 'aa12345678', 'd4f2a60315eef2b600cf0240ac0c37ad', 0),
(42, 'julia', 'soccer', 'da443a0ad979d5530df38ca1a74e4f80', 0),
(43, 'flora', '12345678', '25d55ad283aa400af464c76d713c07ad', 0),
(44, 'kata', '123321', 'c8837b23ff8aaa8a2dde915473ce0991', 0),
(45, 'adam', '123qwe', '46f94c8de14fb36680850768ff1b7f2a', 0),
(46, 'eva', 'hockey', 'df0349ce110b69f03b4def8012ae4970', 0),
(47, 'eszter', 'sunshine', '0571749e2ac330a7455809c6b0e7af90', 0),
(48, 'gabor', '123456789', '25f9e794323b453885f5181f1b624d0b', 0),
(49, 'csaba', 'asdasd', 'a8f5f167f44f4964e6c998dee827110c', 0),
(50, 'nora', '123abc', 'a906449d5769fa7361d7ecc6aa3f6d28', 0),
(51, 'hanna', '654321', 'c33367701511b4f6020ec61ded352059', 0),
(52, 'denes', 'abc123', 'e99a18c428cb38d5f260853678922e03', 0),
(53, 'sara', 'monkey', 'd0763edaa9d9bd2a9516280e9044d885', 0),
(54, 'janos', 'qwert', 'a384b6463fc216a5f8ecb6670f86456a', 0),
(55, 'kristof', '121212', '93279e3308bdbbeed946fc965017f67a', 0),
(56, 'dorka', 'welcome123', '5858ea228cc2edf88721699b2c8638e5', 0),
(57, 'norbert', 'guest123', 'fcf41657f02f88137a1bcf068a32c0a3', 0),
(58, 'marton', 'asdfgh', 'a152e841783914146e4bcd4f39100686', 0),
(59, 'balazs', 'password1', '7c6a180b36896a0a8c02787eeafb0e4c', 0),
(60, 'gergo', 'pass1234', 'b4af804009cb036a4ccdc33431ef9ac9', 0),
(61, 'levente', 'aa12345678', 'd4f2a60315eef2b600cf0240ac0c37ad', 0),
(62, 'balazs', 'welcome!', '84927adf011b0a2d01120f5ddf580c9d', 0),
(63, 'petra', '654321', 'c33367701511b4f6020ec61ded352059', 0),
(64, 'orsolya', '666666', 'f379eaf3c831b04de153469d1bec345e', 0),
(65, 'julia', '1q2w3e4r', '5416d7cd6ef195a0f7622a9c56b55e84', 0),
(66, 'csaba', 'qwerty12', '0e311e5b9704f28b4e8557e8fa3fbe7d', 0),
(67, 'judit', 'football', '37b4e2d82900d5e94b8da524fbeb33c0', 0),
(68, 'ferenc', '121212', '93279e3308bdbbeed946fc965017f67a', 0),
(69, 'dorka', 'abc12345', 'd6b0ab7f1c8ab8f514db9a6d85de160a', 0),
(70, 'mate', '987654321', '6ebe76c9fb411be97b3b0d48b791a7c9', 0),
(71, 'denes', 'zaq12wsx', 'e6a52c828d56b46129fbf85c4cd164b3', 0),
(72, 'andras', 'pass123', '32250170a0dca92d53ec9624f336ca24', 0),
(73, 'viktor', '123123123123', '101193d7181cc88340ae5b2b17bba8a1', 0),
(74, 'noemi', 'password123!', 'b7e283a09511d95d6eac86e39e7942c0', 0),
(75, 'david', '1234', '81dc9bdb52d04dc20036dbd8313ed055', 0),
(76, 'viktor', '12345', '827ccb0eea8a706c4c34a16891f84e7b', 0),
(77, 'sara', '1234567', 'fcea920f7412b5da7be0cf42b8c93759', 0),
(78, 'barna', 'qwerty12345', '85064efb60a9601805dcea56ec5402f7', 0),
(79, 'maria', 'password1234', 'bdc87b9c894da5168059e00ebffb9077', 0),
(80, 'nora', 'password1234', 'bdc87b9c894da5168059e00ebffb9077', 0),
(81, 'klara', 'password', '5f4dcc3b5aa765d61d8327deb882cf99', 0),
(82, 'csaba', 'pass1234', 'b4af804009cb036a4ccdc33431ef9ac9', 0),
(83, 'nora', '123abc', 'a906449d5769fa7361d7ecc6aa3f6d28', 0),
(84, 'noemi', '123123', '4297f44b13955235245b2497399d7a93', 0),
(85, 'tibor', 'qwerty1', '6dbd0fe19c9a301c4708287780df41a2', 0),
(86, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(87, 'andras', 'hockey', 'df0349ce110b69f03b4def8012ae4970', 0),
(88, 'viktor', 'qwerty12345', '85064efb60a9601805dcea56ec5402f7', 0),
(89, 'maria', 'welcome123', '5858ea228cc2edf88721699b2c8638e5', 0),
(90, 'eszter', 'abc123', 'e99a18c428cb38d5f260853678922e03', 0),
(91, 'hajnalka', 'qwerty1', '6dbd0fe19c9a301c4708287780df41a2', 0),
(92, 'oliver', 'testtest', '05a671c66aefea124cc08b76ea6d30bb', 0),
(93, 'flora', 'zxcvbnm', '02c75fb22c75b23dc963c7eb91a062cc', 0),
(94, 'peter', '654321', 'c33367701511b4f6020ec61ded352059', 0),
(95, 'denes', 'qwert1234', 'ec4e2d27630b3859bda056931ae79fbf', 0),
(96, 'geza', 'asdfghjkl', 'c44a471bd78cc6c2fea32b9fe028d30a', 0),
(97, 'tamas', '123qwe', '46f94c8de14fb36680850768ff1b7f2a', 0),
(98, 'balazs', '9876543210', 'e388c1c5df4933fa01f6da9f92595589', 0),
(99, 'kata', 'testpassword', 'e16b2ab8d12314bf4efbd6203906ea6c', 0),
(100, 'peter', '1qaz2wsx', '1c63129ae9db9c60c3e8aa94d3e00495', 0),
(101, 'maria', 'mypassword', '34819d7beeabb9260a5c854bc85b3e44', 0),
(102, 'tamas', 'iloveyou', 'f25a2fc72690b780b2a14e140ef6a9e0', 0),
(103, 'david', '1q2w3e', '3fde6bb0541387e4ebdadf7c2ff31123', 0),
(104, 'karoly', 'sunshine', '0571749e2ac330a7455809c6b0e7af90', 0),
(105, 'mate', '1234', '81dc9bdb52d04dc20036dbd8313ed055', 0),
(106, 'istvan', 'welcome123', '5858ea228cc2edf88721699b2c8638e5', 0),
(107, 'andras', 'a123456', 'dc483e80a7a0bd9ef71d8cf973673924', 0),
(108, 'marton', '123qwe', '46f94c8de14fb36680850768ff1b7f2a', 0),
(109, 'judit', 'testtest', '05a671c66aefea124cc08b76ea6d30bb', 0),
(110, 'klara', '1234567', 'fcea920f7412b5da7be0cf42b8c93759', 0),
(111, 'eva', 'test123', 'cc03e747a6afbbcbf8be7668acfebee5', 0),
(112, 'gergo', '654321', 'c33367701511b4f6020ec61ded352059', 0),
(113, 'sara', '1234567890', 'e807f1fcf82d132f9bb018ca6738a19f', 0),
(114, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 0),
(115, 'zsofia', 'asdasd', 'a8f5f167f44f4964e6c998dee827110c', 0),
(116, 'renata', '999999', '52c69e3a57331081823331c4e69d3f2e', 0),
(117, 'marton', '1q2w3e', '3fde6bb0541387e4ebdadf7c2ff31123', 0),
(118, 'zsofia', 'qwerty', 'd8578edf8458ce06fbc5bb76a58c5ca4', 0),
(119, 'bence', 'admin1', 'e00cf25ad42683b3df678c61f42c6bda', 1),
(120, 'kristof', 'admin12345', '7488e331b8b64e5794da3fa4eb10ad5d', 0),
(121, 'istvan', '987654321', '6ebe76c9fb411be97b3b0d48b791a7c9', 0),
(122, 'imre', 'qwerty', 'd8578edf8458ce06fbc5bb76a58c5ca4', 0),
(123, 'janos', 'superman', '84d961568a65073a3bcf0eb216b2a576', 0),
(124, 'orsolya', 'password1', '7c6a180b36896a0a8c02787eeafb0e4c', 0),
(125, 'zoltan', 'qwerty12', '0e311e5b9704f28b4e8557e8fa3fbe7d', 0),
(126, 'luca', 'qwertyuiop', '6eea9b7ef19179a06954edd0f6c05ceb', 0),
(127, 'szabolcs', 'hacked', '05a671c66aefea124cc08b76ea6d30bb', 0),
(128, 'csilla', 'password123!', 'b7e283a09511d95d6eac86e39e7942c0', 0),
(129, 'ferenc', 'aaa111', 'eabd8ce9404507aa8c22714d3f5eada9', 0),
(130, 'luca', 'passw0rd', 'bed128365216c019988915ed3add75fb', 0),
(131, 'emil', 'football', '37b4e2d82900d5e94b8da524fbeb33c0', 0),
(132, 'szabolcs', 'hacked', 'a8f5f167f44f4964e6c998dee827110c', 0),
(133, 'szabolcs', 'hacked', '0e311e5b9704f28b4e8557e8fa3fbe7d', 0),
(134, 'levente', 'testtest', '05a671c66aefea124cc08b76ea6d30bb', 0),
(135, 'levente', '9876543210', 'e388c1c5df4933fa01f6da9f92595589', 0),
(136, 'hajnalka', '123qwe', '46f94c8de14fb36680850768ff1b7f2a', 0),
(137, 'klara', 'a123456', 'dc483e80a7a0bd9ef71d8cf973673924', 0),
(138, 'bence', '987654', '6c44e5cd17f0019c64b042e4a745412a', 0),
(139, 'karoly', '123456789a', '83422503bcfc01d303030e8a7cc80efc', 0),
(140, 'petra', 'soccer', 'da443a0ad979d5530df38ca1a74e4f80', 0),
(141, 'robert', 'sunshine', '0571749e2ac330a7455809c6b0e7af90', 0),
(142, 'hajnalka', 'soccer', 'da443a0ad979d5530df38ca1a74e4f80', 0),
(143, 'oliver', '1234567890', 'e807f1fcf82d132f9bb018ca6738a19f', 0),
(144, 'norbert', 'admin1', 'e00cf25ad42683b3df678c61f42c6bda', 0),
(145, 'luca', 'mypassword', '34819d7beeabb9260a5c854bc85b3e44', 0),
(146, 'gergo', 'asdfghjkl', 'c44a471bd78cc6c2fea32b9fe028d30a', 0),
(147, 'csilla', 'soccer', 'da443a0ad979d5530df38ca1a74e4f80', 0),
(148, 'aniko', '9876543210', 'e388c1c5df4933fa01f6da9f92595589', 0),
(149, 'tamas', 'user123', '6ad14ba9986e3615423dfca256d04e3f', 0),
(150, 'david', 'password123', '482c811da5d5b4bc6d497ffa98491e38', 0),
(151, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(152, 'Szabolcs', 'admin', '0e311e5b9704f28b4e8557e8fa3fbe7d', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cts_about`
--
ALTER TABLE `cts_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cts_contacts`
--
ALTER TABLE `cts_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cts_developers`
--
ALTER TABLE `cts_developers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cts_homepage`
--
ALTER TABLE `cts_homepage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cts_services`
--
ALTER TABLE `cts_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cts_services_details`
--
ALTER TABLE `cts_services_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cts_works`
--
ALTER TABLE `cts_works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cts_about`
--
ALTER TABLE `cts_about`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cts_contacts`
--
ALTER TABLE `cts_contacts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cts_developers`
--
ALTER TABLE `cts_developers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cts_homepage`
--
ALTER TABLE `cts_homepage`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cts_services`
--
ALTER TABLE `cts_services`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cts_services_details`
--
ALTER TABLE `cts_services_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cts_works`
--
ALTER TABLE `cts_works`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
