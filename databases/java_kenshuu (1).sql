-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2024 at 08:12 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `java_kenshuu`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` varchar(10) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `department` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `gender` varchar(3) DEFAULT NULL,
  `joining_date` date NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `age`, `department`, `email`, `gender`, `joining_date`, `name`) VALUES
('1', 30, 'HR', 'john.doe@example.com', 'Mal', '2021-01-15', 'John Doe'),
('2', 25, 'Finance', 'jane.smith@example.com', 'Fem', '2020-06-23', 'Jane Smith'),
('3', 40, 'IT', 'michael.brown@example.com', 'Mal', '2019-11-12', 'Michael Brown'),
('4', 35, 'Marketing', 'emily.davis@example.com', 'Fem', '2018-09-30', 'Emily Davis'),
('5', 28, 'Sales', 'david.wilson@example.com', 'Mal', '2020-03-14', 'David Wilson'),
('6', 32, 'Support', 'lisa.johnson@example.com', 'Fem', '2021-07-19', 'Lisa Johnson'),
('7', 27, 'R&D', 'james.moore@example.com', 'Mal', '2019-05-25', 'James Moore'),
('8', 29, 'HR', 'linda.clark@example.com', 'Fem', '2020-08-01', 'Linda Clark'),
('9', 38, 'Finance', 'robert.jones@example.com', 'Mal', '2017-12-05', 'Robert Jones'),
('10', 26, 'IT', 'patricia.white@example.com', 'Fem', '2021-02-21', 'Patricia White');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `age`, `department`, `email`, `gender`, `joining_date`, `name`) VALUES
(1, 30, 'HR', 'taro.yamada@example.jp', 'Male', '2021-01-15', 'Taro Yamada'),
(2, 25, 'Finance', 'hana.suzuki@example.jp', 'Female', '2020-06-23', 'Hana Suzuki'),
(3, 40, 'IT', 'takashi.tanaka@example.jp', 'Male', '2019-11-12', 'Takashi Tanaka'),
(4, 35, 'Marketing', 'yuko.saito@example.jp', 'Female', '2018-09-30', 'Yuko Saito'),
(5, 28, 'Sales', 'koji.watanabe@example.jp', 'Male', '2020-03-14', 'Koji Watanabe'),
(6, 32, 'Support', 'mika.kimura@example.jp', 'Female', '2021-07-19', 'Mika Kimura'),
(7, 27, 'R&D', 'daiki.kobayashi@example.jp', 'Male', '2019-05-25', 'Daiki Kobayashi'),
(8, 29, 'HR', 'saki.nakamura@example.jp', 'Female', '2020-08-01', 'Saki Nakamura'),
(9, 38, 'Finance', 'hiroshi.kato@example.jp', 'Male', '2017-12-05', 'Hiroshi Kato'),
(10, 26, 'IT', 'naomi.shimizu@example.jp', 'Female', '2021-02-21', 'Naomi Shimizu');

-- --------------------------------------------------------

--
-- Table structure for table `kaishain`
--

CREATE TABLE `kaishain` (
  `社員ID` varchar(10) NOT NULL,
  `入社年月日` char(8) NOT NULL,
  `氏名` varchar(20) NOT NULL,
  `性別` varchar(3) NOT NULL,
  `年齢` int(3) NOT NULL,
  `所属` varchar(10) NOT NULL,
  `メールアドレス` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kaishain`
--

INSERT INTO `kaishain` (`社員ID`, `入社年月日`, `氏名`, `性別`, `年齢`, `所属`, `メールアドレス`) VALUES
('A123456789', '20230115', '山田太郎', '男性', 25, '営業部', 'yamada@example.com'),
('B234567890', '20200220', '佐藤花子', '女性', 30, '開発部', 'sato@example.com'),
('C345678901', '20191210', '鈴木一郎', '男性', 35, '人事部', 'suzuki@example.com'),
('D456789012', '20210505', '高橋美咲', '女性', 28, '経理部', 'takahashi@example.com'),
('E567890123', '20211111', '田中実', '未確認', 40, '総務部', 'tanaka@example.com'),
('F678901234', '20180403', '伊藤裕子', '女性', 32, '企画部', 'ito@example.com'),
('G789012345', '20190707', '渡辺健', '男性', 29, '広報部', 'watanabe@example.com'),
('H890123456', '20210901', '松本沙織', '女性', 26, '法務部', 'matsumoto@example.com'),
('I901234567', '20220125', '井上智', '男性', 33, '営業部', 'inoue@example.com'),
('J012345678', '20230317', '中村舞', '女性', 27, '開発部', 'nakamura@example.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `kaishain`
--
ALTER TABLE `kaishain`
  ADD PRIMARY KEY (`社員ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
