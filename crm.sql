-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 31, 2021 lúc 07:13 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `crm`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `account_id` int(11) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `account_email` varchar(100) NOT NULL,
  `account_address` varchar(100) NOT NULL,
  `account_primary_contact` varchar(100) NOT NULL,
  `account_main_phone` varchar(200) NOT NULL,
  `account_date` date NOT NULL DEFAULT current_timestamp(),
  `contact_id` int(11) DEFAULT NULL,
  `lead_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`account_id`, `account_name`, `account_email`, `account_address`, `account_primary_contact`, `account_main_phone`, `account_date`, `contact_id`, `lead_id`) VALUES
(1, 'a', 'a', 'Address 1: City ', 'Primary Contact', 'Main Phone', '2021-06-27', NULL, NULL),
(2, 'hau', 's', 'Address 1: City ', 'Primary Contact', 'Main Phone', '2021-07-27', NULL, NULL),
(3, 'haukar', '11', 'vt', 'haukar', '113', '2021-07-27', NULL, NULL),
(4, 'ss', '', 'Address 1: City ', 'Primary Contact', 'Main Phone', '2021-07-27', NULL, NULL),
(5, 'ss', '', 'Address 1: City ', '', 'Main Phone', '2021-07-27', NULL, NULL),
(6, 'huy', '', 'Address 1: City ', 'Primary Contact', 'Main Phone', '2021-07-27', NULL, NULL),
(7, 'hau', '', 'vt', 'haus', '111', '2021-07-27', NULL, NULL),
(8, 'a', 'a', 'Address 1: City ', 'Primary Contact', 'Main Phone', '2021-07-30', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `competior`
--

CREATE TABLE `competior` (
  `competior_id` int(11) NOT NULL,
  `competior_name` varchar(100) NOT NULL,
  `competior_oppotunites` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `competior`
--

INSERT INTO `competior` (`competior_id`, `competior_name`, `competior_oppotunites`) VALUES
(1, 'Huy_Group', 'Discount 50%'),
(27, 'Hau_Group', 'Discount 30%'),
(28, 'Duc_Group', 'Discount 20%				'),
(29, 'Bach Hoa Xanh', 'Price Increase'),
(31, 'Vinmart', '- Buy 1 Get 1 Free\n- Buy 3 Get 2 Free');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(100) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_phone` varchar(100) NOT NULL,
  `contact_address` varchar(100) NOT NULL,
  `contact_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_name`, `contact_email`, `contact_phone`, `contact_address`, `contact_date`) VALUES
(1, 'hau', '11', '1', '1', '2021-05-27'),
(2, 's', 's', 's', 's', '2021-06-27'),
(3, 'ss', '', '', '', '2021-07-27'),
(6, 'hau', 's', 'saaa', 's', '2021-07-27'),
(8, 'a1', 'a2', 'a3', '1', '2021-07-27'),
(9, 'b1', 'b2', 'b3', '4', '2021-07-27'),
(10, 'a', 'a', 'a', 'aâ', '2021-07-27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(100) NOT NULL,
  `employee_email` varchar(100) NOT NULL,
  `employee_phone` varchar(100) NOT NULL,
  `employee_position` varchar(100) NOT NULL,
  `employee_username` varchar(100) NOT NULL,
  `employee_password` varchar(100) NOT NULL,
  `employee_rank` int(11) NOT NULL,
  `employee_dateofbirth` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_name`, `employee_email`, `employee_phone`, `employee_position`, `employee_username`, `employee_password`, `employee_rank`, `employee_dateofbirth`) VALUES
(5, 'b', 'h@gmail.com', '111', 'maketing', 'b', 'eb06vnOrfI9WJte01OFGxw==', 4, '2021-07-01'),
(7, 'a', 'b', '', 'service', 'c', 'eb06vnOrfI9WJte01OFGxw==', 5, ''),
(9, 'admin', '', '', 'sale', 'a', 'eb06vnOrfI9WJte01OFGxw==', 3, ''),
(10, 'C-R-M GROUP', '', '', 'chủ tịch', 'ct', 'eb06vnOrfI9WJte01OFGxw==', 0, ''),
(11, 'huy', 'huy@gmail.com', '000', 'Employee', 'tmh', 'eb06vnOrfI9WJte01OFGxw==', 3, ''),
(12, 'hau', '', '', 'ad', 'hau', 'eb06vnOrfI9WJte01OFGxw==', 4, ''),
(14, 'Trần Nhân Hậu', 'hautay111@gmail.com', '0394469566', 'admin ', 'haukar', '3VKQQG80NakZu2SIqgfXqA==', 1, '2002-06-30'),
(15, 'huy', 'huy@gmail.com', '0999999999', 'admin', 'ad', 'eb06vnOrfI9WJte01OFGxw==', 1, '2021-07-22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `leader`
--

CREATE TABLE `leader` (
  `lead_id` int(11) NOT NULL,
  `lead_name` varchar(100) NOT NULL,
  `lead_health` varchar(255) NOT NULL,
  `lead_health_trend` varchar(255) NOT NULL,
  `lead_parent_account` varchar(255) NOT NULL,
  `lead_time_team` varchar(255) NOT NULL,
  `lead_time_customer` varchar(255) NOT NULL,
  `lead_date` date NOT NULL DEFAULT current_timestamp(),
  `lead_lastupdated` varchar(255) NOT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `leader`
--

INSERT INTO `leader` (`lead_id`, `lead_name`, `lead_health`, `lead_health_trend`, `lead_parent_account`, `lead_time_team`, `lead_time_customer`, `lead_date`, `lead_lastupdated`, `contact_id`, `product_id`) VALUES
(2, 'hau', 'Good', 'Improving', 'haukar', '2', '3', '2021-07-27', '----', NULL, 1),
(8, 'hau', 'Good', 'Improving', 'haukarrrr', '2', '3', '2021-07-28', '----', NULL, 2),
(15, 'hau', '', '', '', '', '', '2021-07-28', '', NULL, 3),
(16, '', '', '', '', '', '', '2021-07-29', '', NULL, NULL),
(17, 'hau', 'Good', 'Improving', 'haukar', '2', '3', '2021-07-29', '----', NULL, NULL),
(18, 'hau', 'Good', 'Improving', 'haukarrrr', '2', '3', '2021-07-29', '----', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `opportunities`
--

CREATE TABLE `opportunities` (
  `opportunities_id` int(11) NOT NULL,
  `opportunities_name` varchar(100) NOT NULL,
  `opportunities_details` varchar(100) NOT NULL,
  `opportunities_stage` varchar(100) NOT NULL,
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_mana`
--

CREATE TABLE `order_mana` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `other_details` varchar(100) NOT NULL,
  `order_value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_amount` int(11) NOT NULL,
  `lead_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `product_amount`, `lead_id`) VALUES
(1, 'Quạt', '1000000', 12, 0),
(2, 'Máy Bay1', '1000000$', 12, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quote`
--

CREATE TABLE `quote` (
  `quote_id` int(11) NOT NULL,
  `quote_details` varchar(100) NOT NULL,
  `opportunities_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `quote`
--

INSERT INTO `quote` (`quote_id`, `quote_details`, `opportunities_id`, `product_id`) VALUES
(5, 's', NULL, 1),
(6, 'bay được', NULL, 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `lead_id` (`lead_id`);

--
-- Chỉ mục cho bảng `competior`
--
ALTER TABLE `competior`
  ADD PRIMARY KEY (`competior_id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Chỉ mục cho bảng `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Chỉ mục cho bảng `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `leader`
--
ALTER TABLE `leader`
  ADD PRIMARY KEY (`lead_id`),
  ADD KEY `contact_id` (`contact_id`);

--
-- Chỉ mục cho bảng `opportunities`
--
ALTER TABLE `opportunities`
  ADD PRIMARY KEY (`opportunities_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Chỉ mục cho bảng `order_mana`
--
ALTER TABLE `order_mana`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `quote`
--
ALTER TABLE `quote`
  ADD PRIMARY KEY (`quote_id`),
  ADD KEY `opportunities_id` (`opportunities_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `competior`
--
ALTER TABLE `competior`
  MODIFY `competior_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `leader`
--
ALTER TABLE `leader`
  MODIFY `lead_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `opportunities`
--
ALTER TABLE `opportunities`
  MODIFY `opportunities_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_mana`
--
ALTER TABLE `order_mana`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `quote`
--
ALTER TABLE `quote`
  MODIFY `quote_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`contact_id`),
  ADD CONSTRAINT `account_ibfk_2` FOREIGN KEY (`lead_id`) REFERENCES `leader` (`lead_id`);

--
-- Các ràng buộc cho bảng `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_mana` (`order_id`);

--
-- Các ràng buộc cho bảng `leader`
--
ALTER TABLE `leader`
  ADD CONSTRAINT `leader_ibfk_1` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`contact_id`);

--
-- Các ràng buộc cho bảng `opportunities`
--
ALTER TABLE `opportunities`
  ADD CONSTRAINT `opportunities_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

--
-- Các ràng buộc cho bảng `order_mana`
--
ALTER TABLE `order_mana`
  ADD CONSTRAINT `order_mana_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `order_mana_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

--
-- Các ràng buộc cho bảng `quote`
--
ALTER TABLE `quote`
  ADD CONSTRAINT `quote_ibfk_1` FOREIGN KEY (`opportunities_id`) REFERENCES `opportunities` (`opportunities_id`),
  ADD CONSTRAINT `quote_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
