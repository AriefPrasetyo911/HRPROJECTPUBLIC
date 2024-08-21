-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 07, 2024 at 07:24 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hr_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee_data`
--

CREATE TABLE `employee_data` (
  `id` int NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL,
  `appraisal_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_completion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supervisor_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_data`
--

INSERT INTO `employee_data` (`id`, `employee_id`, `employee_full_name`, `gender`, `job_title`, `department`, `email`, `phone_number`, `join_date`, `nationality`, `created_at`, `updated_at`, `appraisal_status`, `date_completion`, `supervisor_name`) VALUES
(1, 'KG-06', 'Arief Budi Prasetyo', 'Male', 'Full Stack Developer', 'Programming', 'arief@kaigangames.com', '+6282213247456', '2017-07-02T17:00:00.000Z', 'Indonesia', '2024-07-30 08:38:56.552', '2024-08-07 01:47:32.146', 'N/A', NULL, 'Rex Naythian'),
(2, 'KG-027', 'Rumaisha Zafira Azzahra', 'Female', 'Graphic Designer', 'Designer', 'rumaisha@kaigangames.com', '+621234567890', '2024-07-31T17:00:00.000Z', 'Indonesia', '2024-08-06 03:43:27.572', '2024-08-06 04:18:32.908', NULL, NULL, 'Shah Azmi');

-- --------------------------------------------------------

--
-- Table structure for table `performance_appraisal_category`
--

CREATE TABLE `performance_appraisal_category` (
  `id` int NOT NULL,
  `question_category` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `performance_appraisal_category`
--

INSERT INTO `performance_appraisal_category` (`id`, `question_category`, `created_at`, `updated_at`) VALUES
(1, 'Job Knowledge', '2024-07-17 04:02:20.934', '2024-07-17 04:02:20.934'),
(2, 'Communication Skill', '2024-07-17 04:07:15.342', '2024-07-17 04:07:15.342'),
(3, 'Quality and Quantity of Work', '2024-07-17 04:08:30.910', '2024-07-17 04:08:30.910'),
(4, 'Initiative', '2024-07-17 04:09:32.888', '2024-07-17 04:09:32.888'),
(5, 'Judgement', '2024-07-17 04:09:48.978', '2024-07-17 04:09:48.978'),
(6, 'Work Methods', '2024-07-17 04:10:05.941', '2024-07-17 04:10:05.941'),
(7, 'Teamwork and Cooperation', '2024-07-17 04:10:22.197', '2024-07-17 04:10:22.197'),
(8, 'Systems and Procedures', '2024-07-17 04:10:44.870', '2024-07-17 04:10:44.870'),
(9, 'Personal Qualification & Leadership', '2024-07-17 04:11:00.794', '2024-07-17 04:11:00.794');

-- --------------------------------------------------------

--
-- Table structure for table `performance_appraisal_examples`
--

CREATE TABLE `performance_appraisal_examples` (
  `id` int NOT NULL,
  `question_example` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL,
  `question_category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `performance_appraisal_examples`
--

INSERT INTO `performance_appraisal_examples` (`id`, `question_example`, `created_at`, `updated_at`, `question_category_id`) VALUES
(1, 'Employee demonstrate full working knowledge and skill sets.', '2024-07-29 04:08:11.733', '2024-07-29 04:08:11.733', 1),
(2, 'Employee displays problem-solving skills.', '2024-07-29 04:08:25.056', '2024-07-29 04:08:25.056', 1),
(3, 'Possessed solid, oral, and written communication skills', '2024-07-29 04:09:04.473', '2024-07-29 04:09:04.473', 2),
(4, 'Effectively interacts with co-worker and management', '2024-07-29 04:09:18.831', '2024-07-29 04:09:18.831', 2),
(5, 'Employee listens actively and get back to the team if instuction is not clear.', '2024-07-29 04:09:35.771', '2024-07-29 04:09:35.771', 2),
(6, 'Employee completes assignments in a thorough and accurate manner.', '2024-07-29 04:10:42.446', '2024-07-29 04:10:42.446', 3),
(7, 'Employee consistently meet\'s the deadlines.', '2024-07-29 04:11:22.883', '2024-07-29 04:11:22.883', 3),
(8, 'Employee constantly seek ways to streamline and improve process.', '2024-07-29 04:11:36.003', '2024-07-29 04:11:36.003', 3),
(9, 'Anticipates needs and takes on additional tasks', '2024-07-29 04:11:50.300', '2024-07-29 04:11:50.300', 4),
(10, 'Seek out new and bettter ways of doing job.', '2024-07-29 04:12:04.321', '2024-07-29 04:12:04.321', 4),
(11, 'Identifies problems and seeks for solutions.', '2024-07-29 04:12:20.491', '2024-07-29 04:12:20.491', 4),
(12, 'Requires minimal supervision.', '2024-07-29 04:13:01.093', '2024-07-29 04:13:01.093', 4),
(13, 'Makes appropriate decisions when required.', '2024-07-29 04:13:22.981', '2024-07-29 04:13:22.981', 5),
(14, 'Is able to prioritize.', '2024-07-29 04:13:37.093', '2024-07-29 04:13:37.093', 5),
(15, 'Accepts and seeks constructive criticism.', '2024-07-29 04:13:48.452', '2024-07-29 04:13:48.452', 5),
(16, 'Plans and organizes time effectively in accordance with priorities and workloads.', '2024-07-29 04:14:07.362', '2024-07-29 04:14:07.362', 6),
(17, 'Follow through on all details of work assigned.', '2024-07-29 04:14:17.748', '2024-07-29 04:14:17.748', 6),
(18, 'Employee anticipates interruptions and handles schedule changes with composure.', '2024-07-29 04:14:48.758', '2024-07-29 04:14:48.758', 6),
(19, 'Employee readily shares information with', '2024-07-29 04:18:25.006', '2024-07-29 04:18:25.006', 7),
(20, 'Employee works well as a member of a team.', '2024-07-29 04:18:40.968', '2024-07-29 04:18:40.968', 7),
(21, 'Flexible in accepting new or additional tasks.', '2024-07-29 04:19:18.128', '2024-07-29 04:19:18.128', 7),
(22, 'Employee demonstrates a personal sense of', '2024-07-29 04:19:53.600', '2024-07-29 04:19:53.600', 7),
(23, 'Executes professional judgement of attire at', '2024-07-29 04:24:00.463', '2024-07-29 04:24:00.463', 8),
(24, 'Follows company\'s policies and procedures.', '2024-07-29 04:24:14.691', '2024-07-29 04:24:14.691', 8),
(25, 'Employee accepts new challenges and learns.', '2024-07-29 04:24:30.333', '2024-07-29 04:24:30.333', 8),
(26, 'Employee completes professional', '2024-07-29 04:24:48.287', '2024-07-29 04:24:48.287', 9),
(27, 'Employee friendly and easy to work with', '2024-07-29 04:25:05.190', '2024-07-29 04:25:05.190', 9),
(28, 'Employee consistently demonstrate an ability', '2024-07-29 04:25:16.987', '2024-07-29 04:25:16.987', 9),
(29, 'Has the ability to direct the others totoward a', '2024-07-29 04:25:34.508', '2024-07-29 04:25:34.508', 9);

-- --------------------------------------------------------

--
-- Table structure for table `performance_appraisal_question_answer`
--

CREATE TABLE `performance_appraisal_question_answer` (
  `id` int NOT NULL,
  `question_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `performance_appraisal_question_comment`
--

CREATE TABLE `performance_appraisal_question_comment` (
  `id` int NOT NULL,
  `question_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `performance_appraisal_result`
--

CREATE TABLE `performance_appraisal_result` (
  `id` int NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_category` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_example` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL,
  `year` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `performance_appraisal_year`
--

CREATE TABLE `performance_appraisal_year` (
  `id` int NOT NULL,
  `year` int NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL,
  `evaluation_period` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `performance_appraisal_year`
--

INSERT INTO `performance_appraisal_year` (`id`, `year`, `created_at`, `updated_at`, `evaluation_period`) VALUES
(3, 2024, '2024-08-07 03:08:31.613', '2024-08-07 03:08:31.613', 'November 2023 - November 2024'),
(4, 2025, '2024-08-07 03:09:26.376', '2024-08-07 03:09:26.376', 'November 2024 - November 2025');

-- --------------------------------------------------------

--
-- Table structure for table `supervisor`
--

CREATE TABLE `supervisor` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supervisor`
--

INSERT INTO `supervisor` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Shah Azmi', '2024-08-06 03:44:58.953', '2024-08-06 03:44:58.953'),
(2, 'Rex Naythian', '2024-08-06 03:45:03.389', '2024-08-06 03:45:03.389'),
(3, 'Hong Seng', '2024-08-06 03:45:08.000', '2024-08-06 03:45:08.000'),
(4, 'Innamul Hassan', '2024-08-06 03:45:12.065', '2024-08-06 03:45:12.065');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'ARIEF', 'arief.bepe@gmail.com', '$2b$12$3fG1O84OpLnxEO6xZQhM7uZOZi.oSlO0.tP9lfLjselpuEb6tYnqW', '2024-07-17 02:41:28.425', '2024-07-17 02:41:28.425');

-- --------------------------------------------------------

--
-- Table structure for table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('01aea169-8bff-47b8-a46f-aab634781e21', 'cce735c0f6254784b93cfb5fc4285936564dabb1d750139b3996c93f0610ba81', '2024-08-06 06:23:01.398', '20240731023624_update_emplyee_data_table', NULL, NULL, '2024-08-06 06:23:01.339', 1),
('0ec71a4d-6b74-4e8f-b184-1827e2ae51a3', 'e935c289166d9682f927aa711ff03f7924591247c8aa70fd4cf8c7b393ad6585', '2024-08-06 06:23:01.175', '20240726020637_update_table_appraisal_examples', NULL, NULL, '2024-08-06 06:23:01.128', 1),
('0f0424c9-bd7b-4adf-a463-10764071fdad', 'a106e4170df8cfb04036092f9817f072f9133c91935bda652e78629b595095f9', '2024-08-06 06:23:01.650', '20240805065733_update_employee_table', NULL, NULL, '2024-08-06 06:23:01.588', 1),
('4767d70a-97f9-480a-aac9-8881188765f1', '331ea31e9c53024381077ca8fc0c2a8bcd6ffcc582f5967e80c49a4f00e4ff65', '2024-08-06 06:23:01.114', '20240726014545_update_relational_table', NULL, NULL, '2024-08-06 06:23:00.913', 1),
('47b43909-c9c8-483c-bafb-5984b3cb2d0c', 'fb6f3aea237ee2fca49f59c61dff5e858d84618af3116a26087e5a759042221c', '2024-08-06 06:23:00.545', '20240715093609_create_performance_appraisal_related_table', NULL, NULL, '2024-08-06 06:23:00.449', 1),
('5dcbd5e2-3916-4712-b800-857f1c3f9ce7', 'bf67e4b80b04acf581c16997d34ded2cfb106287c1907153d7f4f7f9f090173f', '2024-08-06 06:23:00.415', '20240715044752_update_users_employee_data_table', NULL, NULL, '2024-08-06 06:23:00.355', 1),
('69ea3361-e5a1-4773-a7ca-7dd932bccb73', 'c388472ed42ada8826b8d47ad26e25007af264eaf2f1eba42c370f58c58226cb', '2024-08-06 06:23:01.229', '20240726025023_update_database', NULL, NULL, '2024-08-06 06:23:01.181', 1),
('755a3872-7431-4640-ac7a-a0ba64298085', '959401b6e82ca072bcebd05afe9b2abd4b8177d9d2578f4acd8e370f386aec4d', '2024-08-06 06:23:00.847', '20240725033155_update_table_relationship', NULL, NULL, '2024-08-06 06:23:00.789', 1),
('895a76ca-8cf8-41a0-bf70-9bb2b494aa18', 'dd9027e48e46bc338ebe8cdb8165cd8be4782f7d2f638c8549b6dadcab25d7e1', '2024-08-06 06:23:00.876', '20240725071610_remove_table_relationship', NULL, NULL, '2024-08-06 06:23:00.852', 1),
('97d2f00e-0bd2-4348-a81d-a08285b6ae4c', '7f7bb95ea45883af96e61a8d3544f22f027be6cb5950db7b1981dd35e71fab33', '2024-08-06 06:23:00.610', '20240716042900_create_performance_appraisal_result_table', NULL, NULL, '2024-08-06 06:23:00.551', 1),
('a8604901-da15-4eb4-b2a5-7a1fb83c0874', '4eafd454e034b5d83261753f12bae538a4471d02a9c374f32bfecf66d6393ca1', '2024-08-06 06:23:00.906', '20240726005518_update_table', NULL, NULL, '2024-08-06 06:23:00.882', 1),
('acb2a1c7-d26a-4a12-a5ea-eae3f990466a', '7bbc673a9e01a2f044a638156073f6b7b32c968d89c601314356c65802ee8345', '2024-08-06 06:23:01.327', '20240731011144_create_table_performance_year', NULL, NULL, '2024-08-06 06:23:01.234', 1),
('b1ebd8af-227c-4e8b-ba33-5089409cc88f', '96b421e77b26c65d09cd83b204acacef714400de0684d539bcd7116b8ec37c8c', '2024-08-06 06:23:00.783', '20240724072055_update_relational_table', NULL, NULL, '2024-08-06 06:23:00.716', 1),
('bd6f4841-67c1-45b8-87af-df85a14cffdc', '07c0166e3c25b383f63799b7f993db7ecc47533c91524341a1bee212e8e915c5', '2024-08-06 06:23:01.454', '20240731074047_update_employee_data_table', NULL, NULL, '2024-08-06 06:23:01.413', 1),
('c5862b43-5933-422e-a403-157c46c91722', '390628fafdb8d9ff71890a20262c0c592dee6d2a2138a87dc8b47514c15f5e00', '2024-08-06 06:23:22.852', '20240806062322_update_performance_appraisal_year_table', NULL, NULL, '2024-08-06 06:23:22.832', 1),
('e1b940f1-12e9-455a-b4b4-6c2869416de5', 'eb4d9432f9b737d2a34dc9e3168427cb048693992f126b33608b53063721b89a', '2024-08-06 06:23:00.443', '20240715064432_update_employee_table', NULL, NULL, '2024-08-06 06:23:00.421', 1),
('ee23c565-ae26-4bf8-8896-6b9e90d048fb', '18400911b32e5fa885cb29fb046da6d8a528784661eb1d71b35dfcdfb6424dc1', '2024-08-06 06:23:01.806', '20240806033943_update_employee_table', NULL, NULL, '2024-08-06 06:23:01.695', 1),
('f09a47d1-9037-4011-96b7-e7eeb8e416c5', 'bf67c0f50cd83f7a4bc4fce3c006c06cca9c21cb7a28f24d44749aabea7b05f3', '2024-08-06 06:23:01.579', '20240801065837_create_supervisor_table', NULL, NULL, '2024-08-06 06:23:01.460', 1),
('f6f3dd33-28ce-473b-a431-b74decc79ee7', '572fa510c98ea71fcce925000a739bbf81835baa014d49b1596597d1cfc56401', '2024-08-06 06:23:00.710', '20240719142824_update_table_relation', NULL, NULL, '2024-08-06 06:23:00.616', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee_data`
--
ALTER TABLE `employee_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Indexes for table `performance_appraisal_category`
--
ALTER TABLE `performance_appraisal_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `performance_appraisal_examples`
--
ALTER TABLE `performance_appraisal_examples`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Performance_appraisal_examples_question_category_id_fkey` (`question_category_id`);

--
-- Indexes for table `performance_appraisal_question_answer`
--
ALTER TABLE `performance_appraisal_question_answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `performance_appraisal_question_comment`
--
ALTER TABLE `performance_appraisal_question_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `performance_appraisal_result`
--
ALTER TABLE `performance_appraisal_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `performance_appraisal_year`
--
ALTER TABLE `performance_appraisal_year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Indexes for table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee_data`
--
ALTER TABLE `employee_data`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `performance_appraisal_category`
--
ALTER TABLE `performance_appraisal_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `performance_appraisal_examples`
--
ALTER TABLE `performance_appraisal_examples`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `performance_appraisal_question_answer`
--
ALTER TABLE `performance_appraisal_question_answer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `performance_appraisal_question_comment`
--
ALTER TABLE `performance_appraisal_question_comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `performance_appraisal_result`
--
ALTER TABLE `performance_appraisal_result`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `performance_appraisal_year`
--
ALTER TABLE `performance_appraisal_year`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `supervisor`
--
ALTER TABLE `supervisor`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `performance_appraisal_examples`
--
ALTER TABLE `performance_appraisal_examples`
  ADD CONSTRAINT `Performance_appraisal_examples_question_category_id_fkey` FOREIGN KEY (`question_category_id`) REFERENCES `performance_appraisal_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
