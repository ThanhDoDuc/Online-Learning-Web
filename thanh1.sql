-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2023 at 11:25 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thanh1`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `attached_files` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `courseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignment_submissions`
--

CREATE TABLE `assignment_submissions` (
  `id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `assignmentId` int(11) DEFAULT NULL,
  `studentId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `courseId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(11) NOT NULL,
  `firstMemberId` int(11) NOT NULL,
  `secondMemberId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `learning_object` varchar(255) DEFAULT NULL,
  `required_skills` varchar(255) DEFAULT NULL,
  `course_for` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT 'New Course',
  `sub_title` varchar(255) DEFAULT NULL,
  `course_description` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `primarily_taught` varchar(255) DEFAULT NULL,
  `course_image` varchar(255) DEFAULT 'https://s.udemycdn.com/course/750x422/placeholder.jpg',
  `promotional_video` varchar(255) DEFAULT NULL,
  `price` float DEFAULT 0,
  `welcome_message` varchar(255) DEFAULT NULL,
  `congratulation_message` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Draft',
  `rating` float DEFAULT 5,
  `sale` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `teacherId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `learning_object`, `required_skills`, `course_for`, `title`, `sub_title`, `course_description`, `language`, `level`, `category`, `primarily_taught`, `course_image`, `promotional_video`, `price`, `welcome_message`, `congratulation_message`, `status`, `rating`, `sale`, `createdAt`, `updatedAt`, `teacherId`) VALUES
(1, 'Với mục đích giới thiệu đến mọi người NGÔN NGỮ PYTHON, một ngôn ngữ lập trình khá mới mẻ so với C, C++, Java, PHP ở Việt Nam\nThông qua khóa học LẬP TRÌNH PYTHON CƠ BẢN, Kteam sẽ hướng dẫn các bạn kiến thức cơ bản của Python. Để từ đó, có được nền tảng cho', 'Ngoài ra, khóa LẬP TRÌNH PYTHON CƠ BẢN cũng dành cho những bạn có nhiều ý tưởng nhưng thiếu kiến thức về lập trình, muốn có một ngôn ngữ đơn giản, dễ học cho việc hiện thực hóa ý tưởng đó.  Khóa học này không có những yêu cầu khắt khe về kiến thức nền. Do', 'Serial này dành cho các bạn muốn học, tìm hiểu về lập trình và muốn tìm một ngôn ngữ dễ học cho người mới bắt đầu, có khuynh hướng làm về mảng “Khoa học máy tính”. ', 'Lập trình Python cơ bản - phần 1- Howkteam', 'Python, Programing', 'Với mục đích giới thiệu đến mọi người NGÔN NGỮ PYTHON, một ngôn ngữ lập trình khá mới mẻ so với C, C++, Java, PHP ở Việt Nam.\n\nThông qua khóa học LẬP TRÌNH PYTHON CƠ BẢN, Kteam sẽ hướng dẫn các bạn kiến thức cơ bản của Python. Để từ đó, có được nền tảng c', NULL, NULL, NULL, ' Kiến thức cơ bản của Python', 'https://i.ytimg.com/vi/NZj6LI5a9vc/hqdefault.jpg?sqp=-oaymwEXCNACELwBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLAl_ZXojVe42ntbgPNZEY64hoRnuA', 'https://i.ytimg.com/vi/NZj6LI5a9vc/hqdefault.jpg?sqp=-oaymwEXCNACELwBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLAl_ZXojVe42ntbgPNZEY64hoRnuA', 0, 'GIỚI THIỆU KHÓA HỌC\nVới mục đích giới thiệu đến mọi người NGÔN NGỮ PYTHON, một ngôn ngữ lập trình khá mới mẻ so với C, C++, Java, PHP ở Việt Nam.', 'Nếu bạn có bất kỳ khó khăn hay thắc mắc gì về khóa học, đừng ngần ngại đặt câu hỏi trong phần BÌNH LUẬN bên dưới mỗi video hoặc tham gia các cộng đồng hỏi đáp của Kteam để được hỗ trợ.', 'Public', 5, NULL, '2023-12-07 06:06:01', '2023-12-07 06:45:35', 1),
(2, 'Kteam sẽ hướng dẫn các bạn kiến thức cơ bản của Python\nCho phép bạn tiếp tục tìm hiểu những kiến thức tuyệt vời khác của Python hoặc là một ngôn ngữ khác\nKteam sẽ giới thiệu với các bạn Python ở phiên bản Python 3.X (3.6.2)\nLẬP TRÌNH PYTHON CƠ BẢN', 'Khóa học này không có những yêu cầu khắt khe về kiến thức nền. Do đó nếu bạn là một người không biết nhiều về lập trình cũng có thể tiếp cận - Bạn cũng không cần phải là một thiên tài toán học', 'Serial này dành cho các bạn muốn học, tìm hiểu về lập trình và muốn tìm một ngôn ngữ dễ học cho người mới bắt đầu, có khuynh hướng làm về mảng “Khoa học máy tính”. ', 'Lập trình Python cơ bản - phần 2- Howkteam', 'Python, Programing', 'GIỚI THIỆU KHÓA HỌC\n\nVới mục đích giới thiệu đến mọi người NGÔN NGỮ PYTHON, một ngôn ngữ lập trình khá mới mẻ so với C, C++, Java, PHP ở Việt Nam.\n\nThông qua khóa học LẬP TRÌNH PYTHON CƠ BẢN, Kteam sẽ hướng dẫn các bạn kiến thức cơ bản của Python. Để từ đ', NULL, NULL, NULL, 'Lập trình Python cơ bản', 'https://i.ytimg.com/vi/6J8-jkoRBXw/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLA2HRi92d1ynBgGy5Isyv4HNIYpLg', 'https://www.youtube.com/watch?v=6J8-jkoRBXw&list=PL33lvabfss1xczCv2BA0SaNJHu_VXsFtg&index=19&pp=iAQB', 0, 'GIỚI THIỆU KHÓA HỌC\n\nVới mục đích giới thiệu đến mọi người NGÔN NGỮ PYTHON, một ngôn ngữ lập trình khá mới mẻ so với C, C++, Java, PHP ở Việt Nam.', 'Cảm ơn các bạn đã theo dõi bài viết. Hãy để lại bình luận hoặc góp ý của mình để phát triển bài viết tốt hơn. Đừng quên “Luyện tập – Thử thách – Không ngại khó”.', 'Public', 5, NULL, '2023-12-07 06:24:08', '2023-12-07 06:45:41', 1),
(3, 'Hệ điều hành là gì?\nUnix và Windows\nLịch sử của Linux\nTính ưu việt của Linux', 'No', 'Any', 'Lịch sử và tính ưu việt của Linux | Hiraki | KHOA HỌC', 'OS, Linux', 'Bài viết: [Series] Sự kỳ diệu của Linux (Phần 1: Lịch sử và tính ưu việt của Linux)\nĐược viết bởi: Hiraki\nLink bài viết: https://spiderum.com/bai-dang/Series-Su-ky-dieu-cua-Linux-Phan-1-uju\n____________\nTìm hiểu thêm về cuốn sách DevUP\nhttps://b.link/devu', NULL, NULL, NULL, 'Lịch sử của Linux', 'https://i.ytimg.com/an_webp/dRRP9Y8xeM8/mqdefault_6s.webp?du=3000&sqp=CNDSxasG&rs=AOn4CLBLK-JYAy1bc17_vlvFjuVtaCM-YQ', 'https://www.youtube.com/watch?v=dRRP9Y8xeM8', 0, 'Hệ điều hành (operating system) là hệ thống điều hành các hoạt động của một hệ thống máy tính. Nó hoạt động như một môi trường để các phần mềm khác (như ứng dụng văn phòng, chỉnh sửa ảnh, game, ...) có thể hoạt động được. Nếu không có hệ điều hành, máy tí', 'Tìm hiểu thêm về cuốn sách DevUP\nhttps://b.link/devup/spiderum\nGhé Nhà sách Spiderum trên SHOPEE ngay thôi các bạn ơi:\nhttps://b.link/SP-YT-Spiderum', 'Public', 5, NULL, '2023-12-07 06:57:11', '2023-12-07 07:05:11', 2);

-- --------------------------------------------------------

--
-- Table structure for table `discussions`
--

CREATE TABLE `discussions` (
  `id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `courseId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `discussions`
--

INSERT INTO `discussions` (`id`, `comment`, `createdAt`, `updatedAt`, `courseId`, `userId`) VALUES
(1, 'Em đang học khối ngành kinh tế đang tìm hiểu về ngôn ngữ lập trình để sau này phục vụ chuyên ngành, thật may mắn khi anh ra full trọn bộ python ạ, em cảm ơn anh và team rất nhiều', '2023-12-07 06:56:07', '2023-12-07 06:56:07', 1, 3),
(2, 'Xin chao', '2023-12-07 07:05:04', '2023-12-07 07:05:04', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `enrolls`
--

CREATE TABLE `enrolls` (
  `id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `courseId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrolls`
--

INSERT INTO `enrolls` (`id`, `createdAt`, `updatedAt`, `courseId`, `userId`) VALUES
(1, '2023-12-07 06:53:10', '2023-12-07 06:53:10', 1, 3),
(2, '2023-12-07 07:06:12', '2023-12-07 07:06:12', 3, 2),
(3, '2023-12-07 07:09:49', '2023-12-07 07:09:49', 2, 4),
(4, '2023-12-07 07:09:49', '2023-12-07 07:09:49', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `feedback_description` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `courseId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `rating`, `feedback_description`, `createdAt`, `updatedAt`, `courseId`, `userId`) VALUES
(1, 4, 'This is the teacher description section. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium cupiditate deleniti distinctio dolores dolorum eum ipsum itaque, magnam minima molestiae nihil nostrum, omnis quis ratione saepe sunt, voluptas!', '2023-12-07 07:10:02', '2023-12-07 07:10:02', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

CREATE TABLE `lectures` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `courseId` int(11) DEFAULT NULL,
  `sectionId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lectures`
--

INSERT INTO `lectures` (`id`, `name`, `video_url`, `createdAt`, `updatedAt`, `courseId`, `sectionId`) VALUES
(1, 'Bài 2: Cài đặt môi trường Python | HowKteam', 'https://www.youtube.com/watch?v=jf-q_dG8WzI&list=PL33lvabfss1xczCv2BA0SaNJHu_VXsFtg&index=2', '2023-12-07 06:16:47', '2023-12-07 06:57:20', 1, 1),
(2, 'Bài 1: Giới thiệu ngôn ngữ lập trình Python | HowKteam', 'https://www.youtube.com/watch?v=NZj6LI5a9vc&list=PL33lvabfss1xczCv2BA0SaNJHu_VXsFtg&index=1', '2023-12-07 06:16:47', '2023-12-07 06:57:20', 1, 1),
(3, 'Bài 6: Kiểu số trong Python | HowKteam', 'https://www.youtube.com/watch?v=IAVvgqDBiv0&list=PL33lvabfss1xczCv2BA0SaNJHu_VXsFtg&index=6', '2023-12-07 06:16:47', '2023-12-07 06:57:20', 1, 1),
(4, 'Bài 7: Kiểu chuỗi trong Python - Phần 1 | HowKteam', 'https://www.youtube.com/watch?v=Vb6XWSLPQfg&list=PL33lvabfss1xczCv2BA0SaNJHu_VXsFtg&index=7', '2023-12-07 06:16:47', '2023-12-07 06:57:20', 1, 1),
(5, 'Bài 4: Comment trong Python | HowKteam', 'https://www.youtube.com/watch?v=t3dERE9T5yg&list=PL33lvabfss1xczCv2BA0SaNJHu_VXsFtg&index=4', '2023-12-07 06:16:47', '2023-12-07 06:57:20', 1, 1),
(6, 'Bài 5: Biến(Variable) trong Python | HowKteam', 'https://www.youtube.com/watch?v=nclE18Yl-kA&list=PL33lvabfss1xczCv2BA0SaNJHu_VXsFtg&index=5', '2023-12-07 06:16:47', '2023-12-07 06:57:20', 1, 1),
(7, 'Bài 3: Chạy file Python | HowKteam', 'https://www.youtube.com/watch?v=QFxqY8qv42E&list=PL33lvabfss1xczCv2BA0SaNJHu_VXsFtg&index=3', '2023-12-07 06:16:47', '2023-12-07 06:57:20', 1, 1),
(8, 'Bài 8: Kiểu chuỗi trong Python - Phần 2 | HowKteam', 'https://www.youtube.com/watch?v=gzWriEOVjU0&list=PL33lvabfss1xczCv2BA0SaNJHu_VXsFtg&index=8', '2023-12-07 06:16:47', '2023-12-07 06:57:20', 1, 1),
(9, 'Bài 9: Kiểu chuỗi trong Python p3 | HowKteam', 'https://www.youtube.com/watch?v=LRUHnuHljPQ&list=PL33lvabfss1xczCv2BA0SaNJHu_VXsFtg&index=9', '2023-12-07 06:16:47', '2023-12-07 06:57:20', 1, 1),
(10, 'Bài 10: Kiểu chuỗi trong Python - Phần 4 | HowKteam', 'https://www.youtube.com/watch?v=q2TNJMBx6GE&list=PL33lvabfss1xczCv2BA0SaNJHu_VXsFtg&index=10', '2023-12-07 06:16:47', '2023-12-07 06:57:20', 1, 1),
(12, 'Bài 11: Kiểu chuỗi trong Python - Phần 5 | HowKteam', 'https://www.youtube.com/watch?v=u2Kd3weqPZE&list=PL33lvabfss1xczCv2BA0SaNJHu_VXsFtg&index=11', '2023-12-07 06:17:26', '2023-12-07 06:57:20', 1, 1),
(13, 'Bài 13: List trong Python - Phần 2 | HowKteam', 'https://www.youtube.com/watch?v=9IH3EynbcpU&list=PL33lvabfss1xczCv2BA0SaNJHu_VXsFtg&index=13', '2023-12-07 06:20:30', '2023-12-07 06:57:20', 1, 1),
(14, 'Bài 12: List trong Python - Phần 1 | HowKteam', 'https://www.youtube.com/watch?v=UzTE665WXb8&list=PL33lvabfss1xczCv2BA0SaNJHu_VXsFtg&index=12', '2023-12-07 06:20:30', '2023-12-07 06:57:20', 1, 1),
(15, 'Bài 17: Dict trong Python - Phần 1| HowKteam', 'https://www.youtube.com/watch?v=zFDTmZjJFws&list=PL33lvabfss1xczCv2BA0SaNJHu_VXsFtg&index=17', '2023-12-07 06:20:30', '2023-12-07 06:57:20', 1, 1),
(16, 'Bài 16: Set trong Python | HowKteam', 'https://www.youtube.com/watch?v=S-CWHkKiOBs&list=PL33lvabfss1xczCv2BA0SaNJHu_VXsFtg&index=16', '2023-12-07 06:20:30', '2023-12-07 06:57:20', 1, 1),
(17, 'Bài 15: Hashable và Unhashable trong Python | HowKteam', 'https://www.youtube.com/watch?v=gw9zbl2Q7r4&list=PL33lvabfss1xczCv2BA0SaNJHu_VXsFtg&index=15', '2023-12-07 06:20:30', '2023-12-07 06:57:20', 1, 1),
(18, 'Bài 14: Tuple trong Python | HowKteam', 'https://www.youtube.com/watch?v=dDFFCbRGm3o&list=PL33lvabfss1xczCv2BA0SaNJHu_VXsFtg&index=14', '2023-12-07 06:20:30', '2023-12-07 06:57:20', 1, 1),
(19, 'Bài 18: Dict trong Python - Phần 2 | HowKteam', 'https://www.youtube.com/watch?v=jmwBKuJl2Zg&list=PL33lvabfss1xczCv2BA0SaNJHu_VXsFtg&index=18', '2023-12-07 06:20:30', '2023-12-07 06:57:20', 1, 1),
(20, 'Lịch sử và tính ưu việt của Linux', 'https://www.youtube.com/watch?v=dRRP9Y8xeM8', '2023-12-07 07:07:08', '2023-12-07 07:08:41', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `lecture_statuses`
--

CREATE TABLE `lecture_statuses` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `lectureId` int(11) DEFAULT NULL,
  `studentId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sendId` int(11) NOT NULL,
  `receiveId` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `conversationId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `courseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `createdAt`, `updatedAt`, `courseId`) VALUES
(1, 'Khóa học lập trình Python cơ bản', '2023-12-07 06:06:01', '2023-12-07 06:57:20', 1),
(3, 'Hiraki | KHOA HỌC', '2023-12-07 06:24:08', '2023-12-07 07:08:41', 2);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT 'https://img.freepik.com/premium-vector/avatar-user-icon-vector_97886-15026.jpg?size=626&ext=jpg',
  `phone` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `description`, `avatar_url`, `phone`, `mail`, `createdAt`, `updatedAt`, `userId`) VALUES
(1, 'I am a knowledgeable and organized professional with a passion for preserving history. As an archivist, my strong understanding of archival techniques, coupled with my commitment to ensuring that important historical documents and artifacts are properly s', 'https://img.freepik.com/premium-vector/avatar-user-icon-vector_97886-15026.jpg?size=626&ext=jpg', '04648489648', 'student1@gmail.com', '2023-12-07 06:50:34', '2023-12-07 06:52:19', 3);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `avatar_url` varchar(255) DEFAULT 'https://img.freepik.com/premium-vector/avatar-user-icon-vector_97886-15026.jpg?size=626&ext=jpg',
  `phone` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `description`, `avatar_url`, `phone`, `mail`, `website`, `createdAt`, `updatedAt`, `userId`) VALUES
(1, 'I am a highly organized and detail-oriented professional with a passion for numbers. My expertise lies in financial analysis and accounting, and I am committed to helping my clients make informed financial decisions.', 'https://img.freepik.com/premium-vector/avatar-user-icon-vector_97886-15026.jpg?size=626&ext=jpg', '03254684468', 'teacher1@gmail.com', NULL, '2023-12-07 06:04:56', '2023-12-07 06:05:51', 2),
(2, 'Empty', 'https://img.freepik.com/premium-vector/avatar-user-icon-vector_97886-15026.jpg?size=626&ext=jpg', '068489648646', 'teacher2@gmail.com', NULL, '2023-12-07 06:56:46', '2023-12-07 07:09:06', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `money` float DEFAULT 0,
  `user_type` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`, `money`, `user_type`, `createdAt`, `updatedAt`) VALUES
(1, 'admin@gmail.com', 'Admin', '$2a$08$YzjaPTnLw02TQ3MhneblUuK07LbBdaesyQUuUiVZFUYPLTX.nb9k6', 1000, 'admin', '2023-12-07 05:58:55', '2023-12-07 07:05:43'),
(2, 'teacher1@gmail.com', 'Nguyen Van A', '$2a$08$bEy5ivwhDbt48ifiNpxo1unfORFVVxPnoJVXv8OBmORsusvvhbKgm', 100, 'teacher', '2023-12-07 06:04:56', '2023-12-07 07:05:43'),
(3, 'student1@gmail.com', 'Nguyen Van Mot', '$2a$08$Fd2ksLh3u0dtrp6l3RUhceDn0Kxp4YoOz7/BaIRLr7cs/2QqpVqNy', 100, 'student', '2023-12-07 06:50:34', '2023-12-07 07:05:38'),
(4, 'teacher2@gmail.com', 'Nguyen Van B', '$2a$08$yvwPHbDQdKJ8i..9U/SHfeXC.0T8QfK0fEamzJNJBrEo1YJUFthlm', 100, 'teacher', '2023-12-07 06:56:46', '2023-12-07 07:05:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courseId` (`courseId`);

--
-- Indexes for table `assignment_submissions`
--
ALTER TABLE `assignment_submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignmentId` (`assignmentId`),
  ADD KEY `studentId` (`studentId`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courseId` (`courseId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacherId` (`teacherId`);

--
-- Indexes for table `discussions`
--
ALTER TABLE `discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courseId` (`courseId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `enrolls`
--
ALTER TABLE `enrolls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courseId` (`courseId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courseId` (`courseId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `lectures`
--
ALTER TABLE `lectures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courseId` (`courseId`),
  ADD KEY `sectionId` (`sectionId`);

--
-- Indexes for table `lecture_statuses`
--
ALTER TABLE `lecture_statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lectureId` (`lectureId`),
  ADD KEY `studentId` (`studentId`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conversationId` (`conversationId`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courseId` (`courseId`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignment_submissions`
--
ALTER TABLE `assignment_submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `discussions`
--
ALTER TABLE `discussions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `enrolls`
--
ALTER TABLE `enrolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lectures`
--
ALTER TABLE `lectures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `lecture_statuses`
--
ALTER TABLE `lecture_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_ibfk_1` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `assignment_submissions`
--
ALTER TABLE `assignment_submissions`
  ADD CONSTRAINT `assignment_submissions_ibfk_1` FOREIGN KEY (`assignmentId`) REFERENCES `assignments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `assignment_submissions_ibfk_2` FOREIGN KEY (`studentId`) REFERENCES `students` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`teacherId`) REFERENCES `teachers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `discussions`
--
ALTER TABLE `discussions`
  ADD CONSTRAINT `discussions_ibfk_1` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `discussions_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `enrolls`
--
ALTER TABLE `enrolls`
  ADD CONSTRAINT `enrolls_ibfk_1` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `enrolls_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD CONSTRAINT `feedbacks_ibfk_1` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `feedbacks_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `lectures`
--
ALTER TABLE `lectures`
  ADD CONSTRAINT `lectures_ibfk_1` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `lectures_ibfk_2` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `lecture_statuses`
--
ALTER TABLE `lecture_statuses`
  ADD CONSTRAINT `lecture_statuses_ibfk_1` FOREIGN KEY (`lectureId`) REFERENCES `lectures` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `lecture_statuses_ibfk_2` FOREIGN KEY (`studentId`) REFERENCES `students` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`conversationId`) REFERENCES `conversations` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_ibfk_1` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
