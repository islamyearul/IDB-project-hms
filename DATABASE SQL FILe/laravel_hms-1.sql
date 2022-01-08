-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2022 at 01:19 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_hms-1`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `app_id` bigint(20) UNSIGNED NOT NULL,
  `app_sl` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_p_id` bigint(20) UNSIGNED NOT NULL,
  `app_doc_id` bigint(20) UNSIGNED NOT NULL,
  `app_date` date NOT NULL,
  `app_status` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_message` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`app_id`, `app_sl`, `app_p_id`, `app_doc_id`, `app_date`, `app_status`, `app_message`, `created_at`, `updated_at`) VALUES
(1, 'APP0000001', 1, 2, '2022-01-14', 'Approved', 'fdgdgf', '2022-01-06 05:38:47', '2022-01-06 05:38:47'),
(2, 'APP0000002', 2, 3, '2022-01-18', 'Approved', 'gdfgfdg', '2022-01-06 05:39:08', '2022-01-06 05:39:08');

-- --------------------------------------------------------

--
-- Table structure for table `beds`
--

CREATE TABLE `beds` (
  `bed_id` bigint(20) UNSIGNED NOT NULL,
  `bed_name` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bed_category_id` bigint(20) UNSIGNED NOT NULL,
  `bed_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beds`
--

INSERT INTO `beds` (`bed_id`, `bed_name`, `bed_category_id`, `bed_status`, `created_at`, `updated_at`) VALUES
(1, 'Cycus', 1, 'Available', '2022-01-06 05:20:22', '2022-01-06 05:20:22'),
(2, 'Cycus', 1, 'Available', '2022-01-06 05:20:25', '2022-01-06 05:20:25'),
(3, 'Cycus', 1, 'Available', '2022-01-06 05:20:26', '2022-01-06 05:20:26'),
(4, 'Cycus', 1, 'Available', '2022-01-06 05:20:26', '2022-01-06 05:20:26'),
(5, 'Cycus', 1, 'Available', '2022-01-06 05:20:26', '2022-01-06 05:20:26'),
(6, 'Cycus', 1, 'Available', '2022-01-06 05:20:27', '2022-01-06 05:20:27'),
(7, 'Cycus', 1, 'Available', '2022-01-06 05:20:27', '2022-01-06 05:20:27'),
(8, 'Cycus', 1, 'Available', '2022-01-06 05:20:27', '2022-01-06 05:20:27'),
(9, 'Cycus', 1, 'Available', '2022-01-06 05:20:28', '2022-01-06 05:20:28'),
(10, 'Cycus', 2, 'Alloted', '2022-01-06 05:20:38', '2022-01-06 05:38:24'),
(11, 'Pinus', 1, 'Available', '2022-01-06 05:20:58', '2022-01-06 05:20:58'),
(12, 'Ginus', 4, 'Available', '2022-01-06 05:21:26', '2022-01-06 05:21:26');

-- --------------------------------------------------------

--
-- Table structure for table `bed_categories`
--

CREATE TABLE `bed_categories` (
  `bed_category_id` bigint(20) UNSIGNED NOT NULL,
  `bed_category_name` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bed_category_details` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bed_category_floor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bed_categories`
--

INSERT INTO `bed_categories` (`bed_category_id`, `bed_category_name`, `bed_category_details`, `bed_category_floor_id`, `created_at`, `updated_at`) VALUES
(1, 'simple', 'ssociated with laboratories, and radioactive material and x-ray hazards. In addition to the', 1, '2022-01-06 05:19:28', '2022-01-06 05:19:28'),
(2, 'economy', 'ssociated with laboratories, and radioactive material and x-ray hazards. In addition to the', 2, '2022-01-06 05:19:38', '2022-01-06 05:19:38'),
(3, 'best', 'ssociated with laboratories, and radioactive material and x-ray hazards. In addition to the', 3, '2022-01-06 05:19:50', '2022-01-06 05:19:50'),
(4, 'VIP', 'ssociated with laboratories, and radioactive material and x-ray hazards. In addition to the', 4, '2022-01-06 05:20:03', '2022-01-06 05:20:03');

-- --------------------------------------------------------

--
-- Table structure for table `blood_banks`
--

CREATE TABLE `blood_banks` (
  `blood_bag_id` bigint(20) UNSIGNED NOT NULL,
  `blood_bag_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_bag_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `case_id` bigint(20) UNSIGNED NOT NULL,
  `case_p_id` bigint(20) UNSIGNED NOT NULL,
  `case_details` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `case_file` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `case_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `dept_id` bigint(20) UNSIGNED NOT NULL,
  `dept_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept_details` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dept_id`, `dept_name`, `dept_details`, `created_at`, `updated_at`) VALUES
(2, 'Breast Screening:', 'Screens women for breast cancer and is usually linked to the X-ray or radiology department.', '2022-01-06 05:01:15', '2022-01-06 05:01:15'),
(4, 'Cardiology', 'Provides medical care to patients who have problems with their heart or circulation.', '2022-01-06 05:02:14', '2022-01-06 05:02:14'),
(6, 'Haematology', 'These hospital services work with the labo', '2022-01-06 05:06:44', '2022-01-06 05:06:44'),
(7, 'Human Resources:', 'ate the delivery of a professional, efficient and customer focused service to patients.', '2022-01-06 05:07:01', '2022-01-06 05:07:01');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doc_id` bigint(20) UNSIGNED NOT NULL,
  `doc_name` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc_phone` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc_address` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc_email` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc_password` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc_profile` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc_img` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc_dept_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doc_id`, `doc_name`, `doc_phone`, `doc_address`, `doc_email`, `doc_password`, `doc_profile`, `doc_img`, `doc_dept_id`, `created_at`, `updated_at`) VALUES
(1, 'Md Yearul Islam', '01825862260', 'Mugda Bishwa Road, Mosjid Goli', 'islam@gmail.com', '$2y$10$3JKCyiiUJmPXadZKB7oT4Ob4djiNLxjtMlj6Tjki7FLrFiyglRXJu', 'Nill', 'images\\doctor_1641467374.jpg', 4, '2022-01-06 05:09:34', '2022-01-06 05:09:34'),
(2, 'Md Saiful Islam', '265265456', 'saiful@gmail.com', 'saifulislam@gmail.com', '$2y$10$gFpafj2wSLI98xkqUZ9glug8xc3vEBS0wqDEsa0awIM0SateQfb1a', 'nil', 'images\\doctor_1641467513.jpg', 2, '2022-01-06 05:11:53', '2022-01-06 05:11:53'),
(3, 'Muazzem Hossain', '4546445674584', 'muazzem@gmail.com', 'muazzem@gmail.com', '$2y$10$r8ZVaNcfKgV.H.9J2FRNj.Em4ae3EK/9GemJCeXsJkT4yAIa4MMUO', 'nill', 'images\\doctor_1641467611.jpg', 7, '2022-01-06 05:13:31', '2022-01-06 05:13:31');

-- --------------------------------------------------------

--
-- Table structure for table `donor_lists`
--

CREATE TABLE `donor_lists` (
  `donor_id` bigint(20) UNSIGNED NOT NULL,
  `donor_name` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `donor_blood` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `donor_age` int(11) NOT NULL,
  `donor_sex` tinyint(4) NOT NULL,
  `donor_last_date` date NOT NULL,
  `donor_phone` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `donor_email` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donor_lists`
--

INSERT INTO `donor_lists` (`donor_id`, `donor_name`, `donor_blood`, `donor_age`, `donor_sex`, `donor_last_date`, `donor_phone`, `donor_email`, `created_at`, `updated_at`) VALUES
(1, 'Yearul Islam', 'AB+', 27, 1, '2021-02-11', '01825682260', 'islamyearul@gmail.com', '2022-01-06 05:22:13', '2022-01-06 05:22:13'),
(2, 'saiful ISlam', 'O+', 29, 1, '2021-09-07', '0185545656', 'saiful@gmail.com', '2022-01-06 05:22:54', '2022-01-06 05:22:54'),
(3, 'bablu', 'B+', 45, 1, '2021-09-15', '018256565', 'babalu@gmail.com', '2022-01-06 05:23:21', '2022-01-06 05:23:21');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` bigint(20) UNSIGNED NOT NULL,
  `emp_name` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_phone` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_address` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_sex` int(11) NOT NULL,
  `emp_email` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_password` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_img` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_name`, `emp_phone`, `emp_address`, `emp_sex`, `emp_email`, `emp_password`, `emp_img`, `emp_role_id`, `created_at`, `updated_at`) VALUES
(1, 'Yearul Islam', '01825682260', 'Mugda Bishwa Road', 1, 'islamyearul@gmail.com', '$2y$10$A/GJ84fVTyb6e5.1Y29zBe2IO06tcxvLX6g1EfmrLrzNucrF8M0AK', 'images\\emp_1641469580.jpg', 1, '2022-01-06 05:46:20', '2022-01-06 05:46:20'),
(2, 'Saiful', '018245644554', 'Mohammad', 1, 'saiful@gmail.com', '$2y$10$z3WUcndZ7rqAzlnlXqkPku.ysJWWYih4oAM3L4x5F.XuGq0C3i4om', 'images\\emp_1641469663.jpg', 2, '2022-01-06 05:47:43', '2022-01-06 05:47:43'),
(3, 'Muazzem', '01515665564', 'd fdsfd sfdsf ds', 1, 'bablu@gmail.com', '$2y$10$ejZCSqofos3awHMLsi.8quTkaxjY6ZIoreaWz/I7gNCdbawnjfjU2', 'images\\emp_1641469705.jpg', 5, '2022-01-06 05:48:25', '2022-01-06 05:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `employee_roles`
--

CREATE TABLE `employee_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_details` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_roles`
--

INSERT INTO `employee_roles` (`role_id`, `role_name`, `role_details`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'housekeeping, food service, building and grounds maintenance,', '2022-01-06 05:44:24', '2022-01-06 05:44:24'),
(2, 'Vice President', 'housekeeping, food service, building and grounds maintenance,', '2022-01-06 05:44:34', '2022-01-06 05:44:34'),
(3, 'Manager', 'housekeeping, food service, building and grounds maintenance,', '2022-01-06 05:44:41', '2022-01-06 05:44:41'),
(4, 'Accountant', 'housekeeping, food service, building and grounds maintenance,', '2022-01-06 05:44:48', '2022-01-06 05:44:48'),
(5, 'Developer', 'housekeeping, food service, building and grounds maintenance,', '2022-01-06 05:45:00', '2022-01-06 05:45:00'),
(6, 'Lab Technician', 'housekeeping, food service, building and grounds maintenance,', '2022-01-06 05:45:16', '2022-01-06 05:45:16'),
(7, 'Cleaner', 'housekeeping, food service, building and grounds maintenance,', '2022-01-06 05:45:24', '2022-01-06 05:45:24'),
(8, 'Doctor', 'housekeeping, food service, building and grounds maintenance,', '2022-01-06 05:45:33', '2022-01-06 05:45:33'),
(9, 'Nurse', 'housekeeping, food service, building and grounds maintenance,', '2022-01-06 05:45:39', '2022-01-06 05:45:39');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `exp_id` bigint(20) UNSIGNED NOT NULL,
  `exp_date` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exp_cat_id` bigint(20) UNSIGNED NOT NULL,
  `exp_amount` int(11) NOT NULL,
  `exp_details` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`exp_id`, `exp_date`, `exp_cat_id`, `exp_amount`, `exp_details`, `created_at`, `updated_at`) VALUES
(1, '2022-01-06', 1, 1000, 'xasd wsdwwqewq', '2022-01-06 05:43:32', '2022-01-06 05:43:32'),
(2, '2022-01-06', 2, 6500, 'we wqe wqwqewqe', '2022-01-06 05:43:46', '2022-01-06 05:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `exp_cat_id` bigint(20) UNSIGNED NOT NULL,
  `exp_cat_name` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exp_cat_description` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`exp_cat_id`, `exp_cat_name`, `exp_cat_description`, `created_at`, `updated_at`) VALUES
(1, 'Test Tube', 'housekeeping, food service, building and grounds maintenance, laundry, and administrative staff.', '2022-01-06 05:42:34', '2022-01-06 05:42:34'),
(2, 'HCL', 'housekeeping, food service, building and grounds maintenance, laundry, and administrative staff.', '2022-01-06 05:42:43', '2022-01-06 05:42:43'),
(3, 'Color Medicine', 'housekeeping, food service, building and grounds maintenance, laundry, and administrative staff.', '2022-01-06 05:43:12', '2022-01-06 05:43:12');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `floors`
--

CREATE TABLE `floors` (
  `floor_id` bigint(20) UNSIGNED NOT NULL,
  `floor_name` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor_description` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `floors`
--

INSERT INTO `floors` (`floor_id`, `floor_name`, `floor_description`, `created_at`, `updated_at`) VALUES
(1, '1st', 'ssociated with laboratories, and radioactive material and x-ray hazards. In addition to the medical staff, large healthcare faciliti', '2022-01-06 05:18:39', '2022-01-06 05:18:39'),
(2, '2nd', 'ssociated with laboratories, and radioactive material and x-ray hazards. In addition to the', '2022-01-06 05:19:00', '2022-01-06 05:19:00'),
(3, '3rd', 'ssociated with laboratories, and radioactive material and x-ray hazards. In addition to the', '2022-01-06 05:19:06', '2022-01-06 05:19:06'),
(4, '4th', 'ssociated with laboratories, and radioactive material and x-ray hazards. In addition to the', '2022-01-06 05:19:13', '2022-01-06 05:19:13');

-- --------------------------------------------------------

--
-- Table structure for table `in_patients`
--

CREATE TABLE `in_patients` (
  `in_p_id` bigint(20) UNSIGNED NOT NULL,
  `in_p_s` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_name` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_sex` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_age` int(11) NOT NULL,
  `in_p_phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_guardian_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_guardian_phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_blood` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_height` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_weight` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_bp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_symptoms` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_address` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_admission_date` datetime NOT NULL,
  `in_p_case` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_casualty` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_old_patient` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_reference` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_doc_id` bigint(20) UNSIGNED NOT NULL,
  `in_p_bed_category_id` bigint(20) UNSIGNED NOT NULL,
  `in_p_bed_id` bigint(20) UNSIGNED NOT NULL,
  `in_p_note` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `in_patients`
--

INSERT INTO `in_patients` (`in_p_id`, `in_p_s`, `in_p_name`, `in_p_sex`, `in_p_age`, `in_p_phone`, `in_p_guardian_name`, `in_p_guardian_phone`, `in_p_blood`, `in_p_height`, `in_p_weight`, `in_p_bp`, `in_p_symptoms`, `in_p_address`, `in_p_admission_date`, `in_p_case`, `in_p_casualty`, `in_p_old_patient`, `in_p_reference`, `in_p_doc_id`, `in_p_bed_category_id`, `in_p_bed_id`, `in_p_note`, `created_at`, `updated_at`) VALUES
(1, 'INPAT00001', 'Shifa', 'Female', 28, '018648456+54', 'fdfdsf', '0165455544', 'A-', '161', '62', '75', 'Pragnancy', 'Mugda Bishwa Road\r\nMosjid Goli', '2022-01-05 08:00:00', 'Pragnancy', 'no', 'no', 'Paglababa', 3, 2, 10, 'sdfdsfdsfd', '2022-01-06 05:38:22', '2022-01-06 05:38:22'),
(2, 'INPAT00002', 'Shifa', 'Female', 28, '018648456+54', 'fdfdsf', '0165455544', 'A-', '161', '62', '75', 'Pragnancy', 'Mugda Bishwa Road\r\nMosjid Goli', '2022-01-05 08:00:00', 'Pragnancy', 'no', 'no', 'Paglababa', 3, 2, 10, 'sdfdsfdsfd', '2022-01-06 05:38:24', '2022-01-06 05:38:24'),
(3, 'INPAT00003', 'Shifa', 'Female', 28, '018648456+54', 'fdfdsf', '0165455544', 'A-', '161', '62', '75', 'Pragnancy', 'Mugda Bishwa Road\r\nMosjid Goli', '2022-01-05 08:00:00', 'Pragnancy', 'no', 'no', 'Paglababa', 3, 2, 10, 'sdfdsfdsfd', '2022-01-06 05:38:24', '2022-01-06 05:38:24'),
(4, 'INPAT00004', 'Shifa', 'Female', 28, '018648456+54', 'fdfdsf', '0165455544', 'A-', '161', '62', '75', 'Pragnancy', 'Mugda Bishwa Road\r\nMosjid Goli', '2022-01-05 08:00:00', 'Pragnancy', 'no', 'no', 'Paglababa', 3, 2, 10, 'sdfdsfdsfd', '2022-01-06 05:38:24', '2022-01-06 05:38:24'),
(5, 'INPAT00005', 'Shifa', 'Female', 28, '018648456+54', 'fdfdsf', '0165455544', 'A-', '161', '62', '75', 'Pragnancy', 'Mugda Bishwa Road\r\nMosjid Goli', '2022-01-05 08:00:00', 'Pragnancy', 'no', 'no', 'Paglababa', 3, 2, 10, 'sdfdsfdsfd', '2022-01-06 05:38:24', '2022-01-06 05:38:24');

-- --------------------------------------------------------

--
-- Table structure for table `lab_reports`
--

CREATE TABLE `lab_reports` (
  `lab_id` bigint(20) UNSIGNED NOT NULL,
  `lab_p_id` bigint(20) UNSIGNED NOT NULL,
  `lab_doc_id` bigint(20) UNSIGNED NOT NULL,
  `lab_date` date NOT NULL,
  `lab_file` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `med_id` bigint(20) UNSIGNED NOT NULL,
  `med_name` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `med_cat_id` bigint(20) UNSIGNED NOT NULL,
  `med_purchase_price` int(11) NOT NULL,
  `med_sales_price` int(11) NOT NULL,
  `med_store_box` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `med_quantity` int(11) NOT NULL,
  `med_generic_name` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `med_company` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `med_expire_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`med_id`, `med_name`, `med_cat_id`, `med_purchase_price`, `med_sales_price`, `med_store_box`, `med_quantity`, `med_generic_name`, `med_company`, `med_expire_date`, `created_at`, `updated_at`) VALUES
(1, 'napa', 1, 100, 120, '50', 500, 'Peracitamol bp500', 'AIS', '2022-04-13', '2022-01-06 05:27:03', '2022-01-06 05:27:03'),
(2, 'ACE', 1, 50, 60, '20', 200, 'Peracitamol bp500', 'Aristopherma', '2022-06-28', '2022-01-06 05:27:41', '2022-01-06 05:27:41'),
(3, 'GIPAS', 3, 65, 77, '10', 100, 'fdsfdsjhf bp500', 'IB necina', '2022-05-11', '2022-01-06 05:28:22', '2022-01-06 05:28:22');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_categories`
--

CREATE TABLE `medicine_categories` (
  `med_cat_id` bigint(20) UNSIGNED NOT NULL,
  `med_cat_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `med_cat_details` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicine_categories`
--

INSERT INTO `medicine_categories` (`med_cat_id`, `med_cat_name`, `med_cat_details`, `created_at`, `updated_at`) VALUES
(1, 'Pain Killer', 'housekeeping, food service, building and grounds maintenance, laundry, and administrative staff.', '2022-01-06 05:25:22', '2022-01-06 05:25:34'),
(2, 'Gastic', 'housekeeping, food service, building and grounds maintenance, laundry, and administrative staff.', '2022-01-06 05:25:43', '2022-01-06 05:25:43'),
(3, 'Mental', 'housekeeping, food service, building and grounds maintenance, laundry, and administrative staff.', '2022-01-06 05:25:56', '2022-01-06 05:25:56'),
(4, 'Hormonal', 'housekeeping, food service, building and grounds maintenance, laundry, and administrative staff.', '2022-01-06 05:26:09', '2022-01-06 05:26:09');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_03_20_180057_create_departments_table', 1),
(5, '2020_03_20_184100_create_doctors_table', 1),
(6, '2020_03_20_192104_create_services_table', 1),
(7, '2020_03_20_193859_create_expense__categories_table', 1),
(8, '2020_03_20_194643_create_expenses_table', 1),
(9, '2020_03_20_195530_create_out_patients_table', 1),
(10, '2020_03_20_195533_create_prescriptions_table', 1),
(11, '2020_03_21_125207_create_lab_reports_table', 1),
(12, '2020_03_21_125816_create_medicine_categories_table', 1),
(13, '2020_03_21_130716_create_donor_lists_table', 1),
(14, '2020_03_21_133948_create_blood_banks_table', 1),
(15, '2020_03_21_182559_create_cases_table', 1),
(16, '2020_03_21_182737_create_patient_expenses_table', 1),
(17, '2020_03_22_145901_create_medicines_table', 1),
(18, '2020_03_22_145945_create_prescription_medicines_table', 1),
(19, '2020_03_24_162342_create_employee_roles_table', 1),
(20, '2020_03_24_162344_create_employees_table', 1),
(21, '2020_04_29_192700_create_appointments_table', 1),
(22, '2020_05_04_192621_create_floors_table', 1),
(23, '2020_05_05_051942_create_bed_categories_table', 1),
(24, '2020_05_11_053846_bed', 1),
(25, '2020_05_12_082951_in_patient', 1);

-- --------------------------------------------------------

--
-- Table structure for table `out_patients`
--

CREATE TABLE `out_patients` (
  `out_p_id` bigint(20) UNSIGNED NOT NULL,
  `out_p_s` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `out_p_name` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `out_p_sex` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `out_p_age` int(11) NOT NULL,
  `out_p_phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `out_p_blood` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `out_p_height` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `out_p_weight` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `out_p_bp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `out_p_symptoms` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `out_p_address` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `out_patients`
--

INSERT INTO `out_patients` (`out_p_id`, `out_p_s`, `out_p_name`, `out_p_sex`, `out_p_age`, `out_p_phone`, `out_p_blood`, `out_p_height`, `out_p_weight`, `out_p_bp`, `out_p_symptoms`, `out_p_address`, `created_at`, `updated_at`) VALUES
(1, 'OUTPAT0001', 'Shifa', 'Female', 28, '01826546445', 'A-', '162', '60', '260', 'Pragnancy', 'Mohammadpud', '2022-01-06 05:14:31', '2022-01-06 05:14:31'),
(2, 'OUTPAT0002', 'Ruma', 'Female', 50, '01745456465', 'AB+', '165', '80', '28', 'Mental', 'Dholaikhal', '2022-01-06 05:15:27', '2022-01-06 05:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient_expenses`
--

CREATE TABLE `patient_expenses` (
  `p_exp_id` bigint(20) UNSIGNED NOT NULL,
  `p_service_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `prescription_id` bigint(20) UNSIGNED NOT NULL,
  `prescription_code` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prescription_p_id` bigint(20) UNSIGNED NOT NULL,
  `prescription_doc_id` bigint(20) UNSIGNED NOT NULL,
  `prescription_history` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prescription_note` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prescription_date` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prescriptions`
--

INSERT INTO `prescriptions` (`prescription_id`, `prescription_code`, `prescription_p_id`, `prescription_doc_id`, `prescription_history`, `prescription_note`, `prescription_date`, `created_at`, `updated_at`) VALUES
(1, 'PRE#0001', 2, 2, '<p>dsf dsdsf</p>', '<p>dsfdsf dsfdsf</p>', '01/06/2022', '2022-01-06 05:40:16', '2022-01-06 05:40:16'),
(2, 'PRE#0002', 2, 2, '<p>dsf dsdsf</p>', '<p>dsfdsf dsfdsf</p>', '01/06/2022', '2022-01-06 05:40:50', '2022-01-06 05:40:50'),
(3, 'PRE#0003', 1, 2, '<p>sfdeft gfr</p>', '<p>e tre tre</p>', '01/04/2022', '2022-01-06 05:41:30', '2022-01-06 05:41:30');

-- --------------------------------------------------------

--
-- Table structure for table `prescription_medicines`
--

CREATE TABLE `prescription_medicines` (
  `prescription_m_id` bigint(20) UNSIGNED NOT NULL,
  `prescription_id` bigint(20) UNSIGNED NOT NULL,
  `prescription_medicine_id` bigint(20) UNSIGNED NOT NULL,
  `prescription_med_dosage` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prescription_med_frequency` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prescription_med_days` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prescription_med_ins` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prescription_medicines`
--

INSERT INTO `prescription_medicines` (`prescription_m_id`, `prescription_id`, `prescription_medicine_id`, `prescription_med_dosage`, `prescription_med_frequency`, `prescription_med_days`, `prescription_med_ins`, `created_at`, `updated_at`) VALUES
(1, 2, 3, '500', '225', '7', 'After', NULL, NULL),
(2, 3, 1, '500', '225', '7', 'After', NULL, NULL),
(3, 3, 2, '500', '100', '7', 'After', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `service_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_price` int(11) NOT NULL,
  `service_description` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_commission_rate` int(11) NOT NULL,
  `service_category` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'yearul', 'admin@gmail.com', '2022-01-05 09:58:16', '$2y$10$PKJpE7/u3yQzKOWbNB.12eOgqImoDTGyyuY2DItojOle955RyaV1.', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`app_id`),
  ADD KEY `appointments_app_p_id_foreign` (`app_p_id`),
  ADD KEY `appointments_app_doc_id_foreign` (`app_doc_id`);

--
-- Indexes for table `beds`
--
ALTER TABLE `beds`
  ADD PRIMARY KEY (`bed_id`),
  ADD KEY `beds_bed_category_id_foreign` (`bed_category_id`);

--
-- Indexes for table `bed_categories`
--
ALTER TABLE `bed_categories`
  ADD PRIMARY KEY (`bed_category_id`),
  ADD KEY `bed_categories_bed_category_floor_id_foreign` (`bed_category_floor_id`);

--
-- Indexes for table `blood_banks`
--
ALTER TABLE `blood_banks`
  ADD PRIMARY KEY (`blood_bag_id`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`case_id`),
  ADD KEY `cases_case_p_id_foreign` (`case_p_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doc_id`),
  ADD KEY `doctors_doc_dept_id_foreign` (`doc_dept_id`);

--
-- Indexes for table `donor_lists`
--
ALTER TABLE `donor_lists`
  ADD PRIMARY KEY (`donor_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `employees_emp_role_id_foreign` (`emp_role_id`);

--
-- Indexes for table `employee_roles`
--
ALTER TABLE `employee_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`exp_id`),
  ADD KEY `expenses_exp_cat_id_foreign` (`exp_cat_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`exp_cat_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `floors`
--
ALTER TABLE `floors`
  ADD PRIMARY KEY (`floor_id`);

--
-- Indexes for table `in_patients`
--
ALTER TABLE `in_patients`
  ADD PRIMARY KEY (`in_p_id`),
  ADD KEY `in_patients_in_p_doc_id_foreign` (`in_p_doc_id`),
  ADD KEY `in_patients_in_p_bed_category_id_foreign` (`in_p_bed_category_id`),
  ADD KEY `in_patients_in_p_bed_id_foreign` (`in_p_bed_id`);

--
-- Indexes for table `lab_reports`
--
ALTER TABLE `lab_reports`
  ADD PRIMARY KEY (`lab_id`),
  ADD KEY `lab_reports_lab_p_id_foreign` (`lab_p_id`),
  ADD KEY `lab_reports_lab_doc_id_foreign` (`lab_doc_id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`med_id`),
  ADD KEY `medicines_med_cat_id_foreign` (`med_cat_id`);

--
-- Indexes for table `medicine_categories`
--
ALTER TABLE `medicine_categories`
  ADD PRIMARY KEY (`med_cat_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `out_patients`
--
ALTER TABLE `out_patients`
  ADD PRIMARY KEY (`out_p_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patient_expenses`
--
ALTER TABLE `patient_expenses`
  ADD PRIMARY KEY (`p_exp_id`),
  ADD KEY `patient_expenses_p_service_id_foreign` (`p_service_id`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`prescription_id`),
  ADD KEY `prescriptions_prescription_p_id_foreign` (`prescription_p_id`),
  ADD KEY `prescriptions_prescription_doc_id_foreign` (`prescription_doc_id`);

--
-- Indexes for table `prescription_medicines`
--
ALTER TABLE `prescription_medicines`
  ADD PRIMARY KEY (`prescription_m_id`),
  ADD KEY `prescription_medicines_prescription_id_foreign` (`prescription_id`),
  ADD KEY `prescription_medicines_prescription_medicine_id_foreign` (`prescription_medicine_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `app_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `beds`
--
ALTER TABLE `beds`
  MODIFY `bed_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bed_categories`
--
ALTER TABLE `bed_categories`
  MODIFY `bed_category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blood_banks`
--
ALTER TABLE `blood_banks`
  MODIFY `blood_bag_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `case_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `dept_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doc_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `donor_lists`
--
ALTER TABLE `donor_lists`
  MODIFY `donor_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee_roles`
--
ALTER TABLE `employee_roles`
  MODIFY `role_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `exp_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `exp_cat_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `floors`
--
ALTER TABLE `floors`
  MODIFY `floor_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `in_patients`
--
ALTER TABLE `in_patients`
  MODIFY `in_p_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lab_reports`
--
ALTER TABLE `lab_reports`
  MODIFY `lab_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `med_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `medicine_categories`
--
ALTER TABLE `medicine_categories`
  MODIFY `med_cat_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `out_patients`
--
ALTER TABLE `out_patients`
  MODIFY `out_p_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient_expenses`
--
ALTER TABLE `patient_expenses`
  MODIFY `p_exp_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `prescription_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `prescription_medicines`
--
ALTER TABLE `prescription_medicines`
  MODIFY `prescription_m_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_app_doc_id_foreign` FOREIGN KEY (`app_doc_id`) REFERENCES `doctors` (`doc_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointments_app_p_id_foreign` FOREIGN KEY (`app_p_id`) REFERENCES `out_patients` (`out_p_id`) ON DELETE CASCADE;

--
-- Constraints for table `beds`
--
ALTER TABLE `beds`
  ADD CONSTRAINT `beds_bed_category_id_foreign` FOREIGN KEY (`bed_category_id`) REFERENCES `bed_categories` (`bed_category_id`) ON DELETE CASCADE;

--
-- Constraints for table `bed_categories`
--
ALTER TABLE `bed_categories`
  ADD CONSTRAINT `bed_categories_bed_category_floor_id_foreign` FOREIGN KEY (`bed_category_floor_id`) REFERENCES `floors` (`floor_id`) ON DELETE CASCADE;

--
-- Constraints for table `cases`
--
ALTER TABLE `cases`
  ADD CONSTRAINT `cases_case_p_id_foreign` FOREIGN KEY (`case_p_id`) REFERENCES `out_patients` (`out_p_id`) ON DELETE CASCADE;

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_doc_dept_id_foreign` FOREIGN KEY (`doc_dept_id`) REFERENCES `departments` (`dept_id`) ON DELETE CASCADE;

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_emp_role_id_foreign` FOREIGN KEY (`emp_role_id`) REFERENCES `employee_roles` (`role_id`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_exp_cat_id_foreign` FOREIGN KEY (`exp_cat_id`) REFERENCES `expense_categories` (`exp_cat_id`) ON DELETE CASCADE;

--
-- Constraints for table `in_patients`
--
ALTER TABLE `in_patients`
  ADD CONSTRAINT `in_patients_in_p_bed_category_id_foreign` FOREIGN KEY (`in_p_bed_category_id`) REFERENCES `bed_categories` (`bed_category_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `in_patients_in_p_bed_id_foreign` FOREIGN KEY (`in_p_bed_id`) REFERENCES `beds` (`bed_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `in_patients_in_p_doc_id_foreign` FOREIGN KEY (`in_p_doc_id`) REFERENCES `doctors` (`doc_id`) ON DELETE CASCADE;

--
-- Constraints for table `lab_reports`
--
ALTER TABLE `lab_reports`
  ADD CONSTRAINT `lab_reports_lab_doc_id_foreign` FOREIGN KEY (`lab_doc_id`) REFERENCES `doctors` (`doc_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lab_reports_lab_p_id_foreign` FOREIGN KEY (`lab_p_id`) REFERENCES `out_patients` (`out_p_id`) ON DELETE CASCADE;

--
-- Constraints for table `medicines`
--
ALTER TABLE `medicines`
  ADD CONSTRAINT `medicines_med_cat_id_foreign` FOREIGN KEY (`med_cat_id`) REFERENCES `medicine_categories` (`med_cat_id`) ON DELETE CASCADE;

--
-- Constraints for table `patient_expenses`
--
ALTER TABLE `patient_expenses`
  ADD CONSTRAINT `patient_expenses_p_service_id_foreign` FOREIGN KEY (`p_service_id`) REFERENCES `services` (`service_id`) ON DELETE CASCADE;

--
-- Constraints for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD CONSTRAINT `prescriptions_prescription_doc_id_foreign` FOREIGN KEY (`prescription_doc_id`) REFERENCES `doctors` (`doc_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prescriptions_prescription_p_id_foreign` FOREIGN KEY (`prescription_p_id`) REFERENCES `out_patients` (`out_p_id`) ON DELETE CASCADE;

--
-- Constraints for table `prescription_medicines`
--
ALTER TABLE `prescription_medicines`
  ADD CONSTRAINT `prescription_medicines_prescription_id_foreign` FOREIGN KEY (`prescription_id`) REFERENCES `prescriptions` (`prescription_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prescription_medicines_prescription_medicine_id_foreign` FOREIGN KEY (`prescription_medicine_id`) REFERENCES `medicines` (`med_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
