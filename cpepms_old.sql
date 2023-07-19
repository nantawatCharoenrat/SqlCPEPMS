-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2023 at 04:23 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cpepms`
--

-- --------------------------------------------------------

--
-- Table structure for table `appoint`
--

CREATE TABLE `appoint` (
  `appoint_id` varchar(10) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `group_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `appoint`
--

INSERT INTO `appoint` (`appoint_id`, `title`, `description`, `group_id`) VALUES
('ap2565-004', 'fgg', 'hdghfgh', '63146cpe2'),
('ap2566-001', 'ส่งความคืบหน้าครั้ง 1', 'ส่งความคืบหน้าครั้ง 1 ภายในวันที่ 1', '63146cpe2 '),
('ap2566-003', 'ส่งความคืบหน้าครั้ง 3', 'ส่งความคืบหน้าครั้ง 3 ภายในวันที่ 3', '63146cpe2 ');

-- --------------------------------------------------------

--
-- Table structure for table `assessment`
--

CREATE TABLE `assessment` (
  `topic_id` varchar(4) DEFAULT NULL,
  `referee_id` int(11) DEFAULT NULL,
  `project_id` varchar(8) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assign`
--

CREATE TABLE `assign` (
  `assign_id` varchar(6) NOT NULL,
  `date_post` datetime DEFAULT NULL,
  `date_assign` datetime DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `project_id` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `teacher_id` int(11) DEFAULT NULL,
  `project_id` varchar(8) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `comment_time` datetime DEFAULT NULL,
  `comment_chapter` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doc`
--

CREATE TABLE `doc` (
  `file_path` mediumtext DEFAULT NULL,
  `file_name` varchar(50) DEFAULT NULL,
  `file_date` datetime DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `term` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `file_num` varchar(4) NOT NULL,
  `file_date` datetime DEFAULT NULL,
  `file_name` varchar(50) DEFAULT NULL,
  `file_path` mediumtext DEFAULT NULL,
  `file_status` int(11) DEFAULT NULL,
  `file_chapter` int(11) DEFAULT NULL,
  `project_id` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`) VALUES
('63146cpe10'),
('63146cpe2');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` varchar(9) NOT NULL,
  `news_head` varchar(100) DEFAULT NULL,
  `news_text` mediumtext DEFAULT NULL,
  `news_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_id` varchar(8) NOT NULL,
  `project_nameTH` varchar(500) DEFAULT NULL,
  `project_nameENG` varchar(500) DEFAULT NULL,
  `student_id1` varchar(13) DEFAULT NULL,
  `student_id2` varchar(13) DEFAULT NULL,
  `student_id3` varchar(13) DEFAULT NULL,
  `teacher_id1` int(11) DEFAULT NULL,
  `teacher_id2` int(11) DEFAULT NULL,
  `referee_id` int(11) DEFAULT NULL,
  `referee_id1` int(11) DEFAULT NULL,
  `referee_id2` int(11) DEFAULT NULL,
  `group_id` varchar(10) DEFAULT NULL,
  `boundary_path` mediumtext DEFAULT NULL,
  `grade` varchar(2) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `term` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `project_nameTH`, `project_nameENG`, `student_id1`, `student_id2`, `student_id3`, `teacher_id1`, `teacher_id2`, `referee_id`, `referee_id1`, `referee_id2`, `group_id`, `boundary_path`, `grade`, `year`, `term`) VALUES
('2561-001', 'เครื่องให้อาหารเม็ดอัตโนมัติสาหรับสัตว์เลี้ยงขนาดเล็ก', 'FEED ME PLEASE', '1157104001604', '1157104009433', NULL, 5, NULL, 8, 2, 13, NULL, NULL, NULL, 2561, 1),
('2561-002', 'โดรนเก็บข้อมูลจากสถานีตรวจวัดในแปลงเกษตร', 'DATA COLLECTION FROM MONITORING STATION IN AGRICULTURAL BY DRONE', '1158304620045', '1158304620060', NULL, 9, NULL, 17, 15, 5, NULL, NULL, NULL, 2561, 1),
('2561-003', 'ระบบช่วยงานอาจารย์ที่ปรึกษา กรณีศึกษาภาควิชาวิศวกรรมคอมพิวเตอร์ คณะวิศวกรรมศาสตร์ มหาวิทยาลัยเทคโนโลยีราชมงคลธัญบุรี', 'ADVISOR SUPPORT SYSTEM CASE STUDY: COMPUTER ENGINEERING DEPARTMENT FACULTY OF ENGINEERING, RAJAMANGALA UNIVERSITY OF TECHNOLOGY THANYABURI', '1158304620011', '1158304620417', NULL, 15, NULL, 2, 5, 6, NULL, NULL, NULL, 2560, 2),
('2561-004', 'หมวกกันน็อกอัจฉริยะ พร้อมเชื่อมต่อแอพพลิเคชั่นแอนดรอยด์', 'SMART HELMET CONNECTED TO ANDROID APPLICATION', '1158304620136', '1158304620086', NULL, 7, NULL, 18, 8, 13, NULL, NULL, NULL, 2560, 2),
('2561-005', 'ระบบทำนายผลการเรียนรายวิชา โดยใช้กฎความสัมพันธ์และต้นไม้ตัดสินใจ กรณีศึกษา: ภาควิชาวิศวกรรมคอมพิวเตอร์ คณะวิศวกรรมศาสตร์ มหาวิทยาลัยเทคโนโลยีราชมงคลธัญบุรี', 'GRADE PREDICTION SYSTEM USING ASSOCIATION RULES AND DECISION TREE CASE STUDY: DEPARTMENT OF COMPUTER ENGINEERING FACULTY OF ENGINEERING  RAJAMANGALA UNIVERSITY OF TECHNOLOGY THANYABURI', '1158304620078', '1158304620268', NULL, 10, 1, 6, 15, 5, NULL, NULL, NULL, 2561, 1),
('2561-006', 'รถเข็นติดตามบุคคล', 'PERSONAL TRACKER SHOPPING CART', '1158404620028', '1158404620176', NULL, 9, NULL, 17, 8, 2, NULL, NULL, NULL, 2561, 1),
('2561-007', 'สายรัดข้อมือแจ้งเตือนฉุกเฉินและระบุตำแหน่งอัตโนมัติ', 'EMERGENCY NOTIFICATION AND AUTOMATIC POSITIONING BAND', '1157104002461', '1157104003238', '1157104007106', 9, 11, 6, 17, 15, NULL, NULL, NULL, 2560, 2),
('2561-008', 'ระบบบริหารจัดการค่าใช้จ่ายและกิจกรรมในนาข้าว ระดับครัวเรือน กรณีศึกษา ต.กบเจา อ.บางบาล จ.พระนครศรีอยุธยา', 'COST AND ACTIVITY MANAGEMENT SYSTEM IN HOUSEHOLD FOR RICE FARMERS IN KOP CHAO SUBDISTRICT, BANG BAN DISTRICT, PHRA NAKHON SI AYUTTHAYA PROVINCE: A CASE STUDY', '1157404620178', '1157404620251', '1157404620269', 15, NULL, 2, 1, 9, NULL, NULL, NULL, 2560, 2),
('2561-009', 'พัฒนาเกมออนไลน์ ไดเมนชั่น ซิกซ์', 'DIMENSION 6 ONLINE GAME DEVELOPMENT', '1154104620574', NULL, NULL, 2, NULL, 9, 5, 8, NULL, NULL, NULL, 2560, 2),
('2561-010', 'ระบบยืม-คืนอุปกรณ์ กรณีศึกษา บริษัทเอนาเมส จากัด', 'STORE MANAGEMENT SYSTEM CASE STUDY: ENAMES.CO.,LTD', '1157304620203', '1157304620179', '1157304620294', 2, NULL, 10, 5, 9, NULL, NULL, NULL, 2560, 2),
('2561-011', 'ระบบสร้างแบบทดสอบออนไลน์เพื่อสนับสนุนกิจกรรมการเรียนการสอน', 'AN ONLINE QUIZ SYSTEM TO SUPPORT TEACHING AND LEARNING ACTIVITIES', '1156104003966', '1157104002743', NULL, 15, NULL, 3, 5, 6, NULL, NULL, NULL, 2560, 2),
('2561-012', 'เครื่องควบคุมแผงโซล่าเซลล์หมุนตามความเข้มแสงอาทิตย์แบบ 2 แกน', 'DUAL AXIS SOLAR TRACKER', '1157404620020', '1157404620046', '1157404620236', 13, NULL, 11, 6, 15, NULL, NULL, NULL, 2560, 2),
('2561-111', '11', '11', '1158304620060', '1158304620060', '1158304620060', 11, 11, 1, 8, 7, NULL, NULL, 'i', NULL, 1),
('2561-123', '123', '123', '1158304620060', '1158304620060', '1158304620060', 13, 13, 1, 3, 7, NULL, NULL, NULL, 0, 3),
('2561-221', '22', '22', '1158304620060', '1158304620060', '1158304620060', 2, 2, 23, 1, 1, '63146cpe2', NULL, NULL, 2566, 3),
('2566-001', '111', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, 1),
('2566-005', '111', '111', '1157104009433', '1157104009433', '1157104009433', 3, 3, 5, 6, 7, '63146cpe10', 'แบบฟอร์มรายงานความคืบหน้าปริญญานิพนธ์.pdf', 'B+', 2566, 3),
('2566-009', '111', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` varchar(13) NOT NULL,
  `student_password` text DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `term` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `group_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_password`, `firstname`, `lastname`, `year`, `term`, `email`, `phone`, `group_id`) VALUES
('1154104620574', '620574', 'ทินภัทร', 'นันดวงแก้ว', 2561, 2, NULL, NULL, NULL),
('1156104003966', '003966', 'ศิริพงษ์', 'มานุจำ', 2561, 2, NULL, NULL, NULL),
('1157104001604', '001604', 'ไอรดา', 'พฤษภา', 2561, 1, NULL, NULL, NULL),
('1157104002461', '002461', 'ศรศวัส', 'ส่องแสงจันทร์', 2561, 2, NULL, NULL, NULL),
('1157104002743', '002743', 'อภิสิทธิ์', 'ทนันชัย', 2561, 2, NULL, NULL, NULL),
('1157104003238', '003238', 'ณัฐกานต์', 'พระจันทร์ศรี', 2561, 2, NULL, NULL, NULL),
('1157104007106', '007106', 'กิตติทัต', 'เนียมไทย', 2561, 2, NULL, NULL, NULL),
('1157104009433', '009433', 'สายธาร', 'งามขา', 2561, 1, NULL, NULL, NULL),
('1157304620179', '620179', 'ศรัณยู', 'เชิงแก้ว', 2561, 2, NULL, NULL, NULL),
('1157304620203', '620203', 'โกมินทร์', 'พรหมทอง', 2561, 2, NULL, NULL, NULL),
('1157304620294', '620294', 'ชินวัฒน', 'ชมภูนุช', 2561, 2, NULL, NULL, NULL),
('1157404620020', '620020', 'ผดุงศักดิ์', 'ครองพวก', 2561, 2, NULL, NULL, NULL),
('1157404620046', '620046', 'สิรภพ', 'อ่วมเจริญ', 2561, 2, NULL, NULL, NULL),
('1157404620178', '620178', 'ศุภรัตน์', 'วิงวอน', 2561, 2, NULL, NULL, NULL),
('1157404620236', '620236', 'ธีระนันต์', 'พันธ์ภักดี', 2561, 2, NULL, NULL, NULL),
('1157404620251', '620251', 'สมฤทัย', 'พันธุโรจน์', 2561, 2, NULL, NULL, NULL),
('1157404620269', '620269', 'ธีรภัทร', 'แพร่งสุวรรณ์', 2561, 2, NULL, NULL, NULL),
('1158304620011', '620011', 'มติ', 'กาญจนพันธุ์', 2561, 2, NULL, NULL, NULL),
('1158304620045', '620045', 'ภัทร', 'ทองทรัพย์', 2561, 1, NULL, NULL, NULL),
('1158304620060', '620060', 'ปวริศร์', 'เกตุมณี', 2561, 1, NULL, NULL, NULL),
('1158304620078', '620078', 'ณัฐพล', 'มีจริง', 2561, 1, NULL, NULL, NULL),
('1158304620086', '620086', 'จิรายุ', 'ชื่นชม', 2561, 2, NULL, NULL, NULL),
('1158304620136', '620136', 'ธีรเดช', 'ทรัพย์สิน', 2561, 2, NULL, NULL, NULL),
('1158304620268', '620268', 'ปริญาวัตน์', 'แก้วใส', 2561, 1, NULL, NULL, NULL),
('1158304620417', '620417', 'นฤเบศร์', 'ครองตน', 2561, 2, NULL, NULL, NULL),
('1158404620028', '620028', 'อัครเดช', 'เรืองรัตน์', 2561, 1, NULL, NULL, NULL),
('1158404620176', '620176', 'วรวุฒิ', 'ประพันธ์ศิริ', 2561, 1, NULL, NULL, NULL),
('1164104000040', '00040', ' ธนกฤต', 'ชูประยูร', 2565, 1, '1164104000040@mail.rmutt.ac.th', NULL, NULL),
('1164104000297', '00297', ' ตะวัน', 'อุ้มชู', 2565, 1, '1164104000297@mail.rmutt.ac.th', NULL, NULL),
('1164104000388', '00388', ' ธำรงค์', 'พิริยะศิริไพศาล', 2565, 1, '1164104000388@mail.rmutt.ac.th', NULL, NULL),
('1164104000768', '00768', ' วัชริศ', 'ธนีสัตย์', 2565, 1, '1164104000768@mail.rmutt.ac.th', NULL, NULL),
('1164104000917', '00917', ' นันทนา', 'นากา', 2565, 1, '1164104000917@mail.rmutt.ac.th', NULL, NULL),
('1164104001469', '01469', ' ชัยณรงค์', 'คงพล', 2565, 1, '1164104001469@mail.rmutt.ac.th', NULL, NULL),
('1164104001709', '01709', ' วัชรธร', 'เรืองศรี', 2565, 1, '1164104001709@mail.rmutt.ac.th', NULL, NULL),
('1164104002046', '02046', ' เพชรมณี', 'ศรีลากาล', 2565, 1, '1164104002046@mail.rmutt.ac.th', NULL, NULL),
('1164104002490', '02483', ' กฤตมุข', 'คิม', 2565, 1, '1164104002483@mail.rmutt.ac.th', '', '63146cpe2'),
('1164104002558', '02558', ' จิรายุส', 'ชื่นทองคำ', 2565, 1, '1164104002558@mail.rmutt.ac.th', NULL, NULL),
('1164104002913', '02913', ' อัฑฒกร', 'บุญเพชร', 2565, 1, '1164104002913@mail.rmutt.ac.th', NULL, NULL),
('1164104003051', '03051', ' ศุภกิตติ์', 'ไม้งาม', 2565, 1, '1164104003051@mail.rmutt.ac.th', NULL, NULL),
('1164104003598', '03598', ' วชิรวิทย์', 'วงศ์จำปา', 2565, 1, '1164104003598@mail.rmutt.ac.th', NULL, NULL),
('1164104004315', '04315', ' พงศธร', 'พิพัฒน์ไพฑูรย์', 2565, 1, '1164104004315@mail.rmutt.ac.th', NULL, NULL),
('1164104004760', '04760', ' จารุวรรณ', 'เงินกลม', 2565, 1, '1164104004760@mail.rmutt.ac.th', NULL, NULL),
('1164104004786', '04786', ' สุชานันท์', 'พิพัฒนชวลิตกุล', 2565, 1, '1164104004786@mail.rmutt.ac.th', NULL, NULL),
('1164104004885', '04885', ' ฉัตรติภรณ์', 'หงวนเสงี่ยม', 2565, 1, '1164104004885@mail.rmutt.ac.th', NULL, NULL),
('1164104005023', '05023', ' ปริม', 'วินุราช', 2565, 1, '1164104005023@mail.rmutt.ac.th', NULL, NULL),
('1164104005387', '05387', ' ศรุต', 'เขียวแก้ว', 2565, 1, '1164104005387@mail.rmutt.ac.th', NULL, NULL),
('1164104005593', '05593', ' กันตพงศ์', 'จันทร์โพธิ์เตี้ย', 2565, 1, '1164104005593@mail.rmutt.ac.th', NULL, NULL),
('1164104005734', '05734', ' สิรวิชญ์', 'าม', 2565, 1, '1164104005734@mail.rmutt.ac.th', NULL, NULL),
('1164104005908', '05908', ' ศุภวิชญ์', 'มานิจสิน', 2565, 1, '1164104005908@mail.rmutt.ac.th', NULL, NULL),
('1164104006062', '06062', ' นันทวัฒน์', 'มากโหน', 2565, 1, '1164104006062@mail.rmutt.ac.th', NULL, NULL),
('1164104006443', '06443', ' กิตติชัย', 'บัวแก้ว', 2565, 1, '1164104006443@mail.rmutt.ac.th', NULL, NULL),
('1164104006591', '06591', ' วันนิษา', 'แสนวัฒน์', 2565, 1, '1164104006591@mail.rmutt.ac.th', NULL, NULL),
('1164104007110', '07110', ' นนทวัฒน์', 'น้อยทับทิม', 2565, 1, '1164104007110@mail.rmutt.ac.th', NULL, NULL),
('1164104007326', '07326', ' อภิวัฒน์', 'น้อยพานิช', 2565, 1, '1164104007326@mail.rmutt.ac.th', NULL, NULL),
('1164104620011', '20011', ' ยศกร', 'เหล่าวราพันธุ์', 2565, 1, '1164104620011@mail.rmutt.ac.th', NULL, NULL),
('1164104620045', '20045', ' ธนภัทร์', 'กองเเก้ว', 2565, 1, '1164104620045@mail.rmutt.ac.th', NULL, NULL),
('1164104620078', '20078', ' ศิวกร', 'พูลสวัสดิ์', 2565, 1, '1164104620078@mail.rmutt.ac.th', NULL, NULL),
('1164104620110', '20110', ' รณกฤต', 'เหลืองอ่อน', 2565, 1, '1164104620110@mail.rmutt.ac.th', NULL, NULL),
('1164104620177', '20177', ' นาวิน', 'เหลาเกิ้มหุ่ง', 2565, 1, '1164104620177@mail.rmutt.ac.th', NULL, NULL),
('1164104620193', '20193', ' พรชัย', 'พิกุลขาว', 2565, 1, '1164104620193@mail.rmutt.ac.th', NULL, NULL),
('1164104620227', '20227', ' ธนวรรธน์', 'โสดแก้ว', 2565, 1, '1164104620227@mail.rmutt.ac.th', NULL, NULL),
('1164104620250', '20250', ' ธีรพัฒน์', 'ดอนมอญ', 2565, 1, '1164104620250@mail.rmutt.ac.th', NULL, NULL),
('1164104620276', '20276', ' ชาญชัย', 'เปียผึ้ง', 2565, 1, '1164104620276@mail.rmutt.ac.th', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `teacher_username` varchar(50) DEFAULT NULL,
  `teacher_password` text DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `teacher_username`, `teacher_password`, `position`, `firstname`, `lastname`, `email`, `phone`, `level_id`) VALUES
(0, '0', '0', 'รองศาสตราจารย์', 'วัฒนา', 'พันธ์ลำเจียก', 'null', 'null', 0),
(1, '1', '1', 'รองศาสตราจารย์', 'วัฒนา', 'พันธ์ลำเจียก', 'null', 'null', 1),
(2, '2', '2', 'ผู้ช่วยศาสตราจารย์', 'พัฒณ์รพี', 'สุนันทพจน์', 'null', 'null', 1),
(3, '3', '3', 'ผู้ช่วยศาสตราจารย์ ดร.', 'อิฐอารัญ', 'ปิติมล', 'null', 'null', 1),
(4, '4', '4', 'ผู้ช่วยศาสตราจารย์', 'ณัชติพงศ์', 'อูทอง', 'null', 'null', 1),
(5, '5', '5', 'ผู้ช่วยศาสตราจารย์', 'มาโนช', 'ประชา', 'null', 'null', 1),
(6, '6', '6', 'ผู้ช่วยศาสตราจารย์ ดร.', 'ศิริชัย', 'เตรียมล้ำเลิศ', 'null', 'null', 1),
(7, '7', '7', 'ผู้ช่วยศาสตราจารย์', 'เดชรัชต์', 'ใจถวิล', 'null', 'null', 1),
(8, '8', '8', 'ผู้ช่วยศาสตราจารย์', 'วีระชัย', 'แย้มวจี', 'null', 'null', 1),
(9, '9', '9', 'ผู้ช่วยศาสตราจารย์', 'เจษฎา', 'อรุณฤกษ์', 'null', 'null', 1),
(10, '10', '10', 'รองศาสตราจารย์', 'นชิรัตน์', 'ราชบุรี', 'null', 'null', 1),
(11, '11', '11', 'ผู้ช่วยศาสตราจารย์', 'สมรรถชัย', 'จันทรัตน์', 'null', 'null', 1),
(12, '12', '12', 'อาจารย์', 'สิทธิ', 'รักถนอม', 'null', 'null', 1),
(13, '13', '13', 'ผู้ช่วยศาสตราจารย์ ดร.', 'พฤศยน', 'นินทนาวงศา', 'null', 'null', 1),
(14, '14', '14', 'ผู้ช่วยศาสตราจารย์ ดร.', 'ธนสิน', 'บุญนาม', 'null', 'null', 1),
(15, '15', '15', 'ผู้ช่วยศาสตราจารย์ ดร.', 'ปอลิน', 'กองสุวรรณ', 'null', 'null', 1),
(16, '16', '16', 'ดร.', 'พิชยพัชยา', 'ศรีคร้าม', 'null', 'null', 1),
(17, '17', '17', 'ดร.', 'สุทินัน', 'พรอนุรักษ์', 'null', 'null', 1),
(18, '18', '18', 'ดร.', 'กิตติวัณณ์', 'นิ่มเกิดผล', 'null', 'null', 1),
(19, '19', '19', 'ดร.', 'วินัย', 'วิชัยพาณิชย์', 'null', 'null', 1),
(20, '20', '20', 'อาจารย์', 'วีระ', 'คมปรียารัตน์', 'null', 'null', 1),
(21, '21', '21', 'อาจารย์', 'สมชาติ', 'หรั่งเจริญ', 'null', 'null', 1),
(22, '22', '22', 'ผู้ช่วยศาสตราจารย์', 'พรรณราย', 'รักษ์งาร', 'null', 'null', 1),
(23, '23', '23', 'ผู้ช่วยศาสตราจารย์', 'พัชราภัณฑ์', 'ไชยสังข์', 'null', 'null', 1),
(30, '30', '$2y$10$Wv9QBukWhESbakOuEmUQBexzVJUrpxezOGIV/MDWdMYFIU/n.zwty', 'ดร.', 'nantawat', 'charoenrat', 'nanbowin2030@gmail.com', '025494990', 0);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `test_id` varchar(4) NOT NULL,
  `score_book` int(11) DEFAULT NULL,
  `score_present` int(11) DEFAULT NULL,
  `score_product` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `grade` varchar(2) DEFAULT NULL,
  `project_id` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timetest`
--

CREATE TABLE `timetest` (
  `timeTest_id` varchar(10) NOT NULL,
  `timeTest_date` date DEFAULT NULL,
  `start_time` varchar(10) DEFAULT NULL,
  `stop_time` varchar(10) DEFAULT NULL,
  `room_number` varchar(10) DEFAULT NULL,
  `project_id` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `timetest`
--

INSERT INTO `timetest` (`timeTest_id`, `timeTest_date`, `start_time`, `stop_time`, `room_number`, `project_id`) VALUES
('tt2561-001', '2566-10-15', '16:00', '17:00', '16306', '2561-001'),
('tt2561-002', '2566-09-15', '22:00', '18:00', '16303', '2561-002'),
('tt2566-003', '2566-10-15', '12:00', '18:00', '1', '2561-001');

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `topic_id` varchar(10) NOT NULL,
  `topic_name` varchar(300) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `term` int(11) DEFAULT NULL,
  `topic_weight` int(11) DEFAULT NULL,
  `topic_section` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`topic_id`, `topic_name`, `year`, `term`, `topic_weight`, `topic_section`) VALUES
('tp2566-001', 'บทที่ 1 แสดงรายละเอียดของบทนำ และมีเนื้อหาครบถ้วนถูกต้อง', 2566, 1, NULL, 0),
('tp2566-002', 'บทที่ 2 แสดงรายละเอียดการค้นคว้า และการอ้างอิงถูกต้อง', 2566, 1, NULL, 0),
('tp2566-003', 'บทที่ 3 แสดงรายละเอียดการดำเนินงานครบถ้วนถูกต้อง', 2566, 1, NULL, 0),
('tp2566-004', 'บทที่ 4 แสดงการวิเคราะห์ผลการดำเนินงานครบถ้วนถูกต้อง', 2566, 1, NULL, 0),
('tp2566-005', 'บทที่ 5 แสดงความเหมาะสมในการอภิปรายผล สรุปผล และข้อเสนอแนะ', 2566, 1, NULL, 0),
('tp2566-006', 'ทักษะการเขียนรายงาน และคุณภาพโดยรวมของรายงานผลการดำเนินงาน', 2566, 1, NULL, 0),
('tp2566-007', 'การเตรียมการก่อนการเสนอผลงาน', 2566, 1, NULL, 1),
('tp2566-008', 'คุณภาพของสื่อในการนำเสนอผลงาน', 2566, 1, NULL, 1),
('tp2566-009', 'วิธีการนำเสนอผลงาน', 2566, 1, NULL, 1),
('tp2566-010', 'ความครบถ้วนของการนำเสนอผลงาน', 2566, 1, NULL, 1),
('tp2566-011', 'การตอบคำถาม', 2566, 1, NULL, 1),
('tp2566-012', 'ผลงานที่จัดทำบรรลุวัตถุประสงค์ของโครงงาน', 2566, 1, NULL, 2),
('tp2566-013', 'ระยะเวลาการดำเนินงานเป็นไปตามแผน', 2566, 1, NULL, 2),
('tp2566-014', 'คุณค่าของผลงานจากโครงงานวิศวกรรมคอมพิวเตอร์', 2566, 1, NULL, 2),
('tp2566-015', 'คุณภาพของผลงาน ต่อ จำนวนนักศึกษา', 2566, 1, NULL, 2),
('tp2566-016', 'คุณภาพของผลงาน ต่อ ค่าใช้จ่ายในการดำเนินงาน', 2566, 1, NULL, 2),
('tp2566-017', 'คะแนนจากอาจารย์ที่ปรึกษา (20 คะแนน) (ให้คะแนนเป็นรายบุคคล) ', 2566, 1, NULL, 3),
('tp2566-019', 'หิววววววววววว19', 2569, 2, NULL, 3),
('tp2566-020', 'หิววววววววววว20', 2567, 2, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appoint`
--
ALTER TABLE `appoint`
  ADD PRIMARY KEY (`appoint_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `assessment`
--
ALTER TABLE `assessment`
  ADD KEY `project_id` (`project_id`),
  ADD KEY `referee_id` (`referee_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `assign`
--
ALTER TABLE `assign`
  ADD PRIMARY KEY (`assign_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`file_num`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_id`),
  ADD KEY `student_id1` (`student_id1`),
  ADD KEY `student_id2` (`student_id2`),
  ADD KEY `student_id3` (`student_id3`),
  ADD KEY `teacher_id1` (`teacher_id1`),
  ADD KEY `teacher_id2` (`teacher_id2`),
  ADD KEY `referee_id` (`referee_id`),
  ADD KEY `referee_id1` (`referee_id1`),
  ADD KEY `referee_id2` (`referee_id2`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`test_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `timetest`
--
ALTER TABLE `timetest`
  ADD PRIMARY KEY (`timeTest_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`topic_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appoint`
--
ALTER TABLE `appoint`
  ADD CONSTRAINT `appoint_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`);

--
-- Constraints for table `assessment`
--
ALTER TABLE `assessment`
  ADD CONSTRAINT `assessment_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`),
  ADD CONSTRAINT `assessment_ibfk_2` FOREIGN KEY (`referee_id`) REFERENCES `teacher` (`teacher_id`),
  ADD CONSTRAINT `assessment_ibfk_3` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`topic_id`);

--
-- Constraints for table `assign`
--
ALTER TABLE `assign`
  ADD CONSTRAINT `assign_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`);

--
-- Constraints for table `file`
--
ALTER TABLE `file`
  ADD CONSTRAINT `file_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`student_id1`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `project_ibfk_2` FOREIGN KEY (`student_id2`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `project_ibfk_3` FOREIGN KEY (`student_id3`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `project_ibfk_4` FOREIGN KEY (`teacher_id1`) REFERENCES `teacher` (`teacher_id`),
  ADD CONSTRAINT `project_ibfk_5` FOREIGN KEY (`teacher_id2`) REFERENCES `teacher` (`teacher_id`),
  ADD CONSTRAINT `project_ibfk_6` FOREIGN KEY (`referee_id`) REFERENCES `teacher` (`teacher_id`),
  ADD CONSTRAINT `project_ibfk_7` FOREIGN KEY (`referee_id1`) REFERENCES `teacher` (`teacher_id`),
  ADD CONSTRAINT `project_ibfk_8` FOREIGN KEY (`referee_id2`) REFERENCES `teacher` (`teacher_id`),
  ADD CONSTRAINT `project_ibfk_9` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`);

--
-- Constraints for table `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `test_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`);

--
-- Constraints for table `timetest`
--
ALTER TABLE `timetest`
  ADD CONSTRAINT `timetest_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
