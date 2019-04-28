-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Apr 2019 pada 17.40
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_exabb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_detail_kegiatan`
--

CREATE TABLE `tabel_detail_kegiatan` (
  `id_detail_kegiatan` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `nama_karyawan` varchar(50) NOT NULL,
  `total_normal_time` varchar(11) NOT NULL,
  `total_over_time` varchar(11) NOT NULL,
  `total_jam_kerja` varchar(11) NOT NULL,
  `normal_time_efficiency` varchar(11) NOT NULL,
  `over_time_efficiency` varchar(11) NOT NULL,
  `cost_normal` varchar(255) NOT NULL,
  `cost_over` varchar(255) NOT NULL,
  `status` enum('Efficient','Not Efficient') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_detail_project`
--

CREATE TABLE `tabel_detail_project` (
  `id_detail_project` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `project_number` varchar(50) NOT NULL,
  `total_man_power` int(10) NOT NULL,
  `time_efficiency_normal` varchar(10) NOT NULL,
  `time_efficiency_over` varchar(10) NOT NULL,
  `cost_normal` varchar(255) NOT NULL,
  `cost_over` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_job_desc`
--

CREATE TABLE `tabel_job_desc` (
  `id_job` int(11) NOT NULL,
  `nama_job` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_job_desc`
--

INSERT INTO `tabel_job_desc` (`id_job`, `nama_job`) VALUES
(1, 'Mounting'),
(2, 'Cable Marker'),
(3, 'Wiring'),
(4, 'Continuity/QC'),
(5, 'Rework');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_karyawan`
--

CREATE TABLE `tabel_karyawan` (
  `nik` varchar(255) NOT NULL,
  `nama_pegawai` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `departemen` varchar(255) NOT NULL,
  `no_ktp` varchar(50) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `gaji` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_karyawan`
--

INSERT INTO `tabel_karyawan` (`nik`, `nama_pegawai`, `jabatan`, `departemen`, `no_ktp`, `jk`, `no_hp`, `gaji`) VALUES
('EEN0004', 'Supomo', 'Senior Teknisi', 'Produksi', '3603280208670000', 'Laki-laki', '085364576667', ''),
('EEN0005', 'Riyanto', 'Teknisi Wiring', 'Produksi', '3301040206900000', 'Laki-laki', '085890666421', ''),
('EEN0017', 'Gunadi', 'Workshop Leader', 'Produksi', '3520121601820000', 'Laki-laki', '08567892479', ''),
('EEN0018', 'Isbayu', 'Teknisi', 'Produksi', '3276030605660000', 'Laki-laki', '081295475001', ''),
('EEN0020', 'Yadi Santoso', 'Lead of Mekanik', 'Produksi', '3175041102770000', 'Laki-laki', '085714226538', ''),
('EEN0021', 'Agus Budianto', 'Teknisi', 'Produksi', '3671061708840010', 'Laki-laki', '085718024255', ''),
('EEN0024', 'Sudrajat', 'Mekanik', 'Produksi', '3603231106830000', 'Laki-laki', '0895359558696', ''),
('EEN0025', 'Andi Aang Permana', 'Teknisi Busbar', 'Produksi', '3603231508840000', 'Laki-laki', '085945981063', ''),
('EEN0026', 'Abdul Rohim', 'Group Leader', 'Produksi', '3201332610830000', 'Laki-laki', '08987703848', ''),
('EEN0034', 'Dedi Rusdiana', 'Teknisi Wiring', 'Produksi', '3602141403800000', 'Laki-laki', '083899275708', ''),
('EEN0037', 'Slamet Ruhana', 'Teknisi Wiring', 'Produksi', '3208311104880000', 'Laki-laki', '087880753432', ''),
('EEN0042', 'Dwi Hartono', 'Group Leader', 'Produksi', '3403120604870000', 'Laki-laki', '0857 8113 7296', ''),
('EEN0049', 'Rudi', 'Teknisi Wiring', 'Produksi', '3201151208710000', 'Laki-laki', '0812 9085 6640', ''),
('EEN0051', 'Ahmad Baihaqi', 'Group Leader', 'Produksi', '3175031703920000', 'Laki-laki', '0812 9133 6815', ''),
('EEN0052', 'Ichsan Hardiansyah', 'Teknisi Wiring', 'Produksi', '3175042703870000', 'Laki-laki', '0877 5865 2537', ''),
('EEN0633', 'Renaldi Dwi Yulianto', 'Teknisi Wiring', 'Produksi', '3604261107980000', 'Laki-laki', '0838 0773 9330', ''),
('EEN0810', 'Nurhasan', 'Teknisi Wiring', 'Produksi', '3674010707950000', 'Laki-laki', '0878 0965 1790', ''),
('EEN0879', 'Aldi Juliansyah', 'QC Technician', 'QC', '3674070507980000', 'Laki-laki', '0896 0772 5509', ''),
('EEN0880', 'Riyan Ardian Syah', 'Teknisi Wiring', 'Produksi', '1802111901930000', 'Laki-laki', '0812 9048 7249', ''),
('EEN0881', 'Suwito Utomo Putro', 'Teknisi Wiring', 'Produksi', '3604260905950000', 'Laki-laki', '0822 5819 3716', ''),
('EEN0882', 'Muchamad Azys', 'Teknisi Wiring', 'Produksi', '3671031910970000', 'Laki-laki', '0878 8773 0241', ''),
('EEN0903', 'Moh Rizki Dwi Cahyo', 'Teknisi Wiring', 'Produksi', '3208171407970000', 'Laki-laki', '0821 1246 3144', ''),
('EEN0905', 'Syahrul Ramadhan', 'Teknisi Wiring', 'Produksi', '3671012601980000', 'Laki-laki', '0838 0597 0824', ''),
('EEN0916', 'Anugrah Sana Wibowo', 'Electrical Engineer', 'Engineering', '3674072710920000', 'Laki-laki', '0821 2305 3223', ''),
('EEN0919', 'Badru Tamami', 'Mekanik', 'Produksi', '3603231009910000', 'Laki-laki', '0815 1706 3850', ''),
('EEN0921', 'Yuli Susanto', 'QC Technician', 'QC', '3520120507930000', 'Laki-laki', '0895 3306 78770', ''),
('EEN0923', 'Tri Sogi', 'Electrical Engineer', 'Engineering', '3471132303930000', 'Laki-laki', '0896 3709 5830', ''),
('EEN0924', 'Fahmi Fadilah', 'Teknisi Wiring', 'Produksi', '3175041012910000', 'Laki-laki', '0896 0151 2095', ''),
('EEN0926', 'Kabul', 'QC Technician', 'QC', '3603280803950000', 'Laki-laki', '0821 2265 1216', ''),
('EEN0928', 'Joko Supriyanto', 'Teknisi Wiring', 'Produksi', '3208312107930000', 'Laki-laki', '0822 1393 1579', ''),
('EEN0943', 'Dison Mintuno Andarbeni', 'Electrical Engineer', 'Engineering', '3671111112910000', 'Laki-laki', '0856 0991 3800', ''),
('EEN0945', 'Nurhasan (Aceng)', 'Teknisi Wiring', 'Produksi', '3671060907810000', 'Laki-laki', '0858 1018 9841', ''),
('EEN0953', 'Adi Hidayat', 'Teknisi Wiring', 'Produksi', '3201330610950000', 'Laki-laki', '0895 2373 6457', ''),
('EEN0954', 'Ari Syahrizal', 'Teknisi Wiring', 'Produksi', '3201332903990000', 'Laki-laki', '0895 6193 90546', ''),
('EEN0955', 'Aldi Fahrudin Yahya', 'Teknisi Wiring', 'Produksi', '320133060797006', 'Laki-laki', '0895 3253 93234', ''),
('EEN0956', 'Hamim Alifi', 'Teknisi Wiring', 'Produksi', '3201331610970000', 'Laki-laki', '0896 1105 5402', ''),
('EEN0957', 'Muhamad Maulana Ramdani', 'Teknisi Wiring', 'Produksi', '3671010903910000', 'Laki-laki', '0878 8514 3391', ''),
('EEN0970', 'Mohammad Haris', 'Teknisi Wiring', 'Produksi', '3513182706980000', 'Laki-laki', '0823 3307 2703', ''),
('EEN0971', 'Sigit Tjahyono', 'Warehouse Keeper', 'SCM', '3175042302600000', 'Laki-laki', '0812 7290 2934', ''),
('EEN0972', 'Al Dian', 'Teknisi Wiring', 'Produksi', '3174052508950000', 'Laki-laki', '0896 1139 3226', ''),
('EEN0973', 'Ahmad Royani', 'Teknisi Wiring', 'Produksi', '3209132101960000', 'Laki-laki', '0857 5940 2597', ''),
('EEN0974', 'Ahmad Taufik Hidayat', 'Teknisi Wiring', 'Produksi', '3209131508980000', 'Laki-laki', '0831 2061 2127', ''),
('EEN0975', 'Indirwan', 'Teknisi Wiring', 'Produksi', '320231081099002', 'Laki-laki', '0857 9549 0692', ''),
('EEN0976', 'Juni Awan Supriyanto', 'Teknisi Wiring', 'Produksi', '3172052606950000', 'Laki-laki', '0838 0829 3707', ''),
('EEN0977', 'Tri Nugroho', 'Teknisi Wiring', 'Produksi', '320110030197001', 'Laki-laki', '0878 7389 1620', ''),
('EEN0978', 'Rizki Zulfikar', 'Teknisi Wiring', 'Produksi', '3216020805870010', 'Laki-laki', '0856 9779 9551', ''),
('EEN0979', 'Herdiansyah', 'Data Entry', 'SCM', '3201110311910000', 'Laki-laki', '0857 2011 9491', ''),
('EEN0980', 'Guswandi', 'QC Technician', 'QC', '1403092508930000', 'Laki-laki', '0821 1047 4250', ''),
('EEN0981', 'Hasan Basri', 'Teknisi Wiring', 'Produksi', '3201102405940000', 'Laki-laki', '0857 7616 0702', ''),
('EEN0982', 'Ferdi Sanofel', 'QC Leader', 'QC', '3674041911810000', 'Laki-laki', '0852 1213 7329', ''),
('EEN0983', 'Okky Herdian', 'Teknisi Wiring', 'Produksi', '1806021406930000', 'Laki-laki', '0878 5305 3132', ''),
('EEN0984', 'Fadhiil Naufal Rosa', 'QC Technician', 'QC', '3174100904000010', 'Laki-laki', '0858 1197 6768', ''),
('EEN0985', 'Gidion Sukarno', 'Teknisi Wiring', 'Produksi', '3175042802860000', 'Laki-laki', '0895 3748 7597 5', ''),
('EEN0986', 'Guntur Suhardi', 'QC Technician', 'QC', '3674070805990000', 'Laki-laki', '0895 3224 4750 1', ''),
('EEN0987', 'Heru Suhendi', 'Mekanik', 'Produksi', '3603232205990000', 'Laki-laki', '089655915864', ''),
('EEN0988', 'Jamalul Lail', 'Teknisi Wiring', 'Produksi', '3201330706980000', 'Laki-laki', '0895395455658', ''),
('EEN0989', 'Wandi', 'Teknisi Wiring', 'Produksi', '3671060104830000', 'Laki-laki', '089657057599', ''),
('EEN1111', 'Indra Gunawan', 'Workshop Leader', 'SCM', '3275011401973232', 'Laki-laki', '085771234567', ''),
('EEN1112', 'Axel Fairuz', 'Teknisi', 'Produksi', '1234567890123', 'Laki-laki', '085123456789', '3841368');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_kegiatan`
--

CREATE TABLE `tabel_kegiatan` (
  `id_kegiatan` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_selesai` time NOT NULL,
  `status` enum('Selesai','Belum Selesai') NOT NULL,
  `id_job` int(11) NOT NULL,
  `project_number` varchar(50) NOT NULL,
  `id_karyawan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_kegiatan`
--

INSERT INTO `tabel_kegiatan` (`id_kegiatan`, `tgl`, `waktu_mulai`, `waktu_selesai`, `status`, `id_job`, `project_number`, `id_karyawan`) VALUES
(1, '2019-02-14', '08:00:00', '12:00:00', 'Selesai', 1, '12345', 2),
(2, '2019-02-14', '13:00:00', '15:00:00', 'Belum Selesai', 2, '12345', 2),
(3, '2019-02-14', '15:00:00', '17:00:00', 'Belum Selesai', 3, '12345', 2),
(4, '2019-02-14', '17:00:00', '18:00:00', 'Belum Selesai', 4, '12345', 2),
(5, '2019-02-14', '19:00:00', '21:00:00', 'Selesai', 4, '12345', 2),
(6, '2019-02-14', '08:00:00', '12:00:00', 'Belum Selesai', 2, '12345', 3),
(7, '2019-02-14', '13:00:00', '17:00:00', 'Belum Selesai', 2, '12345', 3),
(8, '2019-02-14', '17:00:00', '19:00:00', 'Belum Selesai', 2, '12345', 3),
(9, '2019-02-14', '19:00:00', '24:00:00', 'Belum Selesai', 2, '12345', 3),
(12, '2019-02-15', '08:00:00', '12:00:00', '', 3, '67890', 2),
(13, '2019-02-15', '17:00:00', '18:00:00', '', 3, '67890', 2),
(16, '2019-02-15', '08:00:00', '12:00:00', '', 4, '13579', 3),
(17, '2019-02-15', '13:00:00', '17:00:00', '', 4, '13579', 3),
(18, '2019-02-15', '17:00:00', '18:00:00', '', 4, '13579', 3),
(19, '2019-02-15', '19:00:00', '24:00:00', '', 4, '13579', 3),
(20, '2019-02-16', '08:00:00', '12:00:00', 'Belum Selesai', 1, '12345', 2),
(21, '2019-02-16', '13:00:00', '15:00:00', 'Belum Selesai', 1, '12345', 2),
(22, '2019-02-16', '17:00:00', '18:00:00', 'Belum Selesai', 1, '12345', 2),
(23, '2019-02-16', '08:00:00', '12:00:00', 'Belum Selesai', 1, '12345', 3),
(24, '2019-02-16', '13:00:00', '15:00:00', 'Belum Selesai', 1, '12345', 3),
(25, '2019-02-16', '17:00:00', '18:00:00', 'Belum Selesai', 2, '12345', 3),
(26, '2019-02-16', '19:00:00', '20:00:00', 'Belum Selesai', 2, '12345', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_project`
--

CREATE TABLE `tabel_project` (
  `project_number` varchar(255) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `customer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_project`
--

INSERT INTO `tabel_project` (`project_number`, `project_name`, `customer`) VALUES
('12345', 'A', 'A'),
('13579', 'C', 'C'),
('67890', 'B', 'B'),
('PF-19001', 'RCP PANEL - SUNGAI RUMBAI', 'PT. SIEMENS INDONESIA'),
('PF-19002', '110VDC - TIGA RAKSA', 'PT. BUANA REKSA BINAPERKASA'),
('PF-19003', 'ACDC BOARD - GI TANJUNG LESUNG', 'PT. BUANA REKSA BINAPERKASA'),
('PF-19004', 'RCP PANEL - GI. DENTE TELADAS & SEPUTIH BANYAK', 'PT. GE GRID SOLUTIONS'),
('PF-19005', 'EMP PANEL & ACDC BOARD - MUARA KARANG ', 'PT. GE GRID SOLUTIONS'),
('PF-19006', 'LCC PANEL - SAGULING', 'PT. GE GRID SOLUTIONS'),
('PF-19007', 'CABLE LiYCY - RTU Panel Takengon', 'PT. ABB SAKTI INDUSTRI'),
('PF-19008', 'RCP PANEL - GI. SAMALANGA', 'PT. GE GRID SOLUTIONS'),
('PF-19009', 'GI. Curug & GI. Ciledug', 'PT. GE GRID SOLUTIONS'),
('PF-19010', 'Aur Duri.', 'PT. GE GRID SOLUTIONS'),
('PF-19011', 'Bandung Selatan Project.', 'PT. ABB SAKTI INDUSTRI'),
('PF-19012', 'Tonsea Tasikria', 'PT.ABB SAKTI INDUSTRI'),
('PF-19013', 'Topoyo substation (MK )', 'PT. ABB SAKTI INDUSTRI'),
('PF-19014', 'TELUK NAGA II', 'PT. GE GRID SOLUTIONS'),
('PF-19015', 'topoyo substation (RCP)', 'PT. ABB SAKTI INDUSTRI'),
('PF-19016', 'Sungai Rumbai', 'PT. SIEMENS INDONESIA'),
('PF-19017', 'PLTMG TERNATE', 'PT. BUANA REKSA BINAPERKASA'),
('PF-19018', 'TANJUNG JATI', 'PT. TOSIBHA ASIA PACIPIC INDONESIA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_user`
--

CREATE TABLE `tabel_user` (
  `id_karyawan` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `nik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_user`
--

INSERT INTO `tabel_user` (`id_karyawan`, `username`, `password`, `level`, `nik`) VALUES
(1, 'admin', 'admin', 'admin', ''),
(2, 'indra', 'indra', 'payroll', 'EEN1111'),
(3, 'axel', 'axel', 'guru', 'EEN1112');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabel_detail_kegiatan`
--
ALTER TABLE `tabel_detail_kegiatan`
  ADD PRIMARY KEY (`id_detail_kegiatan`);

--
-- Indeks untuk tabel `tabel_detail_project`
--
ALTER TABLE `tabel_detail_project`
  ADD PRIMARY KEY (`id_detail_project`);

--
-- Indeks untuk tabel `tabel_job_desc`
--
ALTER TABLE `tabel_job_desc`
  ADD PRIMARY KEY (`id_job`);

--
-- Indeks untuk tabel `tabel_karyawan`
--
ALTER TABLE `tabel_karyawan`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `tabel_kegiatan`
--
ALTER TABLE `tabel_kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indeks untuk tabel `tabel_project`
--
ALTER TABLE `tabel_project`
  ADD PRIMARY KEY (`project_number`);

--
-- Indeks untuk tabel `tabel_user`
--
ALTER TABLE `tabel_user`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tabel_detail_kegiatan`
--
ALTER TABLE `tabel_detail_kegiatan`
  MODIFY `id_detail_kegiatan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_detail_project`
--
ALTER TABLE `tabel_detail_project`
  MODIFY `id_detail_project` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tabel_job_desc`
--
ALTER TABLE `tabel_job_desc`
  MODIFY `id_job` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tabel_kegiatan`
--
ALTER TABLE `tabel_kegiatan`
  MODIFY `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `tabel_user`
--
ALTER TABLE `tabel_user`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
