-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 28, 2024 lúc 10:11 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ql_cafe`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ban`
--

CREATE TABLE `ban` (
  `MaBan` varchar(10) NOT NULL,
  `TenBan` varchar(500) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ban`
--

INSERT INTO `ban` (`MaBan`, `TenBan`, `TrangThai`, `created_at`) VALUES
('MB000', 'Mang Về', 0, NULL),
('MB001', 'Bàn 1', 0, NULL),
('MB002', 'Bàn 2', 0, NULL),
('MB003', 'Bàn 3', 0, NULL),
('MB004', 'Bàn 4', 0, NULL),
('MB005', 'Bàn 5', 0, NULL),
('MB006', 'Bàn 6', 0, NULL),
('MB007', 'Bàn 7', 0, NULL),
('MB008', 'Bàn 8', 0, NULL),
('MB009', 'Bàn 9', 0, NULL),
('MB010', 'Bàn 10', 0, NULL),
('MB011', 'Bàn 11', 0, NULL),
('MB012', 'Bàn 12', 0, NULL),
('MB013', 'Bàn 13', 0, NULL),
('MB014', 'Bàn 14', 0, NULL),
('MB015', 'Bàn 15', 0, NULL),
('MB016', 'Bàn 16', 0, NULL),
('MB017', 'Bàn 17', 0, NULL),
('MB018', 'Bàn 18', 0, NULL),
('MB019', 'Bàn 19', 0, NULL),
('MB020', 'Bàn 20', 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdh`
--

CREATE TABLE `chitietdh` (
  `MaDH` varchar(10) NOT NULL,
  `MaMon` varchar(10) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdh`
--

INSERT INTO `chitietdh` (`MaDH`, `MaMon`, `SoLuong`, `ThanhTien`) VALUES
('DH15', 'M11', 2, 30000),
('DH16', 'M11', 2, 30000),
('DH17', 'M11', 2, 30000),
('DH18', 'M12', 2, 30000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietgh`
--

CREATE TABLE `chitietgh` (
  `MaGH` varchar(10) NOT NULL,
  `MaMon` varchar(10) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietgh`
--

INSERT INTO `chitietgh` (`MaGH`, `MaMon`, `SoLuong`, `ThanhTien`) VALUES
('GH0002', 'M11', 3, 45000),
('GH0002', 'M12', 3, 45000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethd`
--

CREATE TABLE `chitiethd` (
  `MaHD` varchar(20) NOT NULL,
  `MaMon` varchar(10) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` int(11) NOT NULL,
  `GhiChu` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethd`
--

INSERT INTO `chitiethd` (`MaHD`, `MaMon`, `SoLuong`, `ThanhTien`, `GhiChu`) VALUES
('665030ac4d421', 'M51', 1, 25000, NULL),
('665030ac4d421', 'M52', 1, 20000, NULL),
('6650393739f8d', 'M51', 1, 25000, NULL),
('6650393739f8d', 'M52', 1, 20000, NULL),
('66503dedd005f', 'M51', 1, 25000, ''),
('66503dedd005f', 'M52', 1, 20000, 'ít đá'),
('66504029b8bfb', 'M51', 2, 50000, ''),
('66504029b8bfb', 'M52', 2, 40000, 'ít đ´nha'),
('665041fde3d3c', 'M51', 1, 25000, 'ít sữa '),
('665041fde3d3c', 'M52', 1, 20000, 'ít đá'),
('665492a14404f', 'M51', 1, 25000, 'ok nha'),
('665492a14404f', 'M52', 1, 20000, 'ít đá'),
('665492a14404f', 'M53', 1, 22000, 'ok'),
('66549d016540f', 'M51', 1, 25000, 'haha'),
('66549d5d2aec7', 'M52', 1, 20000, ''),
('66549d5d2aec7', 'M53', 1, 22000, ''),
('66549d62ee6ac', 'M51', 1, 25000, ''),
('66549d62ee6ac', 'M52', 1, 20000, ''),
('6654a2f3b3152', 'M51', 1, 25000, ''),
('6654a2f3b3152', 'M52', 1, 20000, ''),
('6654a4542e2ed', 'M51', 1, 25000, ''),
('6654a4542e2ed', 'M52', 1, 20000, ''),
('6654a4979cbbd', 'M52', 1, 20000, ''),
('6654a4979cbbd', 'M53', 1, 22000, ''),
('6654a54e3e633', 'M52', 1, 20000, 'ít đá'),
('6654a54e3e633', 'M53', 1, 22000, 'ít đường'),
('6654a6d6373a3', 'M51', 1, 25000, ''),
('6654a6d6373a3', 'M52', 1, 20000, ''),
('6654a71de8fae', 'M52', 1, 20000, ''),
('6654a71de8fae', 'M53', 1, 22000, ''),
('6654a935ea926', 'M51', 1, 25000, 'ít sữa'),
('6654a935ea926', 'M52', 1, 20000, 'ít đá'),
('6654ab4fa804d', 'M51', 1, 25000, 'ít đa'),
('6654ab4fa804d', 'M52', 1, 20000, 'ít sữa'),
('6654abfc87ad9', 'M54', 1, 30000, 'ít trứng'),
('6654abfc87ad9', 'M55', 1, 35000, 'ít đường'),
('6654aca93808e', 'M52', 1, 20000, ''),
('6654aca93808e', 'M53', 1, 22000, ''),
('6654af287f9d8', 'M51', 1, 25000, ''),
('6654af287f9d8', 'M52', 1, 20000, ''),
('6654b02e05859', 'M52', 1, 20000, 'ok'),
('6654b02e05859', 'M53', 1, 22000, 'ok'),
('6654b02e05859', 'M54', 1, 30000, 'ok'),
('6654b053702f2', 'M52', 1, 20000, ''),
('6654b063548b5', 'M51', 1, 25000, ''),
('6654b0fbb492a', 'M52', 1, 20000, 'ok'),
('6654b0fbb492a', 'M53', 1, 22000, 'ok'),
('6654b118d6048', 'M51', 1, 25000, '1'),
('6654b118d6048', 'M52', 1, 20000, '1'),
('6654b16ade551', 'M51', 1, 25000, '2'),
('6654b16ade551', 'M52', 1, 20000, '2'),
('6654b1d200c02', 'M51', 1, 25000, '1'),
('6654b1dd0b0de', 'M51', 1, 25000, '1'),
('6654b1dd0b0de', 'M52', 1, 20000, '1'),
('6654b244b64f5', 'M51', 1, 25000, 'ít sữa'),
('6654b244b64f5', 'M52', 1, 20000, 'ít đa'),
('665674fcc28f8', 'M51', 2, 50000, 'ít đá'),
('665674fcc28f8', 'M52', 2, 40000, 'ít đường'),
('665675ba8bc58', 'M52', 1, 20000, 'ít đá'),
('665697ac0c996', 'M51', 1, 25000, 'ít da'),
('665697ac0c996', 'M52', 1, 20000, 'ít đường'),
('6661d99b91790', 'M51', 4, 100000, ''),
('6661d99b91790', 'M53', 2, 44000, ''),
('6661da17dcdf6', 'M51', 3, 75000, ''),
('6661da17dcdf6', 'M53', 3, 66000, ''),
('66631f203f108', 'M51', 3, 75000, ''),
('66631f203fd59', 'M51', 3, 75000, ''),
('66631f20b9ddb', 'M51', 3, 75000, ''),
('66669eb6a978b', 'M51', 1, 25000, ''),
('66669eb6a978b', 'M52', 1, 20000, ''),
('66669eb6a978b', 'M53', 1, 22000, ''),
('6666a41eac192', 'M31', 1, 25000, ''),
('6666a41eac192', 'M41', 1, 20000, ''),
('6666a41eac192', 'M51', 1, 25000, ''),
('6666a86cdad7a', 'M51', 1, 25000, ''),
('6666a86cdad7a', 'M52', 1, 20000, ''),
('6666b553d5363', 'M51', 1, 25000, 'ít sữa'),
('6666b553d5363', 'M52', 1, 20000, 'ít đá'),
('6666bc67759c1', 'M31', 1, 25000, ''),
('6666bc67759c1', 'M41', 1, 20000, ''),
('6666bc67759c1', 'M51', 1, 25000, ''),
('666707f544d07', 'M53', 1, 22000, 'ít ngọt'),
('6667083e5dc6f', 'M51', 2, 50000, 'nhiều sữa'),
('666709919c64f', 'M32', 1, 20000, ''),
('666709919c64f', 'M33', 1, 22000, ''),
('666709919c64f', 'M52', 1, 20000, ''),
('666856e68a89b', 'M51', 1, 25000, ''),
('666856e68a89b', 'M52', 1, 20000, ''),
('666856e68a89b', 'M53', 1, 22000, ''),
('666857a9663d0', 'M51', 1, 25000, ''),
('666857a9663d0', 'M52', 1, 20000, ''),
('6668580d13ded', 'M51', 1, 25000, ''),
('6668580d13ded', 'M52', 1, 20000, ''),
('666962e643e1c', 'M31', 2, 50000, 'it sua'),
('666962e643e1c', 'M51', 2, 50000, 'it da'),
('666962e643e1c', 'M61', 1, 18000, ''),
('666a337060ab9', 'M31', 1, 25000, ''),
('666a337060ab9', 'M41', 1, 20000, ''),
('666a337060ab9', 'M51', 1, 25000, ''),
('666a48dcb1a76', 'M31', 1, 25000, ''),
('666a48dcb1a76', 'M51', 1, 25000, 'it da'),
('666a4915ce944', 'M51', 1, 25000, ''),
('666a4915ce944', 'M52', 1, 20000, ''),
('666a4cf697e2d', 'M31', 1, 25000, ''),
('666a4cf697e2d', 'M51', 2, 50000, 'isit da'),
('666a4d2f4cf11', 'M51', 1, 25000, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dathang`
--

CREATE TABLE `dathang` (
  `MaDH` varchar(10) NOT NULL,
  `MaKH` varchar(10) NOT NULL,
  `DiaChi` varchar(500) NOT NULL,
  `SDT` varchar(50) NOT NULL,
  `TongTien` double NOT NULL,
  `GhiChu` varchar(500) NOT NULL,
  `TrangThai` varchar(500) NOT NULL,
  `NgayDat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dathang`
--

INSERT INTO `dathang` (`MaDH`, `MaKH`, `DiaChi`, `SDT`, `TongTien`, `GhiChu`, `TrangThai`, `NgayDat`) VALUES
('DH1', 'KH11', '', '', 30000, 'Không có', 'Đã huỹ', '2024-06-08 00:02:16'),
('DH10', 'KH11', '', '', 88000, 'Không có', 'Chờ xác nhận', '2024-06-09 21:46:03'),
('DH11', 'KH11', '', '', 30000, 'Không có', 'Chờ xác nhận', '2024-06-10 00:36:46'),
('DH12', 'KH11', '', '', 45000, 'Không có', 'Chờ xác nhận', '2024-06-10 00:40:19'),
('DH13', 'KH11', '', '', 0, 'Không có', 'Chờ xác nhận', '2024-06-10 00:47:30'),
('DH14', 'KH11', '', '', 30000, 'Không có', 'Chờ xác nhận', '2024-06-10 00:48:26'),
('DH15', 'KH11', '', '', 30000, 'Không có', 'Chờ xác nhận', '2024-06-10 00:49:39'),
('DH16', 'KH11', '', '', 30000, 'Không có', 'Đã huỹ', '2024-06-10 11:53:27'),
('DH17', 'KH11', 'Tan Binh', '0355237107', 30000, 'Không có', 'Đã huỹ', '2024-06-10 12:12:16'),
('DH18', 'KH11', '30 Le Trong Tan, Tan Phu, TpHCM', '0355237107', 90000, 'Không có', 'Đã xác nhận', '2024-06-10 12:29:14'),
('DH2', 'KH11', '', '', 30000, 'Không có', 'Đã xác nhận', '2024-06-08 00:04:00'),
('DH3', 'KH11', '', '', 75000, 'Không có', 'Đã xác nhận', '2024-06-08 21:41:12'),
('DH4', 'KH11', '', '', 30000, 'Không có', 'Đã huỹ', '2024-06-08 22:18:25'),
('DH5', 'KH11', '', '', 45000, 'Không có', 'Đã xác nhận', '2024-06-09 07:40:32'),
('DH6', 'KH11', '', '', 45000, 'Không có', 'Đã huỹ', '2024-06-09 07:42:11'),
('DH7', 'KH11', '', '', 45000, 'Không có', 'Đã huỹ', '2024-06-09 07:42:16'),
('DH8', 'KH0012', '', '', 60000, 'Không có', 'Chờ xác nhận', '2024-06-09 10:33:52'),
('DH9', 'KH0012', '', '', 60000, 'Không có', 'Chờ xác nhận', '2024-06-09 11:09:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `MaGH` varchar(10) NOT NULL,
  `MaKH` varchar(10) NOT NULL,
  `TongTien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`MaGH`, `MaKH`, `TongTien`) VALUES
('GH0002', 'KH0012', 0),
('GH1', 'KH11', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` varchar(20) NOT NULL,
  `MaNV` varchar(10) DEFAULT NULL,
  `MaBan` varchar(10) NOT NULL,
  `TongTien` int(11) NOT NULL,
  `GhiChu` varchar(500) DEFAULT NULL,
  `NgayThanhToan` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaNV`, `MaBan`, `TongTien`, `GhiChu`, `NgayThanhToan`) VALUES
('665030ac4d421', 'NV001', 'MB002', 45000, 'ít sữa nha', '2024-05-24 13:16:12'),
('6650393739f8d', 'NV001', 'MB003', 45000, '', '2024-05-24 13:52:39'),
('66503dedd005f', 'NV001', 'MB003', 45000, '', '2024-05-24 14:12:45'),
('66504029b8bfb', 'NV001', 'MB001', 90000, '', '2024-05-24 14:22:17'),
('665041fde3d3c', 'NV001', 'MB003', 45000, '', '2024-05-24 14:30:05'),
('665492a14404f', 'NV0011', 'MB004', 67000, '', '2024-05-27 21:03:13'),
('66549d016540f', 'NV0011', 'MB000', 25000, '', '2024-05-27 21:47:29'),
('66549d5d2aec7', 'NV0011', 'MB000', 42000, '', '2024-05-27 21:49:01'),
('66549d62ee6ac', NULL, 'MB001', 45000, '', '2024-05-27 21:49:06'),
('6654a2f3b3152', 'NV0011', 'MB001', 45000, '', '2024-05-27 22:12:51'),
('6654a4542e2ed', 'NV0011', 'MB001', 45000, '', '2024-05-27 22:18:44'),
('6654a4979cbbd', 'NV0011', 'MB001', 42000, '', '2024-05-27 22:19:51'),
('6654a54e3e633', 'NV0011', 'MB002', 42000, '', '2024-05-27 22:22:54'),
('6654a6d6373a3', 'NV0011', 'MB001', 45000, '', '2024-05-27 22:29:26'),
('6654a71de8fae', 'NV0011', 'MB001', 42000, '', '2024-05-27 22:30:37'),
('6654a935ea926', 'NV0011', 'MB001', 45000, '', '2024-05-27 22:39:33'),
('6654ab4fa804d', 'NV0011', 'MB001', 45000, '', '2024-05-27 22:48:31'),
('6654abfc87ad9', 'NV0011', 'MB005', 65000, '', '2024-05-27 22:51:24'),
('6654aca93808e', NULL, 'MB001', 42000, '', '2024-05-27 22:54:17'),
('6654af287f9d8', 'NV0011', 'MB001', 45000, '', '2024-05-27 23:04:56'),
('6654b02e05859', 'NV0011', 'MB001', 72000, '', '2024-05-27 23:09:18'),
('6654b053702f2', 'NV0011', 'MB001', 20000, '', '2024-05-27 23:09:55'),
('6654b063548b5', NULL, 'MB000', 25000, '', '2024-05-27 23:10:11'),
('6654b0fbb492a', 'NV0011', 'MB001', 42000, '', '2024-05-27 23:12:43'),
('6654b118d6048', 'NV0011', 'MB002', 45000, '', '2024-05-27 23:13:12'),
('6654b16ade551', 'NV0011', 'MB000', 45000, '', '2024-05-27 23:14:34'),
('6654b1d200c02', 'NV0011', 'MB001', 25000, '', '2024-05-27 23:16:18'),
('6654b1dd0b0de', 'NV0011', 'MB000', 45000, '', '2024-05-27 23:16:29'),
('6654b244b64f5', 'NV0011', 'MB001', 45000, '', '2024-05-27 23:18:12'),
('665674fcc28f8', 'NV0011', 'MB001', 90000, '', '2024-05-29 07:21:16'),
('665675ba8bc58', 'NV0011', 'MB001', 20000, '', '2024-05-29 07:24:26'),
('665697ac0c996', 'NV0011', 'MB001', 45000, '', '2024-06-08 09:49:16'),
('6661d99b91790', 'NV0011', 'MB001', 144000, '', '2024-06-06 22:45:31'),
('6661da17dcdf6', 'NV0011', 'MB001', 141000, '', '2024-06-06 22:47:35'),
('66631f203f108', 'NV0011', 'MB002', 75000, '', '2024-06-07 21:54:24'),
('66631f203fd59', 'NV0011', 'MB002', 75000, '', '2024-06-07 21:54:24'),
('66631f20b9ddb', 'NV0011', 'MB002', 75000, '', '2024-06-07 21:54:24'),
('66669eb6a978b', 'NV0011', 'MB001', 67000, '', '2024-06-10 13:35:34'),
('6666a41eac192', 'NV0014', 'MB002', 70000, '', '2024-06-10 13:58:38'),
('6666a86cdad7a', 'NV0011', 'MB001', 45000, '', '2024-06-10 14:17:00'),
('6666b553d5363', 'NV0011', 'MB000', 45000, '', '2024-06-10 15:12:03'),
('6666bc67759c1', 'NV0014', 'MB001', 70000, '', '2024-06-10 15:42:15'),
('666707f544d07', 'NV0011', 'MB003', 22000, '', '2024-06-10 21:04:37'),
('6667083e5dc6f', 'NV0011', 'MB004', 50000, '', '2024-06-10 21:05:50'),
('666709919c64f', 'NV0011', 'MB000', 62000, '', '2024-06-10 21:11:29'),
('666856e68a89b', 'NV0011', 'MB005', 67000, '', '2024-06-11 20:53:42'),
('666857a9663d0', 'NV0011', 'MB006', 45000, '', '2024-06-11 20:56:57'),
('6668580d13ded', 'NV0011', 'MB000', 45000, '', '2024-06-11 20:58:37'),
('666962e643e1c', 'NV0018', 'MB001', 118000, '', '2024-06-12 15:57:10'),
('666a337060ab9', 'NV0011', 'MB001', 70000, '', '2024-06-13 06:46:56'),
('666a48dcb1a76', 'NV0011', 'MB001', 50000, '', '2024-06-13 08:18:20'),
('666a4915ce944', 'NV0011', 'MB001', 45000, '', '2024-06-13 08:19:17'),
('666a4cf697e2d', 'NV0011', 'MB001', 75000, '', '2024-06-13 08:35:50'),
('666a4d2f4cf11', 'NV0011', 'MB000', 25000, '', '2024-06-13 08:36:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` varchar(10) NOT NULL,
  `TenKH` varchar(500) NOT NULL,
  `SDT` varchar(12) NOT NULL,
  `Email` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `SDT`, `Email`) VALUES
('KH0012', 'Điền Nguyễn Phương', '', 'diennguyenphuong2003@gmail.com'),
('KH01', 'Nguyễn Văn A', '0912345678', 'nguyenvanA@example.com'),
('KH02', 'Trần Thị B', '0987654321', 'tranthiB@example.com'),
('KH03', 'Lê Văn C', '0123456789', 'levanC@example.com'),
('KH04', 'Phạm Thị D', '0901234567', 'phamthiD@example.com'),
('KH05', 'Vũ Văn E', '0987654321', 'vuvanE@example.com'),
('KH06', 'Đặng Thị F', '0123456789', 'dangthiF@example.com'),
('KH07', 'Bùi Văn G', '0901234567', 'buivanG@example.com'),
('KH08', 'Hoàng Thị H', '0912345678', 'hoangthiH@example.com'),
('KH09', 'Đỗ Văn I', '0987654321', 'dovanI@example.com'),
('KH10', 'Ngô Thị J', '0123456789', 'ngothiJ@example.com'),
('KH11', 'nguyen phuong dien', '0355237107', 'diennguyen@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaimon`
--

CREATE TABLE `loaimon` (
  `MaLoai` varchar(10) NOT NULL,
  `TenLoai` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaimon`
--

INSERT INTO `loaimon` (`MaLoai`, `TenLoai`) VALUES
('Loai01', 'Nước ngọt'),
('Loai02', 'Bánh'),
('Loai03', 'Sinh tố'),
('Loai04', 'Nước ép'),
('Loai05', 'Cafe'),
('Loai06', 'Trà');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mon`
--

CREATE TABLE `mon` (
  `MaMon` varchar(10) NOT NULL,
  `MaLoai` varchar(10) NOT NULL,
  `TenMon` varchar(500) NOT NULL,
  `HinhAnh` varchar(500) NOT NULL,
  `GiaBan` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mon`
--

INSERT INTO `mon` (`MaMon`, `MaLoai`, `TenMon`, `HinhAnh`, `GiaBan`, `SoLuong`) VALUES
('M11', 'Loai01', 'Nước ngọt vị cam', 'nn1', 15000, 0),
('M12', 'Loai01', 'Nước ngọt vị chanh', 'nn2', 15000, 0),
('M13', 'Loai01', 'Nước ngọt vị dâu', 'nn3\r\n', 15000, 0),
('M14', 'Loai01', 'Nước ngọt vị xoài', 'nn4', 15000, 0),
('M15', 'Loai01', 'Nước ngọt vị việt quất', 'nn5', 15000, 0),
('M16', 'Loai01', 'Nước ngọt vị táo', 'nn6', 15000, 0),
('M17', 'Loai01', 'Nước ngọt vị dưa hấu', 'nn7', 15000, 0),
('M18', 'Loai01', 'Nước ngọt vị nho', 'nn8', 15000, 0),
('M19', 'Loai01', 'Nước ngọt vị trà xanh', 'nn9', 15000, 0),
('M20', 'Loai01', 'Nước ngọt vị đào', 'nn10\r\n', 15000, 0),
('M21', 'Loai02', 'Bánh kem', 'b1', 30000, 0),
('M22', 'Loai02', 'Bánh bông lan', 'b2', 25000, 0),
('M23', 'Loai02', 'Bánh quy', 'b3', 15000, 0),
('M24', 'Loai02', 'Bánh flan', 'b4', 20000, 0),
('M25', 'Loai02', 'Bánh su kem', 'b5', 25000, 0),
('M26', 'Loai02', 'Bánh tart', 'b6', 20000, 0),
('M27', 'Loai02', 'Bánh chuối', 'b7', 18000, 0),
('M28', 'Loai02', 'Bánh mì bơ', 'b8', 15000, 0),
('M29', 'Loai02', 'Bánh mì kẹp', 'b9\r\n', 20000, 0),
('M30', 'Loai02', 'Bánh bao', 'b10', 25000, 0),
('M31', 'Loai03', 'Sinh tố bơ', 'st1', 25000, 0),
('M32', 'Loai03', 'Sinh tố chuối', 'st2', 20000, 0),
('M33', 'Loai03', 'Sinh tố dưa hấu', 'st3', 22000, 0),
('M34', 'Loai03', 'Sinh tố xoài', 'st4', 25000, 0),
('M35', 'Loai03', 'Sinh tố dâu tây', 'st5', 30000, 0),
('M36', 'Loai03', 'Sinh tố việt quất', 'st6', 28000, 0),
('M37', 'Loai03', 'Sinh tố cam', 'st7', 25000, 0),
('M38', 'Loai03', 'Sinh tố táo', 'st8', 22000, 0),
('M39', 'Loai03', 'Sinh tố mãng cầu', 'st9', 25000, 0),
('M40', 'Loai03', 'Sinh tố sầu riêng', 'st10', 35000, 0),
('M41', 'Loai04', 'Nước ép bưởi', 'ne1', 20000, 0),
('M42', 'Loai04', 'Nước ép cam', 'ne2', 22000, 0),
('M43', 'Loai04', 'Nước ép táo', 'ne3', 18000, 0),
('M44', 'Loai04', 'Nước ép dưa hấu', 'ne4', 15000, 0),
('M45', 'Loai04', 'Nước ép cà rốt', 'ne5', 18000, 0),
('M46', 'Loai04', 'Nước ép củ dền', 'ne6', 20000, 0),
('M47', 'Loai04', 'Nước ép cà chua', 'ne7', 16000, 0),
('M48', 'Loai04', 'Nước ép ổi', 'ne8', 18000, 0),
('M49', 'Loai04', 'Nước ép đu đủ', 'ne9', 20000, 0),
('M50', 'Loai04', 'Nước ép nho', 'ne10', 22000, 0),
('M51', 'Loai05', 'Cafe sữa đá', 'cf1', 25000, 0),
('M52', 'Loai05', 'Cafe đen đá', 'cf2', 20000, 0),
('M53', 'Loai05', 'Cafe bạc xỉu', 'cf3', 22000, 0),
('M54', 'Loai05', 'Cafe trứng', 'cf4', 30000, 0),
('M55', 'Loai05', 'Cappuccino', 'cf5', 35000, 0),
('M56', 'Loai05', 'Latte', 'cf6', 30000, 0),
('M57', 'Loai05', 'Espresso', 'cf7', 25000, 0),
('M58', 'Loai05', 'Americano', 'cf8', 20000, 0),
('M59', 'Loai05', 'Mocha', 'cf9', 35000, 0),
('M60', 'Loai05', 'Cafe đá xay', 'cf10', 28000, 0),
('M61', 'Loai06', 'Trà đào', 't1', 18000, 0),
('M62', 'Loai06', 'Trà sữa', 't2', 25000, 0),
('M63', 'Loai06', 'Trà chanh', 't3', 15000, 0),
('M64', 'Loai06', 'Trà tắc', 't4', 16000, 0),
('M65', 'Loai06', 'Trà gừng', 't5', 18000, 0),
('M66', 'Loai06', 'Trà hoa cúc', 't6', 15000, 0),
('M67', 'Loai06', 'Trà sâm', 't7', 20000, 0),
('M68', 'Loai06', 'Trà xanh', 't8', 15000, 0),
('M69', 'Loai06', 'Trà Ô long', 't9', 20000, 0),
('M70', 'Loai06', 'Trà hoa hồng', 't10', 22000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` varchar(10) NOT NULL,
  `TenNV` varchar(500) NOT NULL,
  `SDT` varchar(12) DEFAULT NULL,
  `DiaChi` varchar(500) DEFAULT NULL,
  `Gmail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `TenNV`, `SDT`, `DiaChi`, `Gmail`) VALUES
('NV001', 'Trần Ngọc Thanh', '0123456789', '123 Đường ABC, TP.HCM', 'thanh@07gmail.com'),
('NV0011', 'Thanh', NULL, NULL, 'Thanh@gmail.com'),
('NV0012', 'ThanhTran', NULL, NULL, 'Thanh@.com'),
('NV0014', 'Tran Thanh', NULL, NULL, 'thanhtran.070103@gmail.com'),
('NV0015', 'ThanhThanh', NULL, NULL, 'T@gmail.com'),
('NV0016', 'Thanh', NULL, NULL, 'Thanh@gmail.com'),
('NV0017', 'Thanh', NULL, NULL, 'Thanh123@gmail.com'),
('NV0018', 'Thanh', NULL, NULL, 'ThanhTran@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoankh`
--

CREATE TABLE `taikhoankh` (
  `TaiKhoan` varchar(255) NOT NULL,
  `MaKH` varchar(10) NOT NULL,
  `MatKhau` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoankh`
--

INSERT INTO `taikhoankh` (`TaiKhoan`, `MaKH`, `MatKhau`) VALUES
('diennguyen@gmail.com', 'KH11', '123'),
('diennguyenphuong2003@gmail.com', 'KH0012', '$2y$10$IJTJvKyzv1PgOn2k2RPnsOltJbI1vnMRghKSnPEq/Xslpvuidod7G'),
('kh10', 'KH10', 'password166');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoannv`
--

CREATE TABLE `taikhoannv` (
  `TaiKhoan` varchar(255) NOT NULL,
  `MaNV` varchar(10) NOT NULL,
  `MatKhau` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoannv`
--

INSERT INTO `taikhoannv` (`TaiKhoan`, `MaNV`, `MatKhau`) VALUES
('Thanh@.com', 'NV0012', '$2y$10$sD7fdMLxKBTjDRZ5CMiHceZvj5EYWh.ekystEQCd6lJ97Y49ZO2se'),
('Thanh@gmail.com', 'NV0011', '$2y$10$6mT1icl9KSlfEypfkr..xeDGOKN9XZ.tDFAq2tD3TTwXXKgt2pQ96'),
('Thanh123@gmail.com', 'NV0017', '$2y$10$PZuUdLT04b9cl9QhfjEMper8/ZRiu1ut5EyL8j2GXa01TW12w/xd6'),
('thanhtran.070103@gmail.com', 'NV0014', '$2y$10$Odle2kDOQRl6JXSwKBfT6un1TVSkh6KOxFn0lr1MTiZ418ZdVCdW.'),
('ThanhTran@gmail.com', 'NV0018', '$2y$10$OHHvuwkZuZmrrQE22L66huDh3.kA7kVyjGAzWCZvm03G0gOR45DzS');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `ban`
--
ALTER TABLE `ban`
  ADD PRIMARY KEY (`MaBan`);

--
-- Chỉ mục cho bảng `chitietdh`
--
ALTER TABLE `chitietdh`
  ADD PRIMARY KEY (`MaDH`,`MaMon`),
  ADD KEY `Fr_ChiTietDatHang_Mon` (`MaMon`);

--
-- Chỉ mục cho bảng `chitietgh`
--
ALTER TABLE `chitietgh`
  ADD PRIMARY KEY (`MaGH`,`MaMon`),
  ADD KEY `Fr_ChiTietGioHang_Mon` (`MaMon`);

--
-- Chỉ mục cho bảng `chitiethd`
--
ALTER TABLE `chitiethd`
  ADD PRIMARY KEY (`MaHD`,`MaMon`),
  ADD KEY `Fr_ChiTietHD_Mon` (`MaMon`);

--
-- Chỉ mục cho bảng `dathang`
--
ALTER TABLE `dathang`
  ADD PRIMARY KEY (`MaDH`),
  ADD KEY `Fr_DatHang_KhachHang` (`MaKH`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`MaGH`),
  ADD KEY `Fr_GioHang_KhachHang` (`MaKH`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `Fr_HoaDon_NhanVien` (`MaNV`),
  ADD KEY `Fr_HoaDon_Ban` (`MaBan`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Chỉ mục cho bảng `loaimon`
--
ALTER TABLE `loaimon`
  ADD PRIMARY KEY (`MaLoai`);

--
-- Chỉ mục cho bảng `mon`
--
ALTER TABLE `mon`
  ADD PRIMARY KEY (`MaMon`),
  ADD KEY `Fr_Mon_LoaiMon` (`MaLoai`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNV`);

--
-- Chỉ mục cho bảng `taikhoankh`
--
ALTER TABLE `taikhoankh`
  ADD PRIMARY KEY (`TaiKhoan`),
  ADD KEY `Fr_TaiKhoanKH_KhachHang` (`MaKH`);

--
-- Chỉ mục cho bảng `taikhoannv`
--
ALTER TABLE `taikhoannv`
  ADD PRIMARY KEY (`TaiKhoan`),
  ADD KEY `Fr_TaiKhoanNV_NhanVien` (`MaNV`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietdh`
--
ALTER TABLE `chitietdh`
  ADD CONSTRAINT `Fr_ChiTietDatHang_DatHang` FOREIGN KEY (`MaDH`) REFERENCES `dathang` (`MaDH`),
  ADD CONSTRAINT `Fr_ChiTietDatHang_Mon` FOREIGN KEY (`MaMon`) REFERENCES `mon` (`MaMon`);

--
-- Các ràng buộc cho bảng `chitietgh`
--
ALTER TABLE `chitietgh`
  ADD CONSTRAINT `Fr_ChiTietGioHang_GioHang` FOREIGN KEY (`MaGH`) REFERENCES `giohang` (`MaGH`),
  ADD CONSTRAINT `Fr_ChiTietGioHang_Mon` FOREIGN KEY (`MaMon`) REFERENCES `mon` (`MaMon`);

--
-- Các ràng buộc cho bảng `chitiethd`
--
ALTER TABLE `chitiethd`
  ADD CONSTRAINT `Fr_ChiTietHD_HoaDon` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`),
  ADD CONSTRAINT `Fr_ChiTietHD_Mon` FOREIGN KEY (`MaMon`) REFERENCES `mon` (`MaMon`);

--
-- Các ràng buộc cho bảng `dathang`
--
ALTER TABLE `dathang`
  ADD CONSTRAINT `Fr_DatHang_KhachHang` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`);

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `Fr_GioHang_KhachHang` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `Fr_HoaDon_Ban` FOREIGN KEY (`MaBan`) REFERENCES `ban` (`MaBan`),
  ADD CONSTRAINT `Fr_HoaDon_NhanVien` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);

--
-- Các ràng buộc cho bảng `mon`
--
ALTER TABLE `mon`
  ADD CONSTRAINT `Fr_Mon_LoaiMon` FOREIGN KEY (`MaLoai`) REFERENCES `loaimon` (`MaLoai`);

--
-- Các ràng buộc cho bảng `taikhoankh`
--
ALTER TABLE `taikhoankh`
  ADD CONSTRAINT `Fr_TaiKhoanKH_KhachHang` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`);

--
-- Các ràng buộc cho bảng `taikhoannv`
--
ALTER TABLE `taikhoannv`
  ADD CONSTRAINT `Fr_TaiKhoanNV_NhanVien` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
