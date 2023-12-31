-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 23, 2023 at 08:49 PM
-- Server version: 8.0.34
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int NOT NULL,
  `doctor_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` enum('Pending','Confirmed','Cancelled') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `doctor_id`, `name`, `email`, `phone`, `date`, `status`) VALUES
(3, 3, 'Alice Johnson', 'alice@example.com', '555-555-5555', '2023-09-18', 'Cancelled'),
(6, 3, 'Charlie Davis', 'charlie@example.com', '444-999-1111', '2023-09-21', 'Confirmed'),
(9, 3, 'Hannah Taylor', 'hannah@example.com', '888-555-2222', '2023-09-24', 'Confirmed'),
(12, 3, 'Sophia Johnson', 'sophia@example.com', '222-666-9999', '2023-09-27', 'Pending'),
(15, 3, 'Noah Turner', 'noah@example.com', '444-222-5555', '2023-09-30', 'Confirmed'),
(18, 3, 'Oliver Clark', 'oliver@example.com', '333-999-4444', '2023-10-03', 'Pending'),
(22, 3, 'mohammed', 'mmoustafa456@yahoo.com', 'mohammed', '2023-09-17', NULL),
(23, 3, 'mohammed', 'mohammed@yahoo.com', '01099898915', '2023-09-17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `subject`, `message`) VALUES
(1, 'John Doe', 'johndoe@example.com', '123-456-7890', 'Clinic Question', 'Hello, I have a question about your clinic. Can you provide me with more information about your services and office hours?');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `major_id` int NOT NULL,
  `email` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `bio` varchar(500) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `major_id`, `email`, `image`, `bio`, `password`) VALUES
(1, 'Dr. John Doe', 1, 'john.doe@example.com', '../Assets/img/major.jpg', 'Experienced surgeon with a focus on orthopedics.', 'password1'),
(3, 'Dr. Emily Johnson', 2, 'emily.johnson@example.com', '../Assets/img/major.jpg', 'General practitioner with a passion for preventive care.', 'qqweqwe'),
(4, 'Dr. Michael Anderson', 2, 'michael.andersogn3@example.com', '../Assets/img/major.jpg', 'Experienced cardiologist with expertise in heart health.', 'qqqqq2');

-- --------------------------------------------------------

--
-- Table structure for table `majors`
--

CREATE TABLE `majors` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `majors`
--

INSERT INTO `majors` (`id`, `title`, `image`) VALUES
(1, 'Medicine', '../Assets/img/major.jpg'),
(2, 'Surgery', '../Assets/img/major.jpg'),
(3, 'Internal Medicine', '../Assets/img/major.jpg'),
(4, 'Pediatrics', '../Assets/img/major.jpg'),
(5, 'Obstetrics and Gynecology', '../Assets/img/major.jpg'),
(6, 'Anesthesiology', '../Assets/img/major.jpg'),
(7, 'Radiology', '../Assets/img/major.jpg'),
(8, 'Orthopedic Surgery', '../Assets/img/major.jpg'),
(9, 'Dermatology', '../Assets/img/major.jpg'),
(11, 'Psychiatry', '../Assets/img/major.jpg'),
(12, 'Emergency Medicine', '../Assets/img/major.jpg'),
(13, 'Neurology', '../Assets/img/major.jpg'),
(14, 'Cardiology', '../Assets/img/major.jpg'),
(15, 'Oncology', '../Assets/img/major.jpg'),
(16, 'Pathology', '../Assets/img/major.jpg'),
(17, 'Nephrology', '../Assets/img/major.jpg'),
(18, 'Pulmonology', '../Assets/img/major.jpg'),
(19, 'Endocrinology', '../Assets/img/major.jpg'),
(20, 'Rheumatology', '../Assets/img/major.jpg'),
(21, 'Infectious Diseases', '../Assets/img/major.jpg'),
(22, 'Hematology', '../Assets/img/major.jpg'),
(23, 'Gastroenterology', '../Assets/img/major.jpg'),
(24, 'Urology', '../Assets/img/major.jpg'),
(25, 'Plastic Surgery', '../Assets/img/major.jpg'),
(26, 'Thoracic Surgery', '../Assets/img/major.jpg'),
(27, 'Vascular Surgery', '../Assets/img/major.jpg'),
(28, 'Allergy and Immunology', '../Assets/img/major.jpg'),
(29, 'Geriatrics', '../Assets/img/major.jpg'),
(30, 'Pain Medicine', '../Assets/img/major.jpg'),
(31, 'Nuclear Medicine', '../Assets/img/major.jpg'),
(32, 'Sports Medicine', '../Assets/img/major.jpg'),
(33, 'Forensic Medicine', '../Assets/img/major.jpg'),
(34, 'Interventional Radiology', '../Assets/img/major.jpg'),
(35, 'Medical Genetics', '../Assets/img/major.jpg'),
(36, 'Medical Oncology', '../Assets/img/major.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `role`) VALUES
(3, 'Dr. Emily Johnson', 'emily.johnson@example.com', '', '123', ''),
(4, 'Bob Brown', 'bob@example.com', '555-5432', 'mysecretpw', 'Admin'),
(15, '123', '123@111.com', '123', 'abo_khaled', NULL),
(16, '11', '11@1.com', '1', '1', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `major_id` (`major_id`);

--
-- Indexes for table `majors`
--
ALTER TABLE `majors`
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
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `majors`
--
ALTER TABLE `majors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`major_id`) REFERENCES `majors` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
