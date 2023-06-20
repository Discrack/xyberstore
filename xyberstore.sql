-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 20, 2023 at 01:39 AM
-- Server version: 8.0.27
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xyberstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE IF NOT EXISTS `tb_admin` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Administrator', 'admin', '25d55ad283aa400af464c76d713c07ad', '081234567890', 'xyberstore@admin.com', 'Jln. Raya Cilegon Bogor - Kasemen, No. 101, Kec. Keramatwatu, Kab. Purwoerjo, Beijing, China, Ukraina, America');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

DROP TABLE IF EXISTS `tb_category`;
CREATE TABLE IF NOT EXISTS `tb_category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(25) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(4, 'Laptop'),
(6, 'Processor'),
(7, 'Drive Storage'),
(8, 'GPU'),
(9, 'RAM'),
(10, 'Monitor'),
(11, 'Accessory'),
(12, 'Mouse'),
(13, 'Keyboard');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

DROP TABLE IF EXISTS `tb_product`;
CREATE TABLE IF NOT EXISTS `tb_product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `data_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `data_created`) VALUES
(21, 4, 'Asus Vivobook A416JAO', 5812000, '<p><strong>Asus Vivobook A416JAO</strong></p>\r\n\r\n<p>Spesifikasi :</p>\r\n\r\n<p>&bull; Processor : Intel&reg; Core&trade; i3-1005G1 Processor 1.2 GHz (4M</p>\r\n\r\n<p>&bull; Graphics : Intel&reg; UHD Graphics</p>\r\n\r\n<p>&bull; Memory : 8GB / Upgraded 12GB DDR4 3200Mhz</p>\r\n\r\n<p>&bull; Storage : 256GB M.2 NVMe&trade; PCIe&reg; 3.0 SSD</p>\r\n\r\n<p>&bull; Display : 14.0-inch, FHD (1920 x 1080) 16:9 aspect ratio, LED Backlit, 60Hz refresh rate, 45% NTSC color gamut, Anti-glare display, Non-touch screen, (Screen-to-body ratio)82%</p>\r\n\r\n<p>&bull; OS : Windows 11 Home</p>\r\n\r\n<p>&bull; Ports :</p>\r\n\r\n<p>1x HDMI 1.4</p>\r\n\r\n<p>1x 3.5mm Combo Audio Jack</p>\r\n\r\n<p>1x DC-in</p>\r\n\r\n<p>1x USB 3.2 Gen 1 Type-A</p>\r\n\r\n<p>1x USB 3.2 Gen 1 Type-C</p>\r\n\r\n<p>2x USB 2.0 Type-A</p>\r\n\r\n<p>&bull; Include : Office Home and Student 2021</p>\r\n\r\n<p>&bull; Bonus : ASUS Backpack</p>\r\n\r\n<p>&bull; Port : Connectivity : 1x HDMI 1.4, 1x Headphone/Headset, 1x USB 3.2 Gen 1 Type-A, 1x USB 3.2 Gen 1 Type-C, 2x USB 2.0 Type-A</p>\r\n\r\n<p>&bull; Warna : Grey &amp; Silver</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kelengkapan :</p>\r\n\r\n<p>- Unit Laptop</p>\r\n\r\n<p>- Charger</p>\r\n\r\n<p>- Kartu Garansi / Buku Manual</p>\r\n\r\n<p>- Box / Dus Laptop</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>GARANSI 2 TAHUN ASUS INDONESIA</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>KETERANGAN BUNDLING :</p>\r\n\r\n<p>- Tanpa Antigores : 1 set Laptop BNIB</p>\r\n\r\n<p>- +ANTIGORES : Unit + Screen Protector + Body Protector + Cleaning kit (FREE APP STANDARD)</p>\r\n\r\n<p>- ANTIGORES+SLEEVE : Unit + Screen Protector + Body Protector + Cleaning Kit + Sleevecase Carbon (FREE APP STANDARD)</p>\r\n', 'produk1687147366.jpeg', 1, '2020-05-19 01:58:38'),
(22, 4, 'ASUS Vivoboook L510MA-WB04', 3629350, '<p>Nama Item : Asus L510MA-WB04</p>\r\n\r\n<p>Processor : Intel&reg; Celeron&reg; CPU N4020 @ 1.10 GHz ( 2C,2T)</p>\r\n\r\n<p>RAM : 1X4096MB DDR4 (4GB DDR4-2400 / Pc4 19200) ON BOARD</p>\r\n\r\n<p>Harddisk : 128 GB EMMC + 1 Slot M.2 NMVE</p>\r\n\r\n<p>Kamera : VGA WEB Camera VGA : Intel&reg; UHD Graphics 600, Dedicated 128 MB, Shared 1959 MB, Up to 2087 MB</p>\r\n\r\n<p>Baterai : 3 Cell LI-ion 3550 mAh</p>\r\n\r\n<p>Fitur : Bluetooth, WiFi, Micro SD Reader, 1 port USB 2.0, 1 port USB 3.0, 1 Port USB 3.1 Type C, HDMI, Backlit Keyboard</p>\r\n\r\n<p>Layar : 15.6&quot; Inch FHD Anti-glare display (1920X1080)</p>\r\n\r\n<p>Ukuran Barang : 36 x 23.5 x 1.9 cm</p>\r\n\r\n<p>Ukuran Kemasan : 46 x 29 x 7 cm</p>\r\n\r\n<p>Warna : Black</p>\r\n\r\n<p>Operation System (OS) : Windows 10 Home In S mode 64-Bit</p>\r\n\r\n<p>Garansi : 1 Tahun = KELENGKAPAN * 1 UNIT + DUS LENGKAP * 1 CHARGER + ADAPTOR * 1 MANUAL BOOK * 1 BUKU GARANGSI</p>\r\n', 'produk1687147288.jpeg', 1, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
