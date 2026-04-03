-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 03, 2026 lúc 03:42 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quan_ly_sinh_vien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `id` int(11) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `quantity` smallint(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lop`
--

INSERT INTO `lop` (`id`, `ten`, `quantity`, `created_at`) VALUES
(1, '11A4', 20, '2026-04-03 01:19:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mon_hoc`
--

CREATE TABLE `mon_hoc` (
  `id` int(11) NOT NULL,
  `ten_mon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `mon_hoc`
--

INSERT INTO `mon_hoc` (`id`, `ten_mon`) VALUES
(1, 'Toán');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinh_vien`
--

CREATE TABLE `sinh_vien` (
  `id` int(11) NOT NULL,
  `ho_ten` varchar(255) NOT NULL,
  `ngay_sinh` date NOT NULL,
  `lop_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `email` varchar(100) NOT NULL,
  `mon_hoc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sinh_vien`
--

INSERT INTO `sinh_vien` (`id`, `ho_ten`, `ngay_sinh`, `lop_id`, `created_at`, `email`, `mon_hoc_id`) VALUES
(21, 'Nguyen Van An', '2009-01-15', 1, '2026-04-03 01:19:08', 'an@gmail.com', 1),
(22, 'Tran Thi Bich', '2009-02-20', 1, '2026-04-03 01:19:08', 'bich@gmail.com', 1),
(23, 'Le Van Cuong', '2009-03-10', 1, '2026-04-03 01:19:08', 'cuong@gmail.com', 1),
(24, 'Pham Minh Duc', '2009-04-05', 1, '2026-04-03 01:19:08', 'duc@gmail.com', 1),
(25, 'Hoang Thu Thao', '2009-05-12', 1, '2026-04-03 01:19:08', 'thao@gmail.com', 1),
(26, 'Do Anh Tuan', '2009-06-25', 1, '2026-04-03 01:19:08', 'tuan@gmail.com', 1),
(27, 'Vu Thanh Hang', '2009-07-18', 1, '2026-04-03 01:19:08', 'hang@gmail.com', 1),
(28, 'Bui Duy Nam', '2009-08-30', 1, '2026-04-03 01:19:08', 'nam@gmail.com', 1),
(29, 'Ly My Linh', '2009-09-14', 1, '2026-04-03 01:19:08', 'linh@gmail.com', 1),
(30, 'Dang Quoc Bao', '2009-10-02', 1, '2026-04-03 01:19:08', 'bao@gmail.com', 1),
(31, 'Ngo Thuy Chi', '2009-11-22', 1, '2026-04-03 01:19:08', 'chi@gmail.com', 1),
(32, 'Phan Van Hai', '2009-12-05', 1, '2026-04-03 01:19:08', 'hai@gmail.com', 1),
(33, 'Dinh Tien Dung', '2009-01-28', 1, '2026-04-03 01:19:08', 'dung@gmail.com', 1),
(34, 'Trinh Tuyet Mai', '2009-02-14', 1, '2026-04-03 01:19:08', 'mai@gmail.com', 1),
(35, 'Luong Gia Huy', '2009-03-21', 1, '2026-04-03 01:19:08', 'huy@gmail.com', 1),
(36, 'Quach Thi Kieu', '2009-04-19', 1, '2026-04-03 01:19:08', 'kieu@gmail.com', 1),
(37, 'Phan Thanh Tung', '2009-05-07', 1, '2026-04-03 01:19:08', 'tung@gmail.com', 1),
(38, 'Truong Ngoc Anh', '2009-06-11', 1, '2026-04-03 01:19:08', 'anh@gmail.com', 1),
(39, 'Lam Van Toan', '2009-07-29', 1, '2026-04-03 01:19:08', 'toan@gmail.com', 1),
(40, 'Ha Minh Khoa', '2009-08-23', 1, '2026-04-03 01:19:08', 'khoa@gmail.com', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mon_hoc`
--
ALTER TABLE `mon_hoc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sinh_vien`
--
ALTER TABLE `sinh_vien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_final_lop` (`lop_id`),
  ADD KEY `fk_final_mon` (`mon_hoc_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `lop`
--
ALTER TABLE `lop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sinh_vien`
--
ALTER TABLE `sinh_vien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `sinh_vien`
--
ALTER TABLE `sinh_vien`
  ADD CONSTRAINT `fk_final_lop` FOREIGN KEY (`lop_id`) REFERENCES `lop` (`id`),
  ADD CONSTRAINT `fk_final_mon` FOREIGN KEY (`mon_hoc_id`) REFERENCES `mon_hoc` (`id`),
  ADD CONSTRAINT `fk_sinhvien_lop` FOREIGN KEY (`lop_id`) REFERENCES `lop` (`id`),
  ADD CONSTRAINT `fk_sv_lop` FOREIGN KEY (`lop_id`) REFERENCES `lop` (`id`),
  ADD CONSTRAINT `fk_sv_mon` FOREIGN KEY (`mon_hoc_id`) REFERENCES `mon_hoc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
