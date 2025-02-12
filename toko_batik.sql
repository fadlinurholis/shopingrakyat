-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2023 at 07:50 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_batik`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `foto` text NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `no_whatsapp` varchar(14) NOT NULL,
  `password` text NOT NULL,
  `waktu` varchar(100) NOT NULL,
  `tipe_daftar` varchar(50) NOT NULL,
  `tipe_akun` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id`, `foto`, `nama_lengkap`, `email`, `no_whatsapp`, `password`, `waktu`, `tipe_daftar`, `tipe_akun`) VALUES
(14, '1658863015.jpg', 'User Biasa', 'user@gmail.com', '085381259307', '$2y$10$uDy0.tHRpB0alUAAwL.1XOT/f3Y6O4SfIZ28rnhyyRlkEgacqimPu', '2021-06-18 16:20:48', '', ''),
(15, '1631188751.png', 'Admin Dipay Store', 'admindipaystore@gmail.com', '081287702224', '$2y$10$ivlVrsDRBVq7ZDlsBcLj7eJ2B8RlEY9cVNnNk.H0kkoQxP6b6PSBu', '2021-07-11 01:18:30', '', 'Admin'),
(18, '1661992073.JPG', 'fajar', 'fajar@gmail.com', '081287702224', '$2y$10$VJjzT1oebB.nSnLC2HxKyuPAM1b4IOYNwLG1okgHtOPDPQvQD9r.K', '2022-07-26 21:57:28', '', ''),
(19, 'user.png', 'devi astuti', 'devi@gmail.com', '08123243242', '$2y$10$RMcBYvy5zJCjKjmO1G24F.gT6GI.qM9GpwIczgbp8qFziU5lKsdry', '2022-07-26 23:22:33', '', ''),
(20, '1659737354.png', 'dian', 'dian@gmail.com', '081287702221', '$2y$10$bVyv8YixdSMbN70OO9YSkuVHMgavPoKhjIFqkVucudqb1hp971vke', '2022-08-06 00:07:35', '', 'Admin'),
(21, 'user.png', 'jaka', 'jaka@gmail.com', '021444777722', '$2y$10$ANkkTWO1ICFAKGtfyMSbEOnVWgTqiQqviyd1SiMPmGM/iS9xHRdUm', '2022-08-08 13:32:57', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `banner_promo`
--

CREATE TABLE `banner_promo` (
  `idbanner` int(11) NOT NULL,
  `image` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner_promo`
--

INSERT INTO `banner_promo` (`idbanner`, `image`, `status`) VALUES
(26, '7b709348b8b818764bcf16656a8294f1.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `flashsale`
--

CREATE TABLE `flashsale` (
  `id_fs` int(11) NOT NULL,
  `waktu_berakhir` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flashsale`
--

INSERT INTO `flashsale` (`id_fs`, `waktu_berakhir`) VALUES
(1, '1662984330');

-- --------------------------------------------------------

--
-- Table structure for table `iklan`
--

CREATE TABLE `iklan` (
  `id` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `gambar` longtext NOT NULL,
  `judul` varchar(200) NOT NULL,
  `harga` int(10) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `berat` int(11) NOT NULL,
  `warna` text NOT NULL,
  `ukuran` text NOT NULL,
  `stok` int(5) NOT NULL,
  `terjual` int(5) NOT NULL,
  `diskon` int(3) NOT NULL,
  `tipe_iklan` varchar(15) NOT NULL,
  `waktu` text NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `iklan`
--

INSERT INTO `iklan` (`id`, `id_kategori`, `gambar`, `judul`, `harga`, `deskripsi`, `berat`, `warna`, `ukuran`, `stok`, `terjual`, `diskon`, `tipe_iklan`, `waktu`, `status`) VALUES
(25, 5, '1659735481-1.jpg', 'BATIK KEN DEDES ', 750000, 'HAI COSTUMER\r\n\r\nORDER\r\n\r\nWAJIB CANTUMKAN CADANGAN UKURAN DAN WARNA DI CATATAN PEMBELIAN ATAU TINGGALKAN PESAN DI CHAT INBOX YA\r\n\r\nPRODUK DI TOKO MENCAPAI RATUSAN NIH JADI KITA TIDAK BISA EDIT SATU PERSATU SETIAP HARI YA KA\r\n\r\nDAN JIKA ADA WARNA DAN UKURAN YANG TIDAK ADA PUN AKAN ADMIN INFO BY CHAT\r\n\r\nJIKA BY CHAT 1X24JAM TIDAK ADA INFO JUGA, MAKA PESANAN PUN AKAN ADMIN PROSES DAN KIRIM RANDOM\r\n\r\nKARNA KITA OPEN OFLINE JUGA DIRUMAH\r\n\r\nMOHON PENGERTIANNYA YA\r\n\r\nDAN MOHON KERJA SAMANYA,UNTUK BARANG YANG SUDAH DI TERIMA,BISA LANGSUNG KLIK KONFIRMASI PENERIMAAN\r\n\r\nTERIMA KASIH', 400, 'MERAH,HIJAU,BIRU', 'S===750000,M===820000,L===800000,XL===850000', 100, 58, 0, '', '2021-06-13 18:33:53', ''),
(27, 5, '1659735281-1.jpg', 'BATIK HITAM MOTIF ABSTRAK PREMIUM', 750000, 'Batik tulis asli pekaongan, dibuat dengan menggunakan bahan berkualitsa dan dibuat oleh pengrajin profesional.', 250, '', 'S===750000,M===800000,L===820000,XL===850000', 50, 42, 0, '', '2021-06-13 18:46:03', ''),
(28, 5, '1659735366-1.jpg', 'BATIK DIAH PITALOKA MOTIF MAWAR MERAH', 400000, 'BAHAN PREMIUM ', 300, '', '', 50, 3, 0, '', '2021-06-13 19:06:22', ''),
(43, 5, '1659736065-1.jpg', 'BATIK MOTIF BUNGA SUTRA HITAM ', 200000, 'HAI COSTUMER\r\n\r\nORDER\r\n\r\nWAJIB CANTUMKAN CADANGAN UKURAN DAN WARNA DI CATATAN PEMBELIAN ATAU TINGGALKAN PESAN DI CHAT INBOX YA\r\n\r\nPRODUK DI TOKO MENCAPAI RATUSAN NIH JADI KITA TIDAK BISA EDIT SATU PERSATU SETIAP HARI YA KA\r\n\r\nDAN JIKA ADA WARNA DAN UKURAN YANG TIDAK ADA PUN AKAN ADMIN INFO BY CHAT\r\n\r\nJIKA BY CHAT 1X24JAM TIDAK ADA INFO JUGA, MAKA PESANAN PUN AKAN ADMIN PROSES DAN KIRIM RANDOM\r\n\r\nKARNA KITA OPEN OFLINE JUGA DIRUMAH\r\n\r\nMOHON PENGERTIANNYA YA\r\n\r\nDAN MOHON KERJA SAMANYA,UNTUK BARANG YANG SUDAH DI TERIMA,BISA LANGSUNG KLIK KONFIRMASI PENERIMAAN\r\n\r\nTERIMA KASIH', 250, '', '', 50, 0, 0, '', '2022-08-05 23:47:45', ''),
(44, 5, '1659736111-1.jpg', 'BATIK INDAH PERMATASARI', 350000, 'HAI COSTUMER\r\n\r\nORDER\r\n\r\nWAJIB CANTUMKAN CADANGAN UKURAN DAN WARNA DI CATATAN PEMBELIAN ATAU TINGGALKAN PESAN DI CHAT INBOX YA\r\n\r\nPRODUK DI TOKO MENCAPAI RATUSAN NIH JADI KITA TIDAK BISA EDIT SATU PERSATU SETIAP HARI YA KA\r\n\r\nDAN JIKA ADA WARNA DAN UKURAN YANG TIDAK ADA PUN AKAN ADMIN INFO BY CHAT\r\n\r\nJIKA BY CHAT 1X24JAM TIDAK ADA INFO JUGA, MAKA PESANAN PUN AKAN ADMIN PROSES DAN KIRIM RANDOM\r\n\r\nKARNA KITA OPEN OFLINE JUGA DIRUMAH\r\n\r\nMOHON PENGERTIANNYA YA\r\n\r\nDAN MOHON KERJA SAMANYA,UNTUK BARANG YANG SUDAH DI TERIMA,BISA LANGSUNG KLIK KONFIRMASI PENERIMAAN\r\n\r\nTERIMA KASIH', 200, '', '', 50, 0, 0, '', '2022-08-05 23:48:31', ''),
(45, 5, '1659736161-1.jpg', 'BATIK TULIS CREM ELEGANT PREMIUM', 500000, 'HAI COSTUMER\r\n\r\nORDER\r\n\r\nWAJIB CANTUMKAN CADANGAN UKURAN DAN WARNA DI CATATAN PEMBELIAN ATAU TINGGALKAN PESAN DI CHAT INBOX YA\r\n\r\nPRODUK DI TOKO MENCAPAI RATUSAN NIH JADI KITA TIDAK BISA EDIT SATU PERSATU SETIAP HARI YA KA\r\n\r\nDAN JIKA ADA WARNA DAN UKURAN YANG TIDAK ADA PUN AKAN ADMIN INFO BY CHAT\r\n\r\nJIKA BY CHAT 1X24JAM TIDAK ADA INFO JUGA, MAKA PESANAN PUN AKAN ADMIN PROSES DAN KIRIM RANDOM\r\n\r\nKARNA KITA OPEN OFLINE JUGA DIRUMAH\r\n\r\nMOHON PENGERTIANNYA YA\r\n\r\nDAN MOHON KERJA SAMANYA,UNTUK BARANG YANG SUDAH DI TERIMA,BISA LANGSUNG KLIK KONFIRMASI PENERIMAAN\r\n\r\nTERIMA KASIH', 200, '', '', 50, 0, 0, '', '2022-08-05 23:49:21', ''),
(46, 5, '1659736208-1.jpg', 'BATIK ROSE DEWI BLUE', 300000, 'HAI COSTUMER\r\n\r\nORDER\r\n\r\nWAJIB CANTUMKAN CADANGAN UKURAN DAN WARNA DI CATATAN PEMBELIAN ATAU TINGGALKAN PESAN DI CHAT INBOX YA\r\n\r\nPRODUK DI TOKO MENCAPAI RATUSAN NIH JADI KITA TIDAK BISA EDIT SATU PERSATU SETIAP HARI YA KA\r\n\r\nDAN JIKA ADA WARNA DAN UKURAN YANG TIDAK ADA PUN AKAN ADMIN INFO BY CHAT\r\n\r\nJIKA BY CHAT 1X24JAM TIDAK ADA INFO JUGA, MAKA PESANAN PUN AKAN ADMIN PROSES DAN KIRIM RANDOM\r\n\r\nKARNA KITA OPEN OFLINE JUGA DIRUMAH\r\n\r\nMOHON PENGERTIANNYA YA\r\n\r\nDAN MOHON KERJA SAMANYA,UNTUK BARANG YANG SUDAH DI TERIMA,BISA LANGSUNG KLIK KONFIRMASI PENERIMAAN\r\n\r\nTERIMA KASIH', 120, '', '', 50, 0, 0, '', '2022-08-05 23:50:08', ''),
(47, 5, '1659736258-1.jpg', 'BATIK PUTRI PANCAWATI', 350000, 'HAI COSTUMER\r\n\r\nORDER\r\n\r\nWAJIB CANTUMKAN CADANGAN UKURAN DAN WARNA DI CATATAN PEMBELIAN ATAU TINGGALKAN PESAN DI CHAT INBOX YA\r\n\r\nPRODUK DI TOKO MENCAPAI RATUSAN NIH JADI KITA TIDAK BISA EDIT SATU PERSATU SETIAP HARI YA KA\r\n\r\nDAN JIKA ADA WARNA DAN UKURAN YANG TIDAK ADA PUN AKAN ADMIN INFO BY CHAT\r\n\r\nJIKA BY CHAT 1X24JAM TIDAK ADA INFO JUGA, MAKA PESANAN PUN AKAN ADMIN PROSES DAN KIRIM RANDOM\r\n\r\nKARNA KITA OPEN OFLINE JUGA DIRUMAH\r\n\r\nMOHON PENGERTIANNYA YA\r\n\r\nDAN MOHON KERJA SAMANYA,UNTUK BARANG YANG SUDAH DI TERIMA,BISA LANGSUNG KLIK KONFIRMASI PENERIMAAN\r\n\r\nTERIMA KASIH', 200, '', '', 50, 0, 20, 'flash sale', '2022-08-05 23:50:58', ''),
(48, 5, '1659736296-1.jpg', 'BATIK DURGANDINI', 870000, 'HAI COSTUMER\r\n\r\nORDER\r\n\r\nWAJIB CANTUMKAN CADANGAN UKURAN DAN WARNA DI CATATAN PEMBELIAN ATAU TINGGALKAN PESAN DI CHAT INBOX YA\r\n\r\nPRODUK DI TOKO MENCAPAI RATUSAN NIH JADI KITA TIDAK BISA EDIT SATU PERSATU SETIAP HARI YA KA\r\n\r\nDAN JIKA ADA WARNA DAN UKURAN YANG TIDAK ADA PUN AKAN ADMIN INFO BY CHAT\r\n\r\nJIKA BY CHAT 1X24JAM TIDAK ADA INFO JUGA, MAKA PESANAN PUN AKAN ADMIN PROSES DAN KIRIM RANDOM\r\n\r\nKARNA KITA OPEN OFLINE JUGA DIRUMAH\r\n\r\nMOHON PENGERTIANNYA YA\r\n\r\nDAN MOHON KERJA SAMANYA,UNTUK BARANG YANG SUDAH DI TERIMA,BISA LANGSUNG KLIK KONFIRMASI PENERIMAAN\r\n\r\nTERIMA KASIH', 230, '', '', 100, 0, 0, '', '2022-08-05 23:51:35', ''),
(49, 5, '1659736333-1.jpg', 'BATIK DEWI MALAM', 700000, 'HAI COSTUMER\r\n\r\nORDER\r\n\r\nWAJIB CANTUMKAN CADANGAN UKURAN DAN WARNA DI CATATAN PEMBELIAN ATAU TINGGALKAN PESAN DI CHAT INBOX YA\r\n\r\nPRODUK DI TOKO MENCAPAI RATUSAN NIH JADI KITA TIDAK BISA EDIT SATU PERSATU SETIAP HARI YA KA\r\n\r\nDAN JIKA ADA WARNA DAN UKURAN YANG TIDAK ADA PUN AKAN ADMIN INFO BY CHAT\r\n\r\nJIKA BY CHAT 1X24JAM TIDAK ADA INFO JUGA, MAKA PESANAN PUN AKAN ADMIN PROSES DAN KIRIM RANDOM\r\n\r\nKARNA KITA OPEN OFLINE JUGA DIRUMAH\r\n\r\nMOHON PENGERTIANNYA YA\r\n\r\nDAN MOHON KERJA SAMANYA,UNTUK BARANG YANG SUDAH DI TERIMA,BISA LANGSUNG KLIK KONFIRMASI PENERIMAAN\r\n\r\nTERIMA KASIH', 200, '', '', 50, 0, 20, 'flash sale', '2022-08-05 23:52:12', '');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `idinvoice` int(11) NOT NULL,
  `id_iklan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `warna_i` text NOT NULL,
  `ukuran_i` text NOT NULL,
  `harga_i` int(11) NOT NULL,
  `diskon_i` int(11) NOT NULL,
  `kurir` varchar(10) NOT NULL,
  `id_kurir` int(11) NOT NULL,
  `layanan_kurir` text NOT NULL,
  `etd` text NOT NULL,
  `harga_ongkir` int(11) NOT NULL,
  `resi` text NOT NULL,
  `provinsi` text NOT NULL,
  `kota` text NOT NULL,
  `alamat_lengkap` text NOT NULL,
  `waktu` varchar(200) NOT NULL,
  `tipe_progress` varchar(50) NOT NULL,
  `transaction` text NOT NULL,
  `type` text NOT NULL,
  `order_id` text NOT NULL,
  `fraud` text NOT NULL,
  `bank_manual` text NOT NULL,
  `bukti_transfer` text NOT NULL,
  `waktu_transaksi` text NOT NULL,
  `waktu_dikirim` text NOT NULL,
  `waktu_selesai` text NOT NULL,
  `waktu_dibatalkan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`idinvoice`, `id_iklan`, `id_user`, `jumlah`, `warna_i`, `ukuran_i`, `harga_i`, `diskon_i`, `kurir`, `id_kurir`, `layanan_kurir`, `etd`, `harga_ongkir`, `resi`, `provinsi`, `kota`, `alamat_lengkap`, `waktu`, `tipe_progress`, `transaction`, `type`, `order_id`, `fraud`, `bank_manual`, `bukti_transfer`, `waktu_transaksi`, `waktu_dikirim`, `waktu_selesai`, `waktu_dibatalkan`) VALUES
(99, 26, 14, 1, '', '', 87000, 0, 'jne', 0, 'OKE', '2-3', 30000, '12345523245', '11,Jawa Timur', '444,Surabaya', 'Jl banyu urip', '2021-07-25 16:54:57', 'Selesai', '', '', '', '', 'BCA', '99-bukti-transfer.jpeg', '2021-07-25 16:55:10', '2021-07-25 17:04:10', '2021-07-25 17:12:37', ''),
(100, 25, 14, 1, 'MERAH', 'S', 75000, 10, 'jne', 0, 'CTC', '1-2', 9000, '12189624823', '9,Jawa Barat', '55,Bekasi', 'Cikarang Utara', '2021-07-25 17:15:06', 'Selesai', '', '', '', '', 'BCA', '100-bukti-transfer.jpeg', '2021-07-25 17:15:17', '2021-07-25 17:15:47', '2021-07-25 17:15:52', ''),
(101, 27, 14, 1, '', '', 75000, 10, 'jne', 0, 'OKE', '2-3', 30000, '12456765432', '11,Jawa Timur', '444,Surabaya', 'Jl banyu urip', '2021-07-25 22:09:36', 'Selesai', '', '', '', '', 'BCA', '101-bukti-transfer.png', '2021-07-25 22:09:46', '2021-07-25 22:11:24', '2021-07-25 22:14:15', ''),
(102, 29, 14, 1, '', '', 415000, 30, 'jne', 0, 'OKE', '2-3', 15000, '123456', '11,Jawa Timur', '444,Surabaya', 'Jl banyu urip', '2021-07-25 22:38:31', 'Selesai', '', '', '', '', 'BCA', '102-bukti-transfer.png', '2021-07-25 22:38:44', '2021-09-09 12:26:33', '2021-09-09 12:26:48', ''),
(103, 20, 14, 1, '', '', 222000, 0, 'jne', 0, 'OKE', '2-3', 90000, '123', '11,Jawa Timur', '444,Surabaya', 'Jl banyu urip', '2021-07-25 23:27:20', 'Selesai', '', '', '', '', 'BCA', '103-bukti-transfer.png', '2021-07-25 23:27:32', '2021-09-09 12:26:21', '2021-09-09 12:26:44', ''),
(105, 21, 14, 1, '', '', 15000000, 0, 'jne', 0, 'OKE', '2-3', 57000, '434335353', '9,Jawa Barat', '55,Bekasi', 'kampung kandang', '2021-09-09 12:44:57', 'Selesai', '', '', '', '', 'BCA', '105-bukti-transfer.jpg', '2022-07-21 00:33:52', '2022-07-21 00:35:30', '2022-07-26 21:14:39', ''),
(106, 18, 14, 1, '', '', 2000000, 0, 'jne', 0, 'CTC', '1-2', 99000, '', '9,Jawa Barat', '54,Bekasi', 'Kampung Kandang', '2022-07-26 21:17:33', 'Dikemas', '', '', '', '', 'BCA', '106-bukti-transfer.jpg', '2022-07-26 21:17:48', '', '', ''),
(107, 23, 14, 1, '', '', 13500000, 10, 'jne', 0, 'CTC', '1-2', 9000, '113114343545', '9,Jawa Barat', '54,Bekasi', 'Kampung Kandang', '2022-07-26 21:23:57', 'Selesai', '', '', '', '', 'BCA', '107-bukti-transfer.jpg', '2022-07-26 21:24:18', '2022-07-26 21:25:46', '2022-07-26 21:28:23', ''),
(108, 22, 14, 1, '', '', 22000000, 0, 'jne', 0, 'CTC', '1-2', 18000, '13141414', '9,Jawa Barat', '55,Bekasi', 'Cikarang Utara', '2022-07-26 21:42:51', 'Selesai', '', '', '', '', 'BCA', '108-bukti-transfer.jpg', '2022-07-26 21:46:14', '2022-07-26 21:48:09', '2022-07-26 21:48:42', ''),
(109, 25, 18, 3, 'MERAH', 'L', 80000, 10, 'jne', 0, 'CTC', '1-2', 27000, '87878787878', '9,Jawa Barat', '54,Bekasi', 'Kp Jagawana Rt002', '2022-07-26 21:58:16', 'Selesai', '', '', '', '', 'BCA', '109-bukti-transfer.jpg', '2022-07-26 21:59:13', '2022-07-26 22:02:21', '2022-08-05 23:40:26', ''),
(110, 27, 18, 1, '', '', 750000, 0, 'jne', 0, 'CTC', '1-2', 9000, '1234567', '9,Jawa Barat', '54,Bekasi', 'Kp Jagawana Rt002', '2022-07-26 22:02:40', 'Selesai', '', '', '', '', 'BCA', '110-bukti-transfer.JPG', '2022-09-01 02:17:49', '2022-09-01 02:20:38', '2022-09-01 02:21:18', ''),
(111, 19, 19, 1, '', '', 289000, 12, 'jne', 0, 'CTC', '1-2', 45000, '0897979779', '9,Jawa Barat', '55,Bekasi', 'Sukatani, ', '2022-07-26 23:23:32', 'Selesai', '', '', '', '', 'BCA', '111-bukti-transfer.jpg', '2022-07-26 23:24:43', '2022-07-26 23:26:15', '2022-07-26 23:27:01', ''),
(112, 48, 18, 1, '', '', 870000, 0, 'jne', 0, 'CTC', '1-2', 9000, '8787', '9,Jawa Barat', '54,Bekasi', 'Kp Jagawana Rt002', '2022-09-01 02:40:48', 'Selesai', '', '', '', '', 'BCA', '112-bukti-transfer.JPG', '2022-09-01 02:41:05', '2022-09-01 03:21:39', '2022-09-01 03:24:24', ''),
(113, 45, 18, 1, '', '', 500000, 0, 'jne', 0, 'CTC', '1-2', 9000, '65656565656', '9,Jawa Barat', '54,Bekasi', 'Kp Jagawana Rt002', '2022-09-01 03:04:59', 'Selesai', '', '', '', '', 'BCA', '113-bukti-transfer.jpg', '2022-09-01 03:05:24', '2022-09-01 03:06:44', '2022-09-01 03:07:04', ''),
(114, 43, 18, 1, '', '', 200000, 0, 'jne', 0, 'CTC', '1-2', 9000, '767675', '9,Jawa Barat', '54,Bekasi', 'Kp Jagawana Rt002', '2022-09-01 03:19:03', 'Selesai', '', '', '', '', 'BCA', '114-bukti-transfer.jpg', '2022-09-01 03:19:16', '2022-09-01 03:20:09', '2022-09-01 03:22:47', ''),
(115, 46, 18, 1, '', '', 300000, 0, 'jne', 0, 'CTC', '1-2', 9000, '131313', '9,Jawa Barat', '54,Bekasi', 'Kp Jagawana Rt002', '2022-09-01 03:48:32', 'Dikirim', '', '', '', '', 'BCA', '115-bukti-transfer.jpg', '2022-09-01 03:48:47', '2022-09-01 03:51:07', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `icon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `icon`) VALUES
(4, 'Pakaian Pria', 'pakaian-pria.svg'),
(5, 'Pakaian Wanita', 'pakaian-wanita.svg');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(11) NOT NULL,
  `id_iklan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `harga_k` int(15) NOT NULL,
  `diskon_k` int(11) NOT NULL,
  `warna_k` text NOT NULL,
  `ukuran_k` text NOT NULL,
  `waktu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lokasi_user`
--

CREATE TABLE `lokasi_user` (
  `idlokasi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `provinsi` text NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `kota` text NOT NULL,
  `id_kota` int(11) NOT NULL,
  `kecamatan` text NOT NULL,
  `kelurahan` text NOT NULL,
  `alamat_lengkap` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lokasi_user`
--

INSERT INTO `lokasi_user` (`idlokasi`, `id_user`, `provinsi`, `id_provinsi`, `kota`, `id_kota`, `kecamatan`, `kelurahan`, `alamat_lengkap`) VALUES
(9, 3, 'Jawa Timur', 11, 'Surabaya', 444, '', '', 'Jl banyu urip'),
(10, 14, 'Jawa Barat', 9, 'Bekasi', 55, '', '', 'Cikarang Utara'),
(11, 18, 'Jawa Barat', 9, 'Bekasi', 54, '', '', 'Kp Jagawana Rt002'),
(12, 19, 'Jawa Barat', 9, 'Bekasi', 55, '', '', 'Sukatani, ');

-- --------------------------------------------------------

--
-- Table structure for table `nomor_rekening`
--

CREATE TABLE `nomor_rekening` (
  `idnorek` int(11) NOT NULL,
  `nama_bank` text NOT NULL,
  `norek` text NOT NULL,
  `an` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nomor_rekening`
--

INSERT INTO `nomor_rekening` (`idnorek`, `nama_bank`, `norek`, `an`) VALUES
(1, 'BCA', '123456789', 'Dipay Store'),
(2, 'BRI', '1876889286539', '');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id_notif` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `nama_notif` text NOT NULL,
  `deskripsi_notif` text NOT NULL,
  `waktu_notif` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status_notif` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id_notif`, `id_user`, `id_invoice`, `nama_notif`, `deskripsi_notif`, `waktu_notif`, `status_notif`) VALUES
(1, 3, 36, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', 'Read'),
(2, 3, 35, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '0000-00-00 00:00:00', 'Read'),
(3, 3, 34, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '0000-00-00 00:00:00', 'Read'),
(4, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '0000-00-00 00:00:00', 'Read'),
(5, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '0000-00-00 00:00:00', 'Read'),
(6, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '0000-00-00 00:00:00', 'Read'),
(7, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '0000-00-00 00:00:00', 'Read'),
(8, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '0000-00-00 00:00:00', 'Read'),
(9, 3, 34, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2013-01-13 17:00:00', 'Read'),
(10, 3, 35, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2013-01-18 17:00:00', 'Read'),
(11, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2013-03-02 17:00:00', 'Read'),
(12, 3, 35, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '0000-00-00 00:00:00', 'Read'),
(13, 3, 34, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '0000-00-00 00:00:00', 'Read'),
(14, 3, 35, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '0000-00-00 00:00:00', 'Read'),
(15, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '0000-00-00 00:00:00', 'Read'),
(16, 3, 35, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2013-08-01 17:00:00', 'Read'),
(17, 3, 34, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2013-08-03 17:00:00', 'Read'),
(18, 3, 35, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2013-08-06 17:00:00', 'Read'),
(19, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2013-08-14 17:00:00', 'Read'),
(20, 3, 34, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '0000-00-00 00:00:00', 'Read'),
(21, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '0000-00-00 00:00:00', 'Read'),
(22, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2013-12-11 17:00:00', 'Read'),
(23, 3, 35, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '0000-00-00 00:00:00', 'Read'),
(24, 3, 35, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '0000-00-00 00:00:00', 'Read'),
(25, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '0000-00-00 00:00:00', 'Read'),
(26, 3, 35, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '0000-00-00 00:00:00', 'Read'),
(27, 3, 34, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '0000-00-00 00:00:00', 'Read'),
(28, 3, 35, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '0000-00-00 00:00:00', 'Read'),
(29, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '0000-00-00 00:00:00', 'Read'),
(30, 3, 35, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '0000-00-00 00:00:00', 'Read'),
(31, 3, 34, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '0000-00-00 00:00:00', 'Read'),
(32, 3, 35, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '0000-00-00 00:00:00', 'Read'),
(33, 3, 34, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '0000-00-00 00:00:00', 'Read'),
(34, 3, 49, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '0000-00-00 00:00:00', 'Read'),
(35, 3, 49, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '0000-00-00 00:00:00', 'Read'),
(36, 3, 48, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '0000-00-00 00:00:00', 'Read'),
(37, 3, 66, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '0000-00-00 00:00:00', 'Read'),
(38, 3, 74, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '0000-00-00 00:00:00', 'Read'),
(39, 3, 74, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '0000-00-00 00:00:00', 'Read'),
(40, 3, 74, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '0000-00-00 00:00:00', 'Read'),
(41, 3, 70, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '0000-00-00 00:00:00', 'Read'),
(42, 3, 89, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', 'Read'),
(43, 3, 89, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', 'Read'),
(44, 3, 89, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', 'Read'),
(45, 3, 89, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', 'Read'),
(46, 3, 89, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', 'Read'),
(47, 3, 89, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', 'Read'),
(48, 3, 89, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', 'Read'),
(49, 3, 89, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', 'Read'),
(50, 3, 87, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', 'Read'),
(51, 3, 87, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', 'Read'),
(52, 3, 85, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', 'Read'),
(53, 3, 85, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', 'Read'),
(54, 3, 86, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', 'Read'),
(55, 3, 86, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', 'Read'),
(56, 3, 91, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', 'Read'),
(57, 3, 91, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', 'Read'),
(58, 3, 92, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', 'Read'),
(59, 3, 92, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', 'Read'),
(60, 3, 93, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', 'Read'),
(61, 3, 93, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', 'Read'),
(62, 3, 85, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', 'Read'),
(63, 3, 85, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', 'Read'),
(64, 3, 94, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', 'Read'),
(65, 3, 94, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', 'Read'),
(66, 3, 95, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', 'Read'),
(67, 3, 95, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', 'Read'),
(68, 3, 96, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', 'Read'),
(69, 3, 96, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', 'Read'),
(70, 3, 97, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', 'Read'),
(71, 3, 97, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', 'Read'),
(72, 3, 97, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', 'Read'),
(73, 3, 97, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', 'Read'),
(74, 3, 98, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', 'Read'),
(75, 3, 98, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', 'Read'),
(76, 3, 99, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', ''),
(77, 3, 99, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', ''),
(78, 3, 99, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2017-04-09 17:00:00', ''),
(79, 3, 99, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '0000-00-00 00:00:00', ''),
(80, 3, 100, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', ''),
(81, 3, 100, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', ''),
(82, 3, 100, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '0000-00-00 00:00:00', ''),
(83, 3, 100, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '0000-00-00 00:00:00', ''),
(84, 3, 101, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', ''),
(85, 3, 101, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', ''),
(86, 3, 101, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2022-11-23 17:00:00', ''),
(87, 3, 101, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '0000-00-00 00:00:00', ''),
(88, 3, 103, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', ''),
(89, 3, 103, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', ''),
(90, 14, 102, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', 'Read'),
(91, 14, 102, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', 'Read'),
(92, 14, 103, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '0000-00-00 00:00:00', 'Read'),
(93, 0, 0, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2023-01-18 06:43:49', 'Read'),
(94, 14, 102, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '0000-00-00 00:00:00', 'Read'),
(95, 14, 103, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '0000-00-00 00:00:00', 'Read'),
(96, 14, 102, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '0000-00-00 00:00:00', 'Read'),
(97, 14, 105, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', 'Read'),
(98, 14, 105, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', 'Read'),
(99, 14, 105, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '0000-00-00 00:00:00', 'Read'),
(100, 14, 105, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '0000-00-00 00:00:00', 'Read'),
(101, 14, 105, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '0000-00-00 00:00:00', 'Read'),
(102, 14, 107, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', 'Read'),
(103, 14, 107, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', 'Read'),
(104, 14, 106, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', 'Read'),
(105, 14, 106, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', 'Read'),
(106, 14, 107, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '0000-00-00 00:00:00', 'Read'),
(107, 14, 107, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '0000-00-00 00:00:00', 'Read'),
(108, 14, 108, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', 'Read'),
(109, 14, 108, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', 'Read'),
(110, 14, 108, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '0000-00-00 00:00:00', 'Read'),
(111, 14, 108, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '0000-00-00 00:00:00', 'Read'),
(112, 18, 109, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', 'Read'),
(113, 18, 109, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', 'Read'),
(114, 18, 109, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2022-02-20 17:00:00', 'Read'),
(115, 19, 111, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', 'Read'),
(116, 19, 111, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', 'Read'),
(117, 19, 111, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '0000-00-00 00:00:00', 'Read'),
(118, 19, 111, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '0000-00-00 00:00:00', 'Read'),
(119, 18, 109, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '0000-00-00 00:00:00', 'Read'),
(120, 18, 110, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', 'Read'),
(121, 18, 110, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', 'Read'),
(122, 18, 110, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '0000-00-00 00:00:00', 'Read'),
(123, 18, 110, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '0000-00-00 00:00:00', 'Read'),
(124, 18, 112, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '0000-00-00 00:00:00', 'Read'),
(125, 18, 112, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '0000-00-00 00:00:00', 'Read'),
(126, 18, 113, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2003-06-10 17:00:00', 'Read'),
(127, 18, 113, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2003-06-10 17:00:00', 'Read'),
(128, 18, 113, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '0000-00-00 00:00:00', 'Read'),
(129, 18, 113, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2003-07-03 17:00:00', 'Read'),
(130, 18, 114, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2022-08-31 17:00:00', 'Read'),
(131, 18, 114, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2022-08-31 17:00:00', 'Read'),
(132, 18, 114, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2022-08-31 17:00:00', 'Read'),
(133, 18, 112, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2022-08-31 17:00:00', 'Read'),
(134, 18, 114, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2022-08-31 17:00:00', 'Read'),
(135, 18, 112, 'Pesanan Telah Sampai', 'Pesanan sudah sampai ke tempat tujuan', '2022-08-31 20:24:24', 'Read'),
(136, 18, 115, 'Pembayaran Berhasil', 'Pembayaran pesanan sudah berhasil terverifikasi', '2022-08-31 20:49:08', 'Read'),
(137, 18, 115, 'Pesanan Dikemas', 'Pesanan sedang dalam proses pengemasan oleh penjual', '2022-08-31 20:49:08', 'Read'),
(138, 18, 115, 'Pesanan Dikirim', 'Pesanan sudah dikirim oleh penjual dan sedang dalam perjalanan', '2022-09-01 01:51:17', 'Read');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `idrating` int(11) NOT NULL,
  `id_invoice_rat` int(11) NOT NULL,
  `star_rat` int(1) NOT NULL,
  `deskripsi_rat` text NOT NULL,
  `waktu_rat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`idrating`, `id_invoice_rat`, `star_rat`, `deskripsi_rat`, `waktu_rat`) VALUES
(7, 35, 5, 'Barang nya bagus sekali', '2021-06-18 14:51:53'),
(8, 35, 5, '', '2021-06-18 14:51:53'),
(9, 35, 5, '', '2021-06-18 14:51:53'),
(10, 35, 3, '', '2021-06-18 14:51:53'),
(11, 103, 5, 'kerennn dan berkualitas', ''),
(12, 102, 4, 'kerennn dan berkualitas', ''),
(13, 101, 5, 'kerennn dan berkualitas', ''),
(14, 100, 5, 'kerennn dan berkualitas', ''),
(15, 99, 2, 'kegedean', ''),
(16, 107, 5, 'mantap', ''),
(17, 111, 5, 'barangnya mantap', '');

-- --------------------------------------------------------

--
-- Table structure for table `setting_apikey`
--

CREATE TABLE `setting_apikey` (
  `id_apikey` int(11) NOT NULL,
  `google_client_id` text NOT NULL,
  `google_client_secret` text NOT NULL,
  `midtrans_client_key` text NOT NULL,
  `midtrans_server_key` text NOT NULL,
  `rajaongkir_key` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting_apikey`
--

INSERT INTO `setting_apikey` (`id_apikey`, `google_client_id`, `google_client_secret`, `midtrans_client_key`, `midtrans_server_key`, `rajaongkir_key`) VALUES
(1, '667755539556-t91a5rigvs8sjn8ov5ob449uofahvjdf.apps.googleusercontent.com', 'egHGBI5BcztK-VbZNeCEHHTW', 'SB-Mid-client-rwRR5kz4E-kNnJs2', 'SB-Mid-server-iU7JbDaoVDjBJu4N-LLH0xW8', 'ba41ff0062c6c1fd933599257260431f');

-- --------------------------------------------------------

--
-- Table structure for table `setting_email`
--

CREATE TABLE `setting_email` (
  `id` int(11) NOT NULL,
  `email_notif` text NOT NULL,
  `host_smtp` varchar(100) NOT NULL,
  `port_smtp` int(11) NOT NULL,
  `username_smtp` varchar(100) NOT NULL,
  `password_smtp` varchar(100) NOT NULL,
  `setfrom_smtp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting_email`
--

INSERT INTO `setting_email` (`id`, `email_notif`, `host_smtp`, `port_smtp`, `username_smtp`, `password_smtp`, `setfrom_smtp`) VALUES
(1, 'support@gmail.com', 'aada.com', 465, 'support@gmail.com', 'PASSWORD EMAIL ANDA', 'SENJA STORE');

-- --------------------------------------------------------

--
-- Table structure for table `setting_footer`
--

CREATE TABLE `setting_footer` (
  `id_fo` int(11) NOT NULL,
  `name_social` text NOT NULL,
  `icon_social` text NOT NULL,
  `link_social` text NOT NULL,
  `status_social` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting_footer`
--

INSERT INTO `setting_footer` (`id_fo`, `name_social`, `icon_social`, `link_social`, `status_social`) VALUES
(1, 'Facebook', '<i class=\"ri-facebook-box-fill\"></i>', 'https://web.facebook.com/profile.php?id=100060254122112', ''),
(2, 'Instagram', '<i class=\"ri-instagram-fill\"></i>', '', ''),
(3, 'Whatsapp', '<i class=\"ri-whatsapp-fill\"></i>', '', ''),
(4, 'Twitter', '<i class=\"ri-twitter-fill\"></i>', '', ''),
(5, 'YouTube', '<i class=\"ri-youtube-fill\"></i>', '', ''),
(6, 'LinkedIn', '<i class=\"ri-linkedin-fill\"></i>', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `setting_header`
--

CREATE TABLE `setting_header` (
  `id_hs` int(11) NOT NULL,
  `logo` text NOT NULL,
  `title_name` text NOT NULL,
  `placeholder_search` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting_header`
--

INSERT INTO `setting_header` (`id_hs`, `logo`, `title_name`, `placeholder_search`) VALUES
(1, 'logo.png', 'Toko Batik', 'Pencarian..');

-- --------------------------------------------------------

--
-- Table structure for table `setting_lokasi`
--

CREATE TABLE `setting_lokasi` (
  `id` int(11) NOT NULL,
  `provinsi` text NOT NULL,
  `kota` text NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `kota_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting_lokasi`
--

INSERT INTO `setting_lokasi` (`id`, `provinsi`, `kota`, `provinsi_id`, `kota_id`) VALUES
(1, 'Jawa Barat', 'Bekasi', 9, 54);

-- --------------------------------------------------------

--
-- Table structure for table `setting_pembayaran`
--

CREATE TABLE `setting_pembayaran` (
  `id` int(11) NOT NULL,
  `tipe` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting_pembayaran`
--

INSERT INTO `setting_pembayaran` (`id`, `tipe`, `status`) VALUES
(1, 'Midtrans', ''),
(2, 'Manual', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_promo`
--
ALTER TABLE `banner_promo`
  ADD PRIMARY KEY (`idbanner`);

--
-- Indexes for table `flashsale`
--
ALTER TABLE `flashsale`
  ADD PRIMARY KEY (`id_fs`);

--
-- Indexes for table `iklan`
--
ALTER TABLE `iklan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`idinvoice`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasi_user`
--
ALTER TABLE `lokasi_user`
  ADD PRIMARY KEY (`idlokasi`);

--
-- Indexes for table `nomor_rekening`
--
ALTER TABLE `nomor_rekening`
  ADD PRIMARY KEY (`idnorek`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id_notif`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`idrating`);

--
-- Indexes for table `setting_apikey`
--
ALTER TABLE `setting_apikey`
  ADD PRIMARY KEY (`id_apikey`);

--
-- Indexes for table `setting_email`
--
ALTER TABLE `setting_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_footer`
--
ALTER TABLE `setting_footer`
  ADD PRIMARY KEY (`id_fo`);

--
-- Indexes for table `setting_header`
--
ALTER TABLE `setting_header`
  ADD PRIMARY KEY (`id_hs`);

--
-- Indexes for table `setting_lokasi`
--
ALTER TABLE `setting_lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_pembayaran`
--
ALTER TABLE `setting_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `banner_promo`
--
ALTER TABLE `banner_promo`
  MODIFY `idbanner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `flashsale`
--
ALTER TABLE `flashsale`
  MODIFY `id_fs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iklan`
--
ALTER TABLE `iklan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `idinvoice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `lokasi_user`
--
ALTER TABLE `lokasi_user`
  MODIFY `idlokasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nomor_rekening`
--
ALTER TABLE `nomor_rekening`
  MODIFY `idnorek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id_notif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `idrating` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `setting_apikey`
--
ALTER TABLE `setting_apikey`
  MODIFY `id_apikey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_email`
--
ALTER TABLE `setting_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_footer`
--
ALTER TABLE `setting_footer`
  MODIFY `id_fo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `setting_header`
--
ALTER TABLE `setting_header`
  MODIFY `id_hs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_lokasi`
--
ALTER TABLE `setting_lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_pembayaran`
--
ALTER TABLE `setting_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
