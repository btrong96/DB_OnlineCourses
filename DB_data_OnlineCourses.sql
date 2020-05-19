-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `baigiang`
--

DROP TABLE IF EXISTS `baigiang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `baigiang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thutu` int(11) NOT NULL,
  `tenbaigiang` varchar(100) NOT NULL,
  `anhdaidien` varchar(200) DEFAULT NULL,
  `ngayTao` date DEFAULT NULL,
  `thoiluong` varchar(100) DEFAULT NULL,
  `ngayCapNhat` date DEFAULT NULL,
  `mota` varchar(2000) DEFAULT NULL,
  `ngayDang` date DEFAULT NULL,
  `daDuyet` tinyint(4) DEFAULT NULL,
  `giangvien_id` int(11) NOT NULL,
  `khoahoc_id` int(11) NOT NULL,
  `nameCode` varchar(100) DEFAULT NULL,
  `mienPhi` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_baigiang_giangvien1_idx` (`giangvien_id`),
  KEY `fk_baigiang_khoahoc1_idx` (`khoahoc_id`),
  CONSTRAINT `fk_baigiang_giangvien1` FOREIGN KEY (`giangvien_id`) REFERENCES `giangvien` (`id`),
  CONSTRAINT `fk_baigiang_khoahoc1` FOREIGN KEY (`khoahoc_id`) REFERENCES `khoahoc` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baigiang`
--

LOCK TABLES `baigiang` WRITE;
/*!40000 ALTER TABLE `baigiang` DISABLE KEYS */;
INSERT INTO `baigiang` VALUES (1,1,'Làm quen với Java','java1.jpg','2019-12-12','1h','2019-12-12','Java.Khóa học dành cho các bạn đã nắm chắc các kiến thức về Java Core.  Bài giảng dành cho các bạn đã nắm chắc các kiến thức về Java Core. Được làm việc với các công nghệ làm việc trong dự án thực tế như Struts,...','2019-12-12',1,1,1,'vjcn-dBH2lw',1),(2,2,'Bài Java 1','logo.jpg','2020-12-12','2h','2020-12-12','Bài học Java 1. They’re treated like heroes and tasked with the duty of saving the human race from utter extinction.  Bài giảng dành cho các bạn đã nắm chắc các kiến thức về Java Core. Được làm việc với các công nghệ làm việc trong dự án thực tế như Struts,...','2020-12-12',1,4,1,'WTJSt4wP2ME',1),(3,3,'Bài Java 2','oracle_book.jpg','2020-05-05','2h','2020-05-05','Bài học Java 2. Lập trình nhúng đang là một trong những ngành hot nhất hiện nay.  Bài giảng dành cho các bạn đã nắm chắc các kiến thức về Java Core. Được làm việc với các công nghệ làm việc trong dự án thực tế như Struts,...','2020-05-05',1,3,1,'pRpeEdMmmQ0',0),(13,4,'Bài C# 1','item7.png','2020-05-05','3h',NULL,'Bài học C# 1. They’re treated like heroes and tasked with the duty of saving the human race from utter extinction. Khóa học dành cho các bạn đã nắm chắc các kiến thức về C# Core. Được làm việc với các công nghệ làm việc trong dự án thực tế như Hibernate,.','2020-05-05',1,3,2,'2cBqk2D0dF0',1),(18,5,'Bài C# 2','item3.png','2020-12-12','2g',NULL,'Bài học C# 2.Vì lập trình này chỉ được xây dựng cho một số nhiệm vụ nhất định. Khóa học dành cho các bạn đã nắm chắc các kiến thức về C# Core. Được làm việc với các công nghệ làm việc trong dự án thực tế như Hibernate,.','2020-12-12',1,1,2,'v7lCrWf54Zs',0),(19,6,'Bài học Nhúng 1','item8.png','2020-05-05','1h',NULL,'Bài học Nhúng 1. They’re treated like heroes and tasked with the duty of saving the human race from utter extinction.','2020-12-12',1,1,3,'94Rxdh7mFDk',1),(20,7,'Bài học Nhúng 2','java1.jpg','2020-05-05','1,5h',NULL,'Bài học Nhúng 2.Vì lập trình này chỉ được xây dựng cho một số nhiệm vụ nhất định ','2020-12-12',1,4,3,'mk48xRzuNvA',0),(21,8,'Bài học Nhúng 3','item6.png','2020-05-05','4h',NULL,'Bài học Nhúng 3.Lập trình nhúng đang là một trong những ngành hot nhất hiện nay','2020-12-12',1,3,3,'wGY81Ms6OLs',0),(24,9,'Làm quen với NodeJs','4.jpg','2020-05-07','3h','2020-05-07','	Bài học NoDeJS. They’re treated like heroes and tasked with the duty of saving the human race from utter extinction. Khóa học dành cho các bạn đã nắm chắc các kiến thức về C# Core. Được làm việc với các công nghệ làm việc trong dự án thực tế như Hibernate,.','2020-05-07',1,4,6,'wJnBTPUQS5A',1),(25,10,'Bài giảng NodeJS 1','item10.png','2020-05-07','2h','2020-05-07','Bài học NoDeJS. They’re treated like heroes and tasked with the duty of saving the human race from utter extinction. Khóa học dành cho các bạn đã nắm chắc các kiến thức về C# Core. Được làm việc với các công nghệ làm việc trong dự án thực tế như Hibernate,.','2020-05-07',1,5,6,'RgKAFK5djSk',0),(26,11,'Bài giảng NodeJS  2','contact.png','2020-05-07','3h','2020-05-07','Bài học NoDeJS. They’re treated like heroes and tasked with the duty of saving the human race from utter extinction. Khóa học dành cho các bạn đã nắm chắc các kiến thức về C# Core. Được làm việc với các công nghệ làm việc trong dự án thực tế như Hibernate,.','2020-05-07',1,6,6,'TGtWWb9emYI',0),(27,12,'Bài giảng NodeJS  3','blog1.jpg','2020-05-07','2h','2020-05-07','	Bài học NoDeJS. They’re treated like heroes and tasked with the duty of saving the human race from utter extinction. Khóa học dành cho các bạn đã nắm chắc các kiến thức về C# Core. Được làm việc với các công nghệ làm việc trong dự án thực tế như Hibernate,.','2020-05-07',1,5,6,'Lod6x-WovPs',0),(28,13,'Giới thiệu bài học tiếng anh','1.jpg','2020-05-08','2h','2020-05-08','Bài học Tiếng Anh. They’re treated like heroes and tasked with the duty of saving the human race from utter extinction. Khóa học dành cho các bạn đã nắm chắc các kiến thức về C# Core. Được làm việc với các công nghệ làm việc trong dự án thực tế như Hibernate,.','2020-05-08',1,4,16,'zdpXSLuBfPk',1),(29,14,'Bài học tiếng  Anh 1','2.jpg','2020-05-08','4h','2020-05-08','	Bài học Tiếng Anh. They’re treated like heroes and tasked with the duty of saving the human race from utter extinction. Khóa học dành cho các bạn đã nắm chắc các kiến thức về C# Core. Được làm việc với các công nghệ làm việc trong dự án thực tế như Hibernate,.','2020-05-08',1,4,16,'J6Q7neUgAkM',1),(30,15,'Bài giảng Tiếng Anh 2','3.jpg','2020-05-08','1h','2020-05-08','Bài học Tiếng Anh. They’re treated like heroes and tasked with the duty of saving the human race from utter extinction. Khóa học dành cho các bạn đã nắm chắc các kiến thức về C# Core. Được làm việc với các công nghệ làm việc trong dự án thực tế như Hibernate,.','2020-05-08',1,4,16,'5_HN2vaAVXI',1);
/*!40000 ALTER TABLE `baigiang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capdo`
--

DROP TABLE IF EXISTS `capdo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capdo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tencapdo` varchar(100) NOT NULL,
  `mota` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capdo`
--

LOCK TABLES `capdo` WRITE;
/*!40000 ALTER TABLE `capdo` DISABLE KEYS */;
INSERT INTO `capdo` VALUES (1,'Cơ bản','Cơ bản'),(2,'Nâng cao','Nâng cao');
/*!40000 ALTER TABLE `capdo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitiethoadon`
--

DROP TABLE IF EXISTS `chitiethoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitiethoadon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SoLuong` int(11) NOT NULL,
  `ThanhToan` decimal(10,0) DEFAULT NULL,
  `MoTa` varchar(2000) DEFAULT NULL,
  `hoadon_id` int(11) NOT NULL,
  `khoahoc_id` int(11) NOT NULL,
  `tenKhoaHoc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ChiTietHoaDon_hoadon1_idx` (`hoadon_id`),
  KEY `fk_ChiTietHoaDon_khoahoc1_idx` (`khoahoc_id`),
  CONSTRAINT `fk_ChiTietHoaDon_hoadon1` FOREIGN KEY (`hoadon_id`) REFERENCES `hoadon` (`id`),
  CONSTRAINT `fk_ChiTietHoaDon_khoahoc1` FOREIGN KEY (`khoahoc_id`) REFERENCES `khoahoc` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitiethoadon`
--

LOCK TABLES `chitiethoadon` WRITE;
/*!40000 ALTER TABLE `chitiethoadon` DISABLE KEYS */;
INSERT INTO `chitiethoadon` VALUES (7,8,999999,'Đăng ký lập trình nhúng',10,3,'Nhúng'),(8,5,223432,'Đăng ký lập trình C#',11,2,'Lập trình C#'),(10,8,234234,' Đăng ký lập trình Java',10,1,'Lập trình Java');
/*!40000 ALTER TABLE `chitiethoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chucnang`
--

DROP TABLE IF EXISTS `chucnang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chucnang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenchucnang` varchar(100) NOT NULL,
  `mota` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tenchucnang_UNIQUE` (`tenchucnang`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chucnang`
--

LOCK TABLES `chucnang` WRITE;
/*!40000 ALTER TABLE `chucnang` DISABLE KEYS */;
INSERT INTO `chucnang` VALUES (1,'loai','1'),(2,'chuDe','OK. OK'),(3,'khoaHoc','3'),(4,'baiGiang',NULL),(5,'nguoiDung',NULL),(6,'giangVien',NULL),(7,'khachHang',NULL),(8,'capDo',NULL),(9,'vaiTro',NULL),(10,'phanQuyen',NULL),(11,'hoaDon',NULL),(12,'nhanXet',NULL),(13,'nhatKy',NULL),(14,'chucNang',NULL),(15,'nguoiDung_KhoaHoc',NULL),(16,'chiTietHoaDon',NULL),(17,'baiGiangTheoKhoaHoc',NULL);
/*!40000 ALTER TABLE `chucnang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chude`
--

DROP TABLE IF EXISTS `chude`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chude` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenchude` varchar(100) NOT NULL,
  `anhdaidien` varchar(100) DEFAULT NULL,
  `mota` varchar(2000) DEFAULT NULL,
  `Loai_id` int(11) NOT NULL,
  `tenloai` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_chude_Loai1_idx` (`Loai_id`),
  CONSTRAINT `fk_chude_Loai1` FOREIGN KEY (`Loai_id`) REFERENCES `loai` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chude`
--

LOCK TABLES `chude` WRITE;
/*!40000 ALTER TABLE `chude` DISABLE KEYS */;
INSERT INTO `chude` VALUES (1,'Lập trình Java Core','head-java.png','Lập trình Java. Java được chia làm 3 mảng chính là Java desktop, Java web và lập trình trên các thiết bị di động như Android...',1,'Java '),(2,'Lập trình Java nâng cao','java1.jpg','Lập trình Java. Java được chia làm 3 mảng chính là Java desktop, Java web và lập trình trên các thiết bị di động như Android...',1,'Java '),(3,'Lập trình C#','csharp1.jpg','Lập trình C#. .Net của Microsoft với các nền tảng chính đó là: WindowsForm, WebForm, Windows Phone...',2,'C#'),(4,'Lập trình C# nâng cao','csharp4.jpg','Lập trình C#.  .Net của Microsoft với các nền tảng chính đó là: WindowsForm, WebForm, Windows Phone...',2,'C#'),(5,'Tiếng anh cơ bản','gallery1.png','Tiếng anh cơ bản. Giành cho người mới bắt đầu ...',4,'English'),(6,'Tiếng anh giao tiếp','gallery6.png','Tiếng anh giao tiếp. Giành cho những người đã có nền tảng vững về tiếng anh...',4,'English'),(7,'Tiếng anh cho người đi làm','logo.jpg','Tiếng anh cho người đi làm. Giành cho những người bận rộn cần nâng cao trình độ tiếng anh khi làm việc,...',4,'English');
/*!40000 ALTER TABLE `chude` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giangvien`
--

DROP TABLE IF EXISTS `giangvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giangvien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tengiangvien` varchar(200) NOT NULL,
  `anhdaidien` varchar(100) DEFAULT NULL,
  `chucdanh` varchar(100) DEFAULT NULL,
  `chuyenmon` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giangvien`
--

LOCK TABLES `giangvien` WRITE;
/*!40000 ALTER TABLE `giangvien` DISABLE KEYS */;
INSERT INTO `giangvien` VALUES (1,'Lê Văn Tuấn','2.jpg','giảng viên Java ','Lập trình Java. Giảng viên của Trung tâm được đào tạo từ các trường đại học danh tiếng trên thế giới (Hoa Kỳ, Pháp, Úc, Nhật Bản…),'),(2,'Phạm Minh Hoàng','1.jpg','giảng viên .Net','Lập trình .Net. Giảng viên của Trung tâm được đào tạo từ các trường đại học danh tiếng trên thế giới (Hoa Kỳ, Pháp, Úc, Nhật Bản…)'),(3,'Nguyễn Văn Cảnh','3.jpg','giảng viên PLC','Lập trình PLC. Giảng viên của Trung tâm được đào tạo từ các trường đại học danh tiếng trên thế giới (Hoa Kỳ, Pháp, Úc, Nhật Bản…)'),(4,'Phạm Đức Duy','img3.png','giảng viên Ruby on rails','lập trình Ruby on rails. Giảng viên của Trung tâm được đào tạo từ các trường đại học danh tiếng trên thế giới (Hoa Kỳ, Pháp, Úc, Nhật Bản…)'),(5,'Nguyễn Công Phụng ','item8.png','giảng viên Python','lập trình Python. Giảng viên của Trung tâm được đào tạo từ các trường đại học danh tiếng trên thế giới (Hoa Kỳ, Pháp, Úc, Nhật Bản…)'),(6,'Hoàng Duy Nguyện','blog1.jpg','giảng viên Nhúng','lập trình Nhúng. Giảng viên của Trung tâm được đào tạo từ các trường đại học danh tiếng trên thế giới (Hoa Kỳ, Pháp, Úc, Nhật Bản…)');
/*!40000 ALTER TABLE `giangvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoadon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ngaymua` date NOT NULL,
  `ghichu` varchar(2000) DEFAULT NULL,
  `daThanhToan` float NOT NULL,
  `khachhang_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_hoadon_khachhang_idx` (`khachhang_id`),
  CONSTRAINT `fk_hoadon_khachhang` FOREIGN KEY (`khachhang_id`) REFERENCES `khachhang` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
INSERT INTO `hoadon` VALUES (9,'2020-04-13','Đăng ký khóa học Java',123123,1),(10,'2020-04-13','Đăng ký khóa học C#',3312,1),(11,'2020-04-13','Đăng ký khóa học NodeJs',313,2),(12,'2020-04-13','test',313123,3);
/*!40000 ALTER TABLE `hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khachhang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenKhachHang` varchar(100) NOT NULL,
  `diaChi` varchar(500) DEFAULT NULL,
  `dienThoai` varchar(20) DEFAULT NULL,
  `CMND` varchar(20) DEFAULT NULL,
  `ngayCap` date DEFAULT NULL,
  `noiCap` varchar(1000) DEFAULT NULL,
  `maSoThue` varchar(50) DEFAULT NULL,
  `ngayTao` date DEFAULT NULL,
  `ngayCapNhat` date DEFAULT NULL,
  `moTa` varchar(1000) DEFAULT NULL,
  `nguoidung_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_khachhang_nguoidung1_idx` (`nguoidung_id`),
  CONSTRAINT `fk_khachhang_nguoidung1` FOREIGN KEY (`nguoidung_id`) REFERENCES `nguoidung` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES (1,'Bùi Duy Trọng','Nam Định','0964058931','123456789','2018-09-06','Nam Định','SF001','2019-03-08','2020-08-01','dev',2),(2,'Bùi Văn Sang','Hà Nội','2234324213','432423432','2017-08-08','Hà Nội','SF002','2020-10-24','2020-04-23','dev',3),(3,'Trần Anh Tuấn','Vĩnh Phúc','0942423423','09234242139','2014-09-06','Vĩnh Phúc','SF003','2014-09-06','2014-09-06','dev',4),(8,'ewqrewqr','qưerewqrqw','424','qeww24','2020-02-02','dgdfs','ettewt','2020-03-25',NULL,'gdfs',4);
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khoahoc`
--

DROP TABLE IF EXISTS `khoahoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khoahoc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenkhoahoc` varchar(200) NOT NULL,
  `anhdaidien` varchar(100) DEFAULT NULL,
  `ngayxuatban` date DEFAULT NULL,
  `ngayCapNhat` date DEFAULT NULL,
  `ngayDang` date DEFAULT NULL,
  `daDuyet` tinyint(4) DEFAULT NULL,
  `mienphi` tinyint(4) DEFAULT NULL,
  `hocphi` double DEFAULT NULL,
  `moTa` varchar(2000) DEFAULT NULL,
  `chude_id` int(11) NOT NULL,
  `capdo_id` int(11) NOT NULL,
  `giangvien_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_khoahoc_chude_idx` (`chude_id`),
  KEY `fk_khoahoc_capdo1_idx` (`capdo_id`),
  KEY `fk_khoahoc_giangvien1_idx` (`giangvien_id`),
  CONSTRAINT `fk_khoahoc_capdo1` FOREIGN KEY (`capdo_id`) REFERENCES `capdo` (`id`),
  CONSTRAINT `fk_khoahoc_chude` FOREIGN KEY (`chude_id`) REFERENCES `chude` (`id`),
  CONSTRAINT `fk_khoahoc_giangvien1` FOREIGN KEY (`giangvien_id`) REFERENCES `giangvien` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khoahoc`
--

LOCK TABLES `khoahoc` WRITE;
/*!40000 ALTER TABLE `khoahoc` DISABLE KEYS */;
INSERT INTO `khoahoc` VALUES (1,'Lập trình Java','java1.jpg','2019-08-06','2019-08-06','2019-08-06',1,0,434234,'Khóa học dành cho các bạn đã nắm chắc các kiến thức về Java Core. Được  làm việc với các công nghệ làm việc trong dự án thực tế như Struts,...',1,1,1),(2,'Lập trình C#','item3.png','2020-05-14','2020-05-14','2020-04-03',1,0,645634,'They’re treated like heroes and tasked with the duty of saving the human race from utter extinction.',3,2,2),(3,'Nhúng','java3.jpg','2020-05-14','2020-05-14','2019-02-02',1,0,5435344,'Khóa học dành cho các bạn đã nắm chắc các kiến thức về C# Core. Được làm việc với các công nghệ làm việc trong dự án thực tế như Hibernate,.',1,2,2),(6,'NodeJS','item8.png','2019-04-04','2020-03-26','2020-03-26',1,0,233,'Lập trình nhúng đang là một trong những ngành hot nhất hiện nay. Rất ít trường đào tạo lập trình nhúng trong khi nhu cầu nguồn nhân lực lại thiếu hụt. Vậy lập trình nhúng là gì và tại sao ngành lập trình nhúng lại hót',1,1,1),(16,'Tiếng Anh','item6.png','2019-05-05','2019-05-05','2019-05-05',1,1,223,'Mục đích chủ yếu là để phục vụ các bài toán chuyên dụng trong nhiều lĩnh vực công nghiệp, tự động hóa điều khiển, truyền tin. Hệ thống nhúng thường được thiết kế để thực hiện một chức năng chuyên trách, riêng biệt nào đó.',5,1,4),(17,'aa','item7.png','2020-05-10','2020-05-10','2020-05-05',1,1,3452345,'Vì lập trình này chỉ được xây dựng cho một số nhiệm vụ nhất định nên các người tạo lập có thể tối ưu hóa nó nhằm tối thiểu kích thước và chi phí. Hệ thống nhúng rất đa dạng, phong phú về chủng loại.',3,2,4),(86,'AAAAAA','fun.jpeg','2020-05-10','2020-05-10','2020-03-27',1,0,1111,'Sửa sang tên mới hoàn toàn',1,1,1);
/*!40000 ALTER TABLE `khoahoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loai`
--

DROP TABLE IF EXISTS `loai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenLoai` varchar(45) NOT NULL,
  `moTa` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loai`
--

LOCK TABLES `loai` WRITE;
/*!40000 ALTER TABLE `loai` DISABLE KEYS */;
INSERT INTO `loai` VALUES (1,'Java ','Java là một ngôn ngữ lập trình hướng đối tượng (OOP) và dựa trên các lớp . Khác với phần lớn ngôn ngữ lập trình thông thường, Java được thiết kế để biên dịch mã nguồn thành bytecode sau đó sẽ được môi trường thực thi '),(2,'C#','Ngôn ngữ lập trình C# giúp cho các bạn tự học C# có một lộ trình học C# một cách dễ dàng nhất.'),(3,'PHP','Ngôn ngữ lập trình PHP giúp cho các bạn tự học PHP có một lộ trình học PHP một cách dễ dàng nhất.'),(4,'English','Khóa học tiếng anh cho mọi người ');
/*!40000 ALTER TABLE `loai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoidung`
--

DROP TABLE IF EXISTS `nguoidung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nguoidung` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taikhoan` varchar(100) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `hoten` varchar(100) DEFAULT NULL,
  `dienthoai` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `ngayTao` date DEFAULT NULL,
  `ngayCapNhat` date DEFAULT NULL,
  `vaitro_id` int(11) NOT NULL,
  `trangThai` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taikhoan_UNIQUE` (`taikhoan`),
  KEY `fk_nguoidung_vaitro1_idx` (`vaitro_id`),
  CONSTRAINT `fk_nguoidung_vaitro1` FOREIGN KEY (`vaitro_id`) REFERENCES `vaitro` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoidung`
--

LOCK TABLES `nguoidung` WRITE;
/*!40000 ALTER TABLE `nguoidung` DISABLE KEYS */;
INSERT INTO `nguoidung` VALUES (2,'btrong96','a202jinhofm','Bùi Duy Trọng','1242345464','btrong96@gmail.com','2018-07-03','2020-03-07',3,1),(3,'bsang99','a2028','Bùi Xuân Sang','123456789','bsang99@gmail.com','2019-09-01','2020-09-08',3,1),(4,'tuantran','ca46acbf17545da7b2c1227768d5b8cc','Trần Anh Tuấn','1242345464','ttuan96@gmail.com','2018-07-03','2020-05-01',3,1),(40,'admin3','202cb962ac59075b964b07152d234b70','admin3','099989898','admin3@gmail.com','2020-04-15',NULL,1,1),(41,'admin','e10adc3949ba59abbe56e057f20f883e','admin','0192823493','admin@gmail.com','2020-04-15','2020-05-01',1,1),(42,'admin2','827ccb0eea8a706c4c34a16891f84e7b','admin2','0986342322','admin2@gmail.com','2020-04-15','2020-05-01',1,1),(43,'abc','900150983cd24fb0d6963f7d28e17f72','abc','12234234','abc@gmail.com','2020-04-15',NULL,3,1),(53,'lehongquang','dc13451b04a207e56b0ba8b1c00afde0','Lê Hồng Quang','0932424234','lehongquang','2020-05-01',NULL,3,1),(58,'OK','444bcb3a3fcf8389296c49467f27e1d6','OK','0984352323','fasdfsdaf','2020-05-03',NULL,3,0),(62,'trong','c6330ca473aab1aa19daf6d1b4994839','Bùi duy Trọng','0984352323','lehongquang@gmail.com','2020-05-05',NULL,3,1),(93,'aa','4124bc0a9335c27f086f24ba207a4912','Bùi Văn AA','0984352323','lehongquang@gmail.com','2020-05-12',NULL,3,0),(96,'aaBBBB','4148728ebfc1e253d23ac5886c121321','Vũ Hồng Sơn','0984352323','lehongquang@gmail.com','2020-05-13',NULL,3,0),(97,'aabbbbbbbbbbbbbb','a31847e8c33c6311c43e716855f6afcd','aaaaa','0984352323','lehongquang@gmail.com','2020-05-14',NULL,3,0),(98,'giangvien','2f830951c2e27fcf934a92d091971a02','giangvien','0964058930','btrong96@gmail.com','2020-05-14','2020-05-14',2,1);
/*!40000 ALTER TABLE `nguoidung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoidung_khoahoc`
--

DROP TABLE IF EXISTS `nguoidung_khoahoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nguoidung_khoahoc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nguoidung_id` int(11) NOT NULL,
  `khoahoc_id` int(11) NOT NULL,
  `ngayCap` date DEFAULT NULL,
  `tenNguoiDung` varchar(100) DEFAULT NULL,
  `tenKhoaHoc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_nguoidung_khoahoc_nguoidung1_idx` (`nguoidung_id`),
  KEY `fk_nguoidung_khoahoc_khoahoc1_idx` (`khoahoc_id`),
  CONSTRAINT `fk_nguoidung_khoahoc_khoahoc1` FOREIGN KEY (`khoahoc_id`) REFERENCES `khoahoc` (`id`),
  CONSTRAINT `fk_nguoidung_khoahoc_nguoidung1` FOREIGN KEY (`nguoidung_id`) REFERENCES `nguoidung` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoidung_khoahoc`
--

LOCK TABLES `nguoidung_khoahoc` WRITE;
/*!40000 ALTER TABLE `nguoidung_khoahoc` DISABLE KEYS */;
INSERT INTO `nguoidung_khoahoc` VALUES (6,2,1,'2020-04-15','Bùi Duy Trọng','Lập trình Java'),(7,4,3,'2020-04-15','Trần Anh Tuấn','Nhúng'),(8,40,3,'2020-04-15','admin3','Nhúng'),(9,41,1,'2020-05-07','admin','Lập trình Java'),(10,42,2,'2020-05-07','admin2','Lập trình C#'),(11,41,2,'2020-05-07','admin','Lập trình C#'),(13,41,6,'2020-05-08','admin','NodeJS');
/*!40000 ALTER TABLE `nguoidung_khoahoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanxet`
--

DROP TABLE IF EXISTS `nhanxet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanxet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noidung` varchar(2000) NOT NULL,
  `thoiGianTao` datetime DEFAULT NULL,
  `thoiGianCapNhat` datetime DEFAULT NULL,
  `baigiang_id` int(11) NOT NULL,
  `nguoidung_id` int(11) NOT NULL,
  `tenBaiGiang` varchar(100) DEFAULT NULL,
  `tenNguoiDung` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_nhanxet_baigiang1_idx` (`baigiang_id`),
  KEY `fk_nhanxet_nguoidung1_idx` (`nguoidung_id`),
  CONSTRAINT `fk_nhanxet_baigiang1` FOREIGN KEY (`baigiang_id`) REFERENCES `baigiang` (`id`),
  CONSTRAINT `fk_nhanxet_nguoidung1` FOREIGN KEY (`nguoidung_id`) REFERENCES `nguoidung` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanxet`
--

LOCK TABLES `nhanxet` WRITE;
/*!40000 ALTER TABLE `nhanxet` DISABLE KEYS */;
INSERT INTO `nhanxet` VALUES (2,'OK ok','2020-04-12 00:00:00','2020-04-13 00:00:00',2,2,'Bài Java 1','Bùi Duy Trọng'),(8,'ok man','2020-04-14 00:00:00','2020-04-14 00:00:00',3,3,'Bài Java 2','Bùi Xuân Sang'),(17,'helloEveryOne','2020-05-04 00:00:00',NULL,1,41,'Làm quen với Java','admin'),(18,'Tao là admin','2020-05-04 00:00:00',NULL,1,42,'Làm quen với Java','admin2'),(19,'hello, what is your name ?','2020-05-04 00:00:00',NULL,2,41,'Bài Java 1','admin'),(20,'Hi. what is your name ?','2020-05-05 00:00:00',NULL,19,41,'Bài học Nhúng 1','admin'),(21,'Bài giảng hay','2020-05-05 00:00:00',NULL,1,40,'Làm quen với Java','admin3'),(23,'iiiiiiiiiiii','2020-05-05 00:00:00',NULL,1,40,'Làm quen với Java','admin3'),(24,'bài hay','2020-05-05 00:00:00',NULL,1,40,'Làm quen với Java','admin3'),(25,'Khóa học dành cho các bạn đã nắm chắc các kiến thức về Java Core. Được làm việc với các công nghệ làm việc trong dự án thực tế như','2020-05-05 00:00:00',NULL,1,40,'Làm quen với Java','admin3'),(26,'Bài hát hay','2020-05-08 00:00:00',NULL,18,41,'Bài C# 2','admin'),(27,'Bài giảng hay','2020-05-09 00:00:00',NULL,26,41,'Bài giảng NodeJS  2','admin');
/*!40000 ALTER TABLE `nhanxet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhatky`
--

DROP TABLE IF EXISTS `nhatky`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhatky` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nguoidung_id` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `chucnang` varchar(100) DEFAULT NULL,
  `ngay` date DEFAULT NULL,
  `hoatdong` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=587 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhatky`
--

LOCK TABLES `nhatky` WRITE;
/*!40000 ALTER TABLE `nhatky` DISABLE KEYS */;
INSERT INTO `nhatky` VALUES (422,41,'admin','Quan ly Loai','2020-05-10','Cap nhat doi tuong Loai:  (Ten loai: a), ( Mo ta: aaaa) => CAP NHAT THANH  (Ten loai: CCCCC), ( Mo ta: aaaa)'),(423,41,'admin','Quan ly Loai','2020-05-10','Cap nhat doi tuong Loai:  (Ten loai: CCCCC), ( Mo ta: aaaa) => CAP NHAT THANH  (Ten loai: CCCCC), ( Mo ta: CCCCCCCCCC)'),(424,41,'admin','Quan ly Loai','2020-05-10','Cap nhat doi tuong Loai:  (Ten loai: bb), ( Mo ta: dfsgdfgdsfg) => CAP NHAT THANH  (Ten loai: bb), ( Mo ta: BBBBBBBBBBB)'),(425,41,'admin','Quan ly Loai','2020-05-10','Cap nhat doi tuong Loai:  (Ten loai: CCCCC), ( Mo ta: CCCCCCCCCC) => CAP NHAT THANH  (Ten loai: cccc), ( Mo ta: CCCCCCCCCC)'),(426,41,'admin','Quan ly Loai','2020-05-10','Cap nhat doi tuong Loai:  (Ten loai: cccc), ( Mo ta: CCCCCCCCCC) => CAP NHAT THANH  (Ten loai: cccc), ( Mo ta: cc)'),(427,41,'admin','Quan ly Loai','2020-05-10','Cap nhat doi tuong Loai:  (Ten loai: aaa), ( Mo ta: saaaa) => CAP NHAT THANH  (Ten loai: aaa), ( Mo ta: AAAAA)'),(428,41,'admin','Quan ly Loai','2020-05-10','Xoa doi tuong Loai:  (Ten loai: cccc), ( Mo ta: cc)'),(429,41,'admin','Quan ly khoa hoc','2020-05-10','Cap nhat doi tuong Khoa Hoc:  (Ten Khoa Hoc: ooo), ( Ngay Xuat Ban: 2020-05-05), ( Ngay Cap Nhat: 2020-05-05), (Ngay Dang: 2020-05-05), (Da Duyet: true), (Mien Phi: true), (Hoc Phi: 3452345.0), (Mo Ta: Vì lập trình này chỉ được xây dựng cho một số nhiệm vụ nhất định nên các người tạo lập có thể tối ưu hóa nó nhằm tối thiểu kích thước và chi phí. Hệ thống nhúng rất đa dạng, phong phú về chủng loại.), (Chu De: Lập trình C#), (Cap Do: Nâng cao), (Giang Vien: Phạm Đức Duy)=> CAP NHAT THANH  (Ten Khoa Hoc: aa), ( Ngay Xuat Ban: 2020-05-10), (Ngay Cap Nhat: 2020-05-10), (Ngay Dang: 2020-05-05), (Da Duyet: true), (Mien Phi: true), (Hoc Phi: 3452345.0), (Mo Ta: Vì lập trình này chỉ được xây dựng cho một số nhiệm vụ nhất định nên các người tạo lập có thể tối ưu hóa nó nhằm tối thiểu kích thước và chi phí. Hệ thống nhúng rất đa dạng, phong phú về chủng loại.), (Chu De: Lập trình C#), (Cap Do: Nâng cao), (Giang Vien: Phạm Đức Duy)'),(430,41,'admin','Quan ly khoa hoc','2020-05-10','Them doi tuong Khoa Hoc:  (Ten Khoa Hoc: bb), ( Ngay Xuat Ban: 2020-05-10), (Ngay Dang: 2020-05-10), (Da Duyet: true), (Mien Phi: true), (Hoc Phi: 11111.0), (Mo Ta: bbbbb), (Chu De: Lập trình Java Core), (Cap Do: Cơ bản), (Giang Vien: Lê Văn Tuấn)'),(431,41,'admin','Quan ly khoa hoc','2020-05-10','Them doi tuong Khoa Hoc:  (Ten Khoa Hoc: aaa), ( Ngay Xuat Ban: 2020-05-10), (Ngay Dang: 2020-05-10), (Da Duyet: true), (Mien Phi: true), (Hoc Phi: 1111.0), (Mo Ta: 3 a nen them dc), (Chu De: Lập trình Java Core), (Cap Do: Cơ bản), (Giang Vien: Lê Văn Tuấn)'),(432,41,'admin','Quan ly khoa hoc','2020-05-10','Cap nhat doi tuong Khoa Hoc:  (Ten Khoa Hoc: aaa), ( Ngay Xuat Ban: 2020-05-10), ( Ngay Cap Nhat: 2020-05-10), (Ngay Dang: 2020-05-10), (Da Duyet: true), (Mien Phi: true), (Hoc Phi: 1111.0), (Mo Ta: 3 a nen them dc), (Chu De: Lập trình Java Core), (Cap Do: Cơ bản), (Giang Vien: Lê Văn Tuấn)=> CAP NHAT THANH  (Ten Khoa Hoc: aa), ( Ngay Xuat Ban: 2020-05-10), (Ngay Cap Nhat: 2020-05-10), (Ngay Dang: 2020-05-10), (Da Duyet: true), (Mien Phi: true), (Hoc Phi: 1111.0), (Mo Ta: 3 a nen them dc), (Chu De: Lập trình Java Core), (Cap Do: Cơ bản), (Giang Vien: Lê Văn Tuấn)'),(433,41,'admin','Quan ly khoa hoc','2020-05-10','Cap nhat doi tuong Khoa Hoc:  (Ten Khoa Hoc: aa), ( Ngay Xuat Ban: 2020-05-10), ( Ngay Cap Nhat: 2020-05-10), (Ngay Dang: 2020-05-10), (Da Duyet: true), (Mien Phi: true), (Hoc Phi: 1111.0), (Mo Ta: 3 a nen them dc), (Chu De: Lập trình Java Core), (Cap Do: Cơ bản), (Giang Vien: Lê Văn Tuấn)=> CAP NHAT THANH  (Ten Khoa Hoc: aaa), ( Ngay Xuat Ban: 2020-05-10), (Ngay Cap Nhat: 2020-05-10), (Ngay Dang: 2020-05-10), (Da Duyet: true), (Mien Phi: true), (Hoc Phi: 1111.0), (Mo Ta: 3 a nen them dc), (Chu De: Lập trình Java Core), (Cap Do: Cơ bản), (Giang Vien: Lê Văn Tuấn)'),(434,41,'admin','Quan ly khoa hoc','2020-05-10','Cap nhat doi tuong Khoa Hoc:  (Ten Khoa Hoc: aaaAB), ( Ngay Xuat Ban: 2020-05-10), ( Ngay Cap Nhat: 2020-05-10), (Ngay Dang: 2020-03-27), (Da Duyet: true), (Mien Phi: false), (Hoc Phi: 1111.0), (Mo Ta: aaaaaaaaaaaaa), (Chu De: Lập trình Java Core), (Cap Do: Cơ bản), (Giang Vien: Lê Văn Tuấn)=> CAP NHAT THANH  (Ten Khoa Hoc: AAAAAA), ( Ngay Xuat Ban: 2020-05-10), (Ngay Cap Nhat: 2020-05-10), (Ngay Dang: 2020-03-27), (Da Duyet: true), (Mien Phi: false), (Hoc Phi: 1111.0), (Mo Ta: Sửa sang tên mới hoàn toàn), (Chu De: Lập trình Java Core), (Cap Do: Cơ bản), (Giang Vien: Lê Văn Tuấn)'),(435,41,'admin','Quan ly khoa hoc','2020-05-10','Cap nhat doi tuong Khoa Hoc:  (Ten Khoa Hoc: aaa), ( Ngay Xuat Ban: 2020-05-10), ( Ngay Cap Nhat: 2020-05-10), (Ngay Dang: 2020-05-10), (Da Duyet: true), (Mien Phi: true), (Hoc Phi: 1111.0), (Mo Ta: 3 a nen them dc), (Chu De: Lập trình Java Core), (Cap Do: Cơ bản), (Giang Vien: Lê Văn Tuấn)=> CAP NHAT THANH  (Ten Khoa Hoc: aaa), ( Ngay Xuat Ban: 2020-05-10), (Ngay Cap Nhat: 2020-05-10), (Ngay Dang: 2020-05-10), (Da Duyet: true), (Mien Phi: true), (Hoc Phi: 1111.0), (Mo Ta: Lấy tên cũ 3a. Nên vẫn cập nhật đc), (Chu De: Lập trình Java Core), (Cap Do: Cơ bản), (Giang Vien: Lê Văn Tuấn)'),(436,41,'admin','Quan ly Chu De','2020-05-10','Them doi tuong Chu De:  (Ten chu de: aa), ( Mo ta: aaaaa), (Loai: Java )'),(437,41,'admin','Quan ly Chu De','2020-05-10','Them doi tuong Chu De:  (Ten chu de: bb), ( Mo ta: bbbbbbbbbbbb), (Loai: Java )'),(438,41,'admin','Quan ly Chu De','2020-05-10','Them doi tuong Chu De:  (Ten chu de: ccc), ( Mo ta: adsfdsfsdaf), (Loai: Java )'),(439,41,'admin','Quan ly Chu De','2020-05-10','Cap nhat doi tuong Chu De:  (Ten Chu De: ccc), ( Mo ta: adsfdsfsdaf), (Loai: Java ) => CAP NHAT THANH  (Ten Chu De: CCCDDD), ( Mo ta: Doi sang ten moi hoan toan), (Loai: Java )'),(440,41,'admin','Quan ly Chu De','2020-05-10','Cap nhat doi tuong Chu De:  (Ten Chu De: CCCDDD), ( Mo ta: Doi sang ten moi hoan toan), (Loai: Java ) => CAP NHAT THANH  (Ten Chu De: CCCDDD), ( Mo ta: Giu nguyen Ten. Nhung van sua dc), (Loai: Java )'),(441,41,'admin','Quan ly Bai Giang','2020-05-10','Them doi tuong Bai Giang:  (Thu Tu: 20), ( Ten Bai Giang: aa), (Mo Ta:aaaaa), (Ten Giang Vien: Lê Văn Tuấn), (Ten Khoa Hoc: Lập trình Java)'),(442,41,'admin','Quan ly Bai Giang','2020-05-10','Them doi tuong Bai Giang:  (Thu Tu: 21), ( Ten Bai Giang: bb), (Mo Ta:bbbbbb), (Ten Giang Vien: Lê Văn Tuấn), (Ten Khoa Hoc: Lập trình Java)'),(443,41,'admin','Quan ly Bai Giang','2020-05-10','Cap nhat doi tuong Khoa Hoc:  (Thu Tu: 20), ( Ten Bai Giang: aa), (Mo Ta:aaaaa), (Ten Giang Vien: Lê Văn Tuấn), (Ten Khoa Hoc: Lập trình Java)=> CAP NHAT THANH  (Thu Tu: 20), ( Ten Bai Giang: aa), (Mo Ta:Sửa ko đổi tên), (Ten Giang Vien: Lê Văn Tuấn), (Ten Khoa Hoc: Lập trình Java)'),(444,41,'admin','Quan ly Bai Giang','2020-05-10','Cap nhat doi tuong Khoa Hoc:  (Thu Tu: 20), ( Ten Bai Giang: aa), (Mo Ta:Sửa ko đổi tên), (Ten Giang Vien: Lê Văn Tuấn), (Ten Khoa Hoc: Lập trình Java)=> CAP NHAT THANH  (Thu Tu: 20), ( Ten Bai Giang: AAAAAA), (Mo Ta:Sửa ko đổi tên), (Ten Giang Vien: Lê Văn Tuấn), (Ten Khoa Hoc: Lập trình Java)'),(445,41,'admin','Quan ly Nguoi Dung','2020-05-10','Them doi tuong Nguoi Dung:  (Ten Tai Khoan: aa), ( Ho Ten: aaa), (Dien Thoai:0964058930), (Email: lehongquang@gmail.com), (Ten Vai Tro: hocvien)'),(446,41,'admin','Quan ly Nguoi Dung','2020-05-10','Xoa doi tuong Nguoi Dung:  (Ten Tai Khoan: 12345), ( Ho Ten: dsafasdfasdfsdafdsa), (Dien Thoai:0984352323), (Email: lehongquang@gmail.com), (Ten Vai Tro: hocvien)'),(447,41,'admin','Quan ly Nguoi Dung','2020-05-10','Them doi tuong Nguoi Dung:  (Ten Tai Khoan: bb), ( Ho Ten: bbbbb), (Dien Thoai:0964058930), (Email: btrong96@gmail.com), (Ten Vai Tro: hocvien)'),(448,41,'admin','Quan ly Nguoi Dung','2020-05-10','Cap nhat doi tuong Nguoi Dung:  (Ten Tai Khoan: bb), ( Ho Ten: bbbbb), (Dien Thoai:0964058930), (Email: btrong96@gmail.com), (Ten Vai Tro: hocvien) => CAP NHAT THANH  (Ten Tai Khoan: BBBBBB), ( Ho Ten: Đã sửa đổi tài khoản), (Dien Thoai:0964058930), (Email: btrong96@gmail.com), (Ten Vai Tro: hocvien)'),(449,41,'admin','Quan ly Nguoi Dung','2020-05-10','Cap nhat doi tuong Nguoi Dung:  (Ten Tai Khoan: BBBBBB), ( Ho Ten: Đã sửa đổi tài khoản), (Dien Thoai:0964058930), (Email: btrong96@gmail.com), (Ten Vai Tro: hocvien) => CAP NHAT THANH  (Ten Tai Khoan: BBBBBB), ( Ho Ten: OK OK), (Dien Thoai:0964058930), (Email: btrong96@gmail.com), (Ten Vai Tro: hocvien)'),(450,41,'admin','Quan ly Cap Do','2020-05-10','Them doi tuong Cap Do:  (Ten Cap Do: aa), ( Mo ta: aaaaa)'),(451,41,'admin','Quan ly Cap Do','2020-05-10','Them doi tuong Cap Do:  (Ten Cap Do: bb), ( Mo ta: bbbb)'),(452,41,'admin','Quan ly Cap Do','2020-05-10','Cap nhat doi tuong Cap Do:  (Ten loai: bb), ( Mo ta: bbbb) => CAP NHAT THANH  (Ten loai: DDDD), ( Mo ta: doi ten cap do)'),(453,41,'admin','Quan ly Cap Do','2020-05-10','Cap nhat doi tuong Cap Do:  (Ten loai: DDDD), ( Mo ta: doi ten cap do) => CAP NHAT THANH  (Ten loai: DDDD), ( Mo ta: ko doi ten cap do)'),(454,41,'admin','Quan ly Cap Do','2020-05-10','Cap nhat doi tuong Cap Do:  (Ten loai: DDDD), ( Mo ta: ko doi ten cap do) => CAP NHAT THANH  (Ten loai: DDDD), ( Mo ta: aaaaaaaaaaaaaaaa)'),(455,41,'admin','Quan ly Cap Do','2020-05-10','Xoa doi tuong Cap Do:  (Ten loai: DDDD), ( Mo ta: aaaaaaaaaaaaaaaa)'),(456,41,'admin','Quan ly Cap Do','2020-05-10','Xoa doi tuong Cap Do:  (Ten loai: aa), ( Mo ta: aaaaa)'),(457,41,'admin','Quan ly Loai','2020-05-11','Them doi tuong Loai:  (Ten loai: aa), ( Mo ta: aaaaaa)'),(458,41,'admin','Quan ly Loai','2020-05-11','Them doi tuong Loai:  (Ten loai: bb), ( Mo ta: bbbbbbb)'),(459,41,'admin','Quan ly Loai','2020-05-11','Them doi tuong Loai:  (Ten loai: ssfsdfdsf), ( Mo ta: fsdfdsf)'),(460,41,'admin','Quan ly Loai','2020-05-11','Xoa doi tuong Loai:  (Ten loai: ssfsdfdsf), ( Mo ta: fsdfdsf)'),(461,41,'admin','Quan ly Loai','2020-05-11','Cap nhat doi tuong Loai:  (Ten loai: bb), ( Mo ta: bbbbbbb) => CAP NHAT THANH  (Ten loai: cccc), ( Mo ta: bbbbbbb)'),(462,41,'admin','Quan ly Loai','2020-05-11','Cap nhat doi tuong Loai:  (Ten loai: cccc), ( Mo ta: bbbbbbb) => CAP NHAT THANH  (Ten loai: cccc), ( Mo ta: Ko đổi tên)'),(463,41,'admin','Quan ly Loai','2020-05-11','Xoa doi tuong Loai:  (Ten loai: cccc), ( Mo ta: Ko đổi tên)'),(464,41,'admin','Quan ly Loai','2020-05-11','Xoa doi tuong Loai:  (Ten loai: aa), ( Mo ta: aaaaaa)'),(465,41,'admin','Quan ly Chu De','2020-05-11','Them doi tuong Chu De:  (Ten chu de: aa), ( Mo ta: aaaaa), (Loai: Java )'),(466,41,'admin','Quan ly Chu De','2020-05-11','Them doi tuong Chu De:  (Ten chu de: bb), ( Mo ta: bbbbbbb), (Loai: C#)'),(467,41,'admin','Quan ly Chu De','2020-05-11','Cap nhat doi tuong Chu De:  (Ten Chu De: bb), ( Mo ta: bbbbbbb), (Loai: C#) => CAP NHAT THANH  (Ten Chu De: cccc), ( Mo ta: bbbbbbb), (Loai: C#)'),(468,41,'admin','Quan ly Chu De','2020-05-11','Cap nhat doi tuong Chu De:  (Ten Chu De: cccc), ( Mo ta: bbbbbbb), (Loai: C#) => CAP NHAT THANH  (Ten Chu De: cccc), ( Mo ta: Ko đổi tên), (Loai: English)'),(469,41,'admin','Quan ly Chu De','2020-05-11','Xoa doi tuong Chu De:  (Ten Chu De: cccc), ( Mo ta: Ko đổi tên), (Loai: English)'),(470,41,'admin','Quan ly Chu De','2020-05-11','Xoa doi tuong Chu De:  (Ten Chu De: aa), ( Mo ta: aaaaa), (Loai: Java )'),(471,41,'admin','Quan ly Cap Do','2020-05-11','Them doi tuong Cap Do:  (Ten Cap Do: aa), ( Mo ta: aaaaa)'),(472,41,'admin','Quan ly Cap Do','2020-05-11','Them doi tuong Cap Do:  (Ten Cap Do: bbbb), ( Mo ta: bbbbbbbbbb)'),(473,41,'admin','Quan ly Cap Do','2020-05-11','Cap nhat doi tuong Cap Do:  (Ten loai: bbbb), ( Mo ta: bbbbbbbbbb) => CAP NHAT THANH  (Ten loai: cccc), ( Mo ta: bbbbbbbbbb)'),(474,41,'admin','Quan ly Cap Do','2020-05-11','Cap nhat doi tuong Cap Do:  (Ten loai: cccc), ( Mo ta: bbbbbbbbbb) => CAP NHAT THANH  (Ten loai: cccc), ( Mo ta: doi ten)'),(475,41,'admin','Quan ly Cap Do','2020-05-11','Xoa doi tuong Cap Do:  (Ten loai: cccc), ( Mo ta: doi ten)'),(476,41,'admin','Quan ly Cap Do','2020-05-11','Xoa doi tuong Cap Do:  (Ten loai: aa), ( Mo ta: aaaaa)'),(477,41,'admin','Quan ly khoa hoc','2020-05-11','Them doi tuong Khoa Hoc:  (Ten Khoa Hoc: bbb), ( Ngay Xuat Ban: 2020-05-11), (Ngay Dang: 2020-05-11), (Da Duyet: true), (Mien Phi: true), (Hoc Phi: 1111.0), (Mo Ta: them b dc), (Chu De: Lập trình Java nâng cao), (Cap Do: Nâng cao), (Giang Vien: Lê Văn Tuấn)'),(478,41,'admin','Quan ly khoa hoc','2020-05-11','Cap nhat doi tuong Khoa Hoc:  (Ten Khoa Hoc: bbb), ( Ngay Xuat Ban: 2020-05-11), ( Ngay Cap Nhat: 2020-05-11), (Ngay Dang: 2020-05-11), (Da Duyet: true), (Mien Phi: true), (Hoc Phi: 1111.0), (Mo Ta: them b dc), (Chu De: Lập trình Java nâng cao), (Cap Do: Nâng cao), (Giang Vien: Lê Văn Tuấn)=> CAP NHAT THANH  (Ten Khoa Hoc: abababab), ( Ngay Xuat Ban: 2020-05-11), (Ngay Cap Nhat: 2020-05-11), (Ngay Dang: 2020-05-11), (Da Duyet: true), (Mien Phi: true), (Hoc Phi: 1111.0), (Mo Ta: Dã doi ten), (Chu De: Lập trình Java nâng cao), (Cap Do: Nâng cao), (Giang Vien: Lê Văn Tuấn)'),(479,41,'admin','Quan ly khoa hoc','2020-05-11','Cap nhat doi tuong Khoa Hoc:  (Ten Khoa Hoc: abababab), ( Ngay Xuat Ban: 2020-05-11), ( Ngay Cap Nhat: 2020-05-11), (Ngay Dang: 2020-05-11), (Da Duyet: true), (Mien Phi: true), (Hoc Phi: 1111.0), (Mo Ta: Dã doi ten), (Chu De: Lập trình Java nâng cao), (Cap Do: Nâng cao), (Giang Vien: Lê Văn Tuấn)=> CAP NHAT THANH  (Ten Khoa Hoc: abababab), ( Ngay Xuat Ban: 2020-05-11), (Ngay Cap Nhat: 2020-05-11), (Ngay Dang: 2020-05-11), (Da Duyet: true), (Mien Phi: true), (Hoc Phi: 1111.0), (Mo Ta: OK OK OK ), (Chu De: Lập trình Java nâng cao), (Cap Do: Nâng cao), (Giang Vien: Lê Văn Tuấn)'),(480,41,'admin','Quan ly khoa hoc','2020-05-11','Xoa doi tuong Khoa Hoc:  (Ten Khoa Hoc: abababab), ( Ngay Xuat Ban: 2020-05-11), (Ngay Cap Nhat: 2020-05-11), (Ngay Dang: 2020-05-11), (Da Duyet: true), (Mien Phi: true), (Hoc Phi: 1111.0), (Mo Ta: OK OK OK ), (Chu De: Lập trình Java nâng cao), (Cap Do: Nâng cao), (Giang Vien: Lê Văn Tuấn)'),(481,41,'admin','Quan ly Bai Giang','2020-05-11','Them doi tuong Bai Giang:  (Thu Tu: 21), ( Ten Bai Giang: aa), (Mo Ta:aaaaaaa), (Ten Giang Vien: Lê Văn Tuấn), (Ten Khoa Hoc: Lập trình Java)'),(482,41,'admin','Quan ly Bai Giang','2020-05-11','Them doi tuong Bai Giang:  (Thu Tu: 22), ( Ten Bai Giang: bb), (Mo Ta:bbbbbb), (Ten Giang Vien: Lê Văn Tuấn), (Ten Khoa Hoc: Lập trình Java)'),(483,41,'admin','Quan ly Bai Giang','2020-05-11','Cap nhat doi tuong Khoa Hoc:  (Thu Tu: 22), ( Ten Bai Giang: bb), (Mo Ta:bbbbbb), (Ten Giang Vien: Lê Văn Tuấn), (Ten Khoa Hoc: Lập trình Java)=> CAP NHAT THANH  (Thu Tu: 22), ( Ten Bai Giang: CCC), (Mo Ta:Đã đổi), (Ten Giang Vien: Lê Văn Tuấn), (Ten Khoa Hoc: Lập trình Java)'),(484,41,'admin','Quan ly Bai Giang','2020-05-11','Cap nhat doi tuong Khoa Hoc:  (Thu Tu: 22), ( Ten Bai Giang: CCC), (Mo Ta:Đã đổi), (Ten Giang Vien: Lê Văn Tuấn), (Ten Khoa Hoc: Lập trình Java)=> CAP NHAT THANH  (Thu Tu: 22), ( Ten Bai Giang: bbbbc), (Mo Ta:Đã đổi), (Ten Giang Vien: Lê Văn Tuấn), (Ten Khoa Hoc: Lập trình Java)'),(485,41,'admin','Quan ly Bai Giang','2020-05-11','Cap nhat doi tuong Khoa Hoc:  (Thu Tu: 22), ( Ten Bai Giang: bbbbc), (Mo Ta:Đã đổi), (Ten Giang Vien: Lê Văn Tuấn), (Ten Khoa Hoc: Lập trình Java)=> CAP NHAT THANH  (Thu Tu: 22), ( Ten Bai Giang: bbbbc), (Mo Ta:OKOKOK), (Ten Giang Vien: Lê Văn Tuấn), (Ten Khoa Hoc: Lập trình Java)'),(486,41,'admin','Quan ly Bai Giang','2020-05-11','Xoa doi tuong Bai Giang:  (Thu Tu: 22), ( Ten Bai Giang: bbbbc), (Mo Ta:OKOKOK), (Ten Giang Vien: Lê Văn Tuấn), (Ten Khoa Hoc: Lập trình Java)'),(487,41,'admin','Quan ly Bai Giang','2020-05-11','Xoa doi tuong Bai Giang:  (Thu Tu: 21), ( Ten Bai Giang: aa), (Mo Ta:aaaaaaa), (Ten Giang Vien: Lê Văn Tuấn), (Ten Khoa Hoc: Lập trình Java)'),(488,41,'admin','Quan ly Nguoi Dung','2020-05-11','Them doi tuong Nguoi Dung:  (Ten Tai Khoan: aa), ( Ho Ten: bùi duy trọng), (Dien Thoai:0964058930), (Email: btrong96@gmail.com), (Ten Vai Tro: hocvien)'),(489,41,'admin','Quan ly Nguoi Dung','2020-05-11','Them doi tuong Nguoi Dung:  (Ten Tai Khoan: bb), ( Ho Ten: bùi duy trọng), (Dien Thoai:0964058930), (Email: btrong96@gmail.com), (Ten Vai Tro: hocvien)'),(490,41,'admin','Quan ly Nguoi Dung','2020-05-11','Cap nhat doi tuong Nguoi Dung:  (Ten Tai Khoan: bb), ( Ho Ten: bùi duy trọng), (Dien Thoai:0964058930), (Email: btrong96@gmail.com), (Ten Vai Tro: hocvien) => CAP NHAT THANH  (Ten Tai Khoan: aaabbbbbb), ( Ho Ten: bùi duy trọng), (Dien Thoai:0964058930), (Email: btrong96@gmail.com), (Ten Vai Tro: hocvien)'),(491,41,'admin','Quan ly Nguoi Dung','2020-05-11','Cap nhat doi tuong Nguoi Dung:  (Ten Tai Khoan: aaabbbbbb), ( Ho Ten: bùi duy trọng), (Dien Thoai:0964058930), (Email: btrong96@gmail.com), (Ten Vai Tro: hocvien) => CAP NHAT THANH  (Ten Tai Khoan: aaabbbbbb), ( Ho Ten: OKOKOK), (Dien Thoai:0964058930), (Email: btrong96@gmail.com), (Ten Vai Tro: hocvien)'),(492,41,'admin','Quan ly Nguoi Dung','2020-05-11','Xoa doi tuong Nguoi Dung:  (Ten Tai Khoan: aaabbbbbb), ( Ho Ten: OKOKOK), (Dien Thoai:0964058930), (Email: btrong96@gmail.com), (Ten Vai Tro: hocvien)'),(493,41,'admin','Quan ly Nguoi Dung','2020-05-11','Xoa doi tuong Nguoi Dung:  (Ten Tai Khoan: aa), ( Ho Ten: bùi duy trọng), (Dien Thoai:0964058930), (Email: btrong96@gmail.com), (Ten Vai Tro: hocvien)'),(494,41,'admin','Quan ly Loai','2020-05-11','Them doi tuong Loai:  (Ten loai: aa), ( Mo ta: aaaaaaaaa)'),(495,41,'admin','Quan ly Loai','2020-05-11','Them doi tuong Loai:  (Ten loai: bbbb), ( Mo ta: bbbbbb)'),(496,41,'admin','Quan ly Loai','2020-05-11','Cap nhat doi tuong Loai:  (Ten loai: bbbb), ( Mo ta: bbbbbb) => CAP NHAT THANH  (Ten loai: ccccc), ( Mo ta: bbbbbb)'),(497,41,'admin','Quan ly Loai','2020-05-11','Cap nhat doi tuong Loai:  (Ten loai: ccccc), ( Mo ta: bbbbbb) => CAP NHAT THANH  (Ten loai: ccccc), ( Mo ta: OKOK)'),(498,41,'admin','Quan ly Loai','2020-05-11','Xoa doi tuong Loai:  (Ten loai: ccccc), ( Mo ta: OKOK)'),(499,41,'admin','Quan ly Loai','2020-05-11','Xoa doi tuong Loai:  (Ten loai: aa), ( Mo ta: aaaaaaaaa)'),(500,41,'admin','Quan ly Loai','2020-05-11','Them doi tuong Loai:  (Ten loai: aa), ( Mo ta: aaaaaaaa)'),(501,41,'admin','Quan ly Loai','2020-05-11','Them doi tuong Loai:  (Ten loai: bbbbbb), ( Mo ta: fdasfsdfsda)'),(502,41,'admin','Quan ly Loai','2020-05-11','Them doi tuong Loai:  (Ten loai: sdgdsfgdsf), ( Mo ta: dfsgdsfgdfsg)'),(503,41,'admin','Quan ly Loai','2020-05-11','Xoa doi tuong Loai:  (Ten loai: sdgdsfgdsf), ( Mo ta: dfsgdsfgdfsg)'),(504,41,'admin','Quan ly Loai','2020-05-11','Them doi tuong Loai:  (Ten loai: cc), ( Mo ta: fsfsdafsdfsf)'),(505,41,'admin','Quan ly Loai','2020-05-11','Xoa doi tuong Loai:  (Ten loai: cc), ( Mo ta: fsfsdafsdfsf)'),(506,41,'admin','Quan ly Loai','2020-05-11','Them doi tuong Loai:  (Ten loai: aaaaa), ( Mo ta: fsdfsfs)'),(507,41,'admin','Quan ly Loai','2020-05-11','Xoa doi tuong Loai:  (Ten loai: bbbbbb), ( Mo ta: fdasfsdfsda)'),(508,41,'admin','Quan ly Loai','2020-05-11','Xoa doi tuong Loai:  (Ten loai: aaaaa), ( Mo ta: fsdfsfs)'),(509,41,'admin','Quan ly Loai','2020-05-11','Them doi tuong Loai:  (Ten loai: bb), ( Mo ta: fsadfsdaf)'),(510,41,'admin','Quan ly Loai','2020-05-11','Cap nhat doi tuong Loai:  (Ten loai: bb), ( Mo ta: fsadfsdaf) => CAP NHAT THANH  (Ten loai: abababa), ( Mo ta: đổi tên)'),(511,41,'admin','Quan ly Loai','2020-05-11','Cap nhat doi tuong Loai:  (Ten loai: abababa), ( Mo ta: đổi tên) => CAP NHAT THANH  (Ten loai: aaaabbbbbbbbb), ( Mo ta: đổi tên lại)'),(512,41,'admin','Quan ly Loai','2020-05-11','Cap nhat doi tuong Loai:  (Ten loai: aaaabbbbbbbbb), ( Mo ta: đổi tên lại) => CAP NHAT THANH  (Ten loai: aaaabbbbbbbbb), ( Mo ta: OKok)'),(513,41,'admin','Quan ly Loai','2020-05-11','Them doi tuong Loai:  (Ten loai: bbb), ( Mo ta: dsfgsdgdsfg)'),(514,41,'admin','Quan ly Loai','2020-05-11','Them doi tuong Loai:  (Ten loai: bbb), ( Mo ta: dsfgsdgdsfg)'),(515,41,'admin','Quan ly Loai','2020-05-11','Xoa doi tuong Loai:  (Ten loai: bbb), ( Mo ta: dsfgsdgdsfg)'),(516,41,'admin','Quan ly Loai','2020-05-11','Xoa doi tuong Loai:  (Ten loai: bbb), ( Mo ta: dsfgsdgdsfg)'),(517,41,'admin','Quan ly Loai','2020-05-11','Them doi tuong Loai:  (Ten loai: abab), ( Mo ta: dfasdfasfsda)'),(518,41,'admin','Quan ly Loai','2020-05-11','Xoa doi tuong Loai:  (Ten loai: abab), ( Mo ta: dfasdfasfsda)'),(519,41,'admin','Quan ly Loai','2020-05-11','Them doi tuong Loai:  (Ten loai: bbb), ( Mo ta: fasdfasdf)'),(520,41,'admin','Quan ly Loai','2020-05-11','Xoa doi tuong Loai:  (Ten loai: bbb), ( Mo ta: fasdfasdf)'),(521,41,'admin','Quan ly Loai','2020-05-11','Xoa doi tuong Loai:  (Ten loai: aaaabbbbbbbbb), ( Mo ta: OKok)'),(522,41,'admin','Quan ly Chu De','2020-05-11','Them doi tuong Chu De:  (Ten chu de: aa), ( Mo ta: aaaaaaaa), (Loai: Java )'),(523,41,'admin','Quan ly Chu De','2020-05-12','Them doi tuong Chu De:  (Ten chu de: bbbbbbbb), ( Mo ta: dsfgdfgdsfgdfsg), (Loai: Java )'),(524,41,'admin','Quan ly Chu De','2020-05-12','Them doi tuong Chu De:  (Ten chu de: ccc), ( Mo ta: dsafdsafasdf), (Loai: Java )'),(525,41,'admin','Quan ly Chu De','2020-05-12','Xoa doi tuong Chu De:  (Ten Chu De: ccc), ( Mo ta: dsafdsafasdf), (Loai: Java )'),(526,41,'admin','Quan ly Chu De','2020-05-12','Them doi tuong Chu De:  (Ten chu de: aaxz), ( Mo ta: cvxzcvzx), (Loai: Java )'),(527,41,'admin','Quan ly Chu De','2020-05-12','Xoa doi tuong Chu De:  (Ten Chu De: aaxz), ( Mo ta: cvxzcvzx), (Loai: Java )'),(528,41,'admin','Quan ly Chu De','2020-05-12','Them doi tuong Chu De:  (Ten chu de: aaa), ( Mo ta: sdfdasfsdafasfdfd), (Loai: Java )'),(529,41,'admin','Quan ly Chu De','2020-05-12','Xoa doi tuong Chu De:  (Ten Chu De: aaa), ( Mo ta: sdfdasfsdafasfdfd), (Loai: Java )'),(530,41,'admin','Quan ly Loai','2020-05-12','Them doi tuong Loai:  (Ten loai: bb), ( Mo ta: gsdfgsdfgdgdtefsdc)'),(531,41,'admin','Quan ly Loai','2020-05-12','Xoa doi tuong Loai:  (Ten loai: bb), ( Mo ta: gsdfgsdfgdgdtefsdc)'),(532,41,'admin','Quan ly Loai','2020-05-12','Them doi tuong Loai:  (Ten loai: aaaa), ( Mo ta: aaaaaaaa)'),(533,41,'admin','Quan ly Loai','2020-05-12','Cap nhat doi tuong Loai:  (Ten loai: aaaa), ( Mo ta: aaaaaaaa) => CAP NHAT THANH  (Ten loai: D), ( Mo ta: aaaaaaaa)'),(534,41,'admin','Quan ly Loai','2020-05-12','Cap nhat doi tuong Loai:  (Ten loai: D), ( Mo ta: aaaaaaaa) => CAP NHAT THANH  (Ten loai: D), ( Mo ta: gggggggg)'),(535,41,'admin','Quan ly Loai','2020-05-12','Xoa doi tuong Loai:  (Ten loai: D), ( Mo ta: gggggggg)'),(536,41,'admin','Quan ly Loai','2020-05-12','Xoa doi tuong Loai:  (Ten loai: aa), ( Mo ta: aaaaaaaa)'),(537,41,'admin','Quan ly Chu De','2020-05-12','Them doi tuong Chu De:  (Ten chu de: aabbbbbbbbb), ( Mo ta: dfasdfgfdgsđa), (Loai: Java )'),(538,41,'admin','Quan ly Chu De','2020-05-12','Xoa doi tuong Chu De:  (Ten Chu De: bbbbbbbb), ( Mo ta: dsfgdfgdsfgdfsg), (Loai: Java )'),(539,41,'admin','Quan ly Chu De','2020-05-12','Cap nhat doi tuong Chu De:  (Ten Chu De: aabbbbbbbbb), ( Mo ta: dfasdfgfdgsđa), (Loai: Java ) => CAP NHAT THANH  (Ten Chu De: BBBBBB), ( Mo ta: dfasdfgfdgsđa), (Loai: Java )'),(540,41,'admin','Quan ly Chu De','2020-05-12','Cap nhat doi tuong Chu De:  (Ten Chu De: BBBBBB), ( Mo ta: dfasdfgfdgsđa), (Loai: Java ) => CAP NHAT THANH  (Ten Chu De: BBBBBB), ( Mo ta: okokok), (Loai: Java )'),(541,41,'admin','Quan ly khoa hoc','2020-05-12','Them doi tuong Khoa Hoc:  (Ten Khoa Hoc: aaDDD), ( Ngay Xuat Ban: 2020-05-12), (Ngay Dang: 2020-05-09), (Da Duyet: true), (Mien Phi: true), (Hoc Phi: 1111.0), (Mo Ta: sdfgfhgdfsdafgjk), (Chu De: Lập trình Java Core), (Cap Do: Cơ bản), (Giang Vien: Lê Văn Tuấn)'),(542,41,'admin','Quan ly khoa hoc','2020-05-12','Cap nhat doi tuong Khoa Hoc:  (Ten Khoa Hoc: aaDDD), ( Ngay Xuat Ban: 2020-05-12), ( Ngay Cap Nhat: 2020-05-12), (Ngay Dang: 2020-05-09), (Da Duyet: true), (Mien Phi: true), (Hoc Phi: 1111.0), (Mo Ta: sdfgfhgdfsdafgjk), (Chu De: Lập trình Java Core), (Cap Do: Cơ bản), (Giang Vien: Lê Văn Tuấn)=> CAP NHAT THANH  (Ten Khoa Hoc: aaDDD), ( Ngay Xuat Ban: 2020-05-12), (Ngay Cap Nhat: 2020-05-12), (Ngay Dang: 2020-05-09), (Da Duyet: true), (Mien Phi: true), (Hoc Phi: 1111.0), (Mo Ta: OKOK), (Chu De: Lập trình Java Core), (Cap Do: Cơ bản), (Giang Vien: Lê Văn Tuấn)'),(543,41,'admin','Quan ly Bai Giang','2020-05-12','Them doi tuong Bai Giang:  (Thu Tu: 22), ( Ten Bai Giang: aa), (Mo Ta:afghgdsdafgh), (Ten Giang Vien: Phạm Minh Hoàng), (Ten Khoa Hoc: Lập trình Java)'),(544,41,'admin','Quan ly Bai Giang','2020-05-12','Them doi tuong Bai Giang:  (Thu Tu: 34), ( Ten Bai Giang: bb), (Mo Ta:dsfdghjkl;\'\r\n), (Ten Giang Vien: Lê Văn Tuấn), (Ten Khoa Hoc: Lập trình Java)'),(545,41,'admin','Quan ly Bai Giang','2020-05-12','Cap nhat doi tuong Khoa Hoc:  (Thu Tu: 34), ( Ten Bai Giang: bb), (Mo Ta:dsfdghjkl;\'\r\n), (Ten Giang Vien: Lê Văn Tuấn), (Ten Khoa Hoc: Lập trình Java)=> CAP NHAT THANH  (Thu Tu: 34), ( Ten Bai Giang: bb), (Mo Ta:OKOKO\r\n), (Ten Giang Vien: Lê Văn Tuấn), (Ten Khoa Hoc: Lập trình Java)'),(546,41,'admin','Quan ly Bai Giang','2020-05-12','Xoa doi tuong Bai Giang:  (Thu Tu: 34), ( Ten Bai Giang: bb), (Mo Ta:OKOKO\r\n), (Ten Giang Vien: Lê Văn Tuấn), (Ten Khoa Hoc: Lập trình Java)'),(547,41,'admin','Quan ly Bai Giang','2020-05-12','Xoa doi tuong Bai Giang:  (Thu Tu: 22), ( Ten Bai Giang: aa), (Mo Ta:afghgdsdafgh), (Ten Giang Vien: Phạm Minh Hoàng), (Ten Khoa Hoc: Lập trình Java)'),(548,41,'admin','Quan ly Nguoi Dung','2020-05-12','Them doi tuong Nguoi Dung:  (Ten Tai Khoan: bb), ( Ho Ten: bùi duy trọng), (Dien Thoai:0964058930), (Email: btrong96@gmail.com), (Ten Vai Tro: hocvien)'),(549,41,'admin','Quan ly Nguoi Dung','2020-05-12','Cap nhat doi tuong Nguoi Dung:  (Ten Tai Khoan: bb), ( Ho Ten: bùi duy trọng), (Dien Thoai:0964058930), (Email: btrong96@gmail.com), (Ten Vai Tro: hocvien) => CAP NHAT THANH  (Ten Tai Khoan: bb), ( Ho Ten: OKOK), (Dien Thoai:0964058930), (Email: btrong96@gmail.com), (Ten Vai Tro: hocvien)'),(550,41,'admin','Quan ly Nguoi Dung','2020-05-12','Xoa doi tuong Nguoi Dung:  (Ten Tai Khoan: bb), ( Ho Ten: OKOK), (Dien Thoai:0964058930), (Email: btrong96@gmail.com), (Ten Vai Tro: hocvien)'),(551,41,'admin','Quan ly Cap Do','2020-05-12','Them doi tuong Cap Do:  (Ten Cap Do: aa), ( Mo ta: fdsadgfhjhhgf)'),(552,41,'admin','Quan ly Cap Do','2020-05-12','Them doi tuong Cap Do:  (Ten Cap Do: bbb), ( Mo ta: àgfh)'),(553,41,'admin','Quan ly Cap Do','2020-05-12','Cap nhat doi tuong Cap Do:  (Ten loai: bbb), ( Mo ta: àgfh) => CAP NHAT THANH  (Ten loai: bbb), ( Mo ta: OKOK)'),(554,41,'admin','Quan ly Phan Quyen','2020-05-13','Cap nhat doi tuong Phan Quyen:  (Ten Vai Tro: hocvien), ( Ten Chuc Nang: khoaHoc), (Danh Sach: true), (Them: false), (Sua: false), (Xoa: false), (Bao Cao: false) => CAP NHAT THANH  (Ten Vai Tro: hocvien), ( Ten Chuc Nang: khoaHoc), (Danh Sach: false), (Them: false), (Sua: false), (Xoa: false), (Bao Cao: false)'),(555,41,'admin','Quan ly Phan Quyen','2020-05-13','Xoa doi tuong Phan Quyen:  (Ten Vai Tro: hocvien), ( Ten Chuc Nang: baiGiang), (Danh Sach: true), (Them: false), (Sua: false), (Xoa: false), (Bao Cao: false)'),(556,41,'admin','Quan ly Phan Quyen','2020-05-13','Cap nhat doi tuong Phan Quyen:  (Ten Vai Tro: hocvien), ( Ten Chuc Nang: nguoiDung), (Danh Sach: true), (Them: false), (Sua: false), (Xoa: false), (Bao Cao: false) => CAP NHAT THANH  (Ten Vai Tro: hocvien), ( Ten Chuc Nang: nguoiDung), (Danh Sach: false), (Them: false), (Sua: false), (Xoa: false), (Bao Cao: false)'),(557,41,'admin','Quan ly Phan Quyen','2020-05-13','Cap nhat doi tuong Phan Quyen:  (Ten Vai Tro: hocvien), ( Ten Chuc Nang: capDo), (Danh Sach: true), (Them: false), (Sua: false), (Xoa: false), (Bao Cao: false) => CAP NHAT THANH  (Ten Vai Tro: hocvien), ( Ten Chuc Nang: capDo), (Danh Sach: false), (Them: false), (Sua: false), (Xoa: false), (Bao Cao: false)'),(558,41,'admin','Quan ly Phan Quyen','2020-05-13','Them doi tuong Phan Quyen:  (Ten Vai Tro: hocvien), ( Ten Chuc Nang: vaiTro), (Danh Sach: false), (Them: false), (Sua: false), (Xoa: false), (Bao Cao: false)'),(559,41,'admin','Quan ly Phan Quyen','2020-05-13','Them doi tuong Phan Quyen:  (Ten Vai Tro: hocvien), ( Ten Chuc Nang: hoaDon), (Danh Sach: false), (Them: false), (Sua: false), (Xoa: false), (Bao Cao: false)'),(560,41,'admin','Quan ly Phan Quyen','2020-05-13','Them doi tuong Phan Quyen:  (Ten Vai Tro: hocvien), ( Ten Chuc Nang: chucNang), (Danh Sach: false), (Them: false), (Sua: false), (Xoa: false), (Bao Cao: false)'),(561,41,'admin','Quan ly Phan Quyen','2020-05-13','Them doi tuong Phan Quyen:  (Ten Vai Tro: hocvien), ( Ten Chuc Nang: chiTietHoaDon), (Danh Sach: false), (Them: false), (Sua: false), (Xoa: false), (Bao Cao: false)'),(562,41,'admin','Quan ly khoa hoc','2020-05-14','Xoa doi tuong Khoa Hoc:  (Ten Khoa Hoc: aaDDD), ( Ngay Xuat Ban: 2020-05-12), (Ngay Cap Nhat: 2020-05-12), (Ngay Dang: 2020-05-09), (Da Duyet: true), (Mien Phi: true), (Hoc Phi: 1111.0), (Mo Ta: OKOK), (Chu De: Lập trình Java Core), (Cap Do: Cơ bản), (Giang Vien: Lê Văn Tuấn)'),(563,41,'admin','Quan ly Chu De','2020-05-14','Xoa doi tuong Chu De:  (Ten Chu De: BBBBBB), ( Mo ta: okokok), (Loai: Java )'),(564,41,'admin','Quan ly Chu De','2020-05-14','Xoa doi tuong Chu De:  (Ten Chu De: aa), ( Mo ta: aaaaaaaa), (Loai: Java )'),(565,41,'admin','Quan ly Cap Do','2020-05-14','Xoa doi tuong Cap Do:  (Ten loai: bbb), ( Mo ta: OKOK)'),(566,41,'admin','Quan ly Cap Do','2020-05-14','Xoa doi tuong Cap Do:  (Ten loai: aa), ( Mo ta: fdsadgfhjhhgf)'),(567,41,'admin','Quan ly khoa hoc','2020-05-14','Cap nhat doi tuong Khoa Hoc:  (Ten Khoa Hoc: Lập trình C#), ( Ngay Xuat Ban: 2020-04-03), ( Ngay Cap Nhat: 2020-04-03), (Ngay Dang: 2020-04-03), (Da Duyet: true), (Mien Phi: true), (Hoc Phi: 645634.0), (Mo Ta: They’re treated like heroes and tasked with the duty of saving the human race from utter extinction.), (Chu De: Lập trình C#), (Cap Do: Nâng cao), (Giang Vien: Phạm Minh Hoàng)=> CAP NHAT THANH  (Ten Khoa Hoc: Lập trình C#), ( Ngay Xuat Ban: 2020-05-14), (Ngay Cap Nhat: 2020-05-14), (Ngay Dang: 2020-04-03), (Da Duyet: true), (Mien Phi: false), (Hoc Phi: 645634.0), (Mo Ta: They’re treated like heroes and tasked with the duty of saving the human race from utter extinction.), (Chu De: Lập trình C#), (Cap Do: Nâng cao), (Giang Vien: Phạm Minh Hoàng)'),(568,41,'admin','Quan ly khoa hoc','2020-05-14','Cap nhat doi tuong Khoa Hoc:  (Ten Khoa Hoc: Nhúng), ( Ngay Xuat Ban: 2019-02-02), ( Ngay Cap Nhat: 2019-02-02), (Ngay Dang: 2019-02-02), (Da Duyet: true), (Mien Phi: true), (Hoc Phi: 5435344.0), (Mo Ta: Khóa học dành cho các bạn đã nắm chắc các kiến thức về C# Core. Được làm việc với các công nghệ làm việc trong dự án thực tế như Hibernate,.), (Chu De: Lập trình Java Core), (Cap Do: Nâng cao), (Giang Vien: Phạm Minh Hoàng)=> CAP NHAT THANH  (Ten Khoa Hoc: Nhúng), ( Ngay Xuat Ban: 2020-05-14), (Ngay Cap Nhat: 2020-05-14), (Ngay Dang: 2019-02-02), (Da Duyet: true), (Mien Phi: false), (Hoc Phi: 5435344.0), (Mo Ta: Khóa học dành cho các bạn đã nắm chắc các kiến thức về C# Core. Được làm việc với các công nghệ làm việc trong dự án thực tế như Hibernate,.), (Chu De: Lập trình Java Core), (Cap Do: Nâng cao), (Giang Vien: Phạm Minh Hoàng)'),(569,41,'admin','Quan ly Nguoi Dung','2020-05-14','Them doi tuong Nguoi Dung:  (Ten Tai Khoan: giangvien), ( Ho Ten: giangvien), (Dien Thoai:0964058930), (Email: btrong96@gmail.com), (Ten Vai Tro: giangVien)'),(570,41,'admin','Quan ly Phan Quyen','2020-05-14','Cap nhat doi tuong Phan Quyen:  (Ten Vai Tro: giangVien), ( Ten Chuc Nang: loai), (Danh Sach: true), (Them: true), (Sua: true), (Xoa: false), (Bao Cao: false) => CAP NHAT THANH  (Ten Vai Tro: giangVien), ( Ten Chuc Nang: loai), (Danh Sach: true), (Them: true), (Sua: false), (Xoa: false), (Bao Cao: false)'),(571,41,'admin','Quan ly Phan Quyen','2020-05-14','Them doi tuong Phan Quyen:  (Ten Vai Tro: giangVien), ( Ten Chuc Nang: khoaHoc), (Danh Sach: true), (Them: true), (Sua: false), (Xoa: false), (Bao Cao: false)'),(572,41,'admin','Quan ly Phan Quyen','2020-05-14','Them doi tuong Phan Quyen:  (Ten Vai Tro: giangVien), ( Ten Chuc Nang: baiGiang), (Danh Sach: true), (Them: true), (Sua: false), (Xoa: false), (Bao Cao: false)'),(573,41,'admin','Quan ly Phan Quyen','2020-05-14','Them doi tuong Phan Quyen:  (Ten Vai Tro: giangVien), ( Ten Chuc Nang: nguoiDung), (Danh Sach: false), (Them: false), (Sua: false), (Xoa: false), (Bao Cao: false)'),(574,41,'admin','Quan ly Phan Quyen','2020-05-14','Them doi tuong Phan Quyen:  (Ten Vai Tro: giangVien), ( Ten Chuc Nang: giangVien), (Danh Sach: true), (Them: false), (Sua: false), (Xoa: false), (Bao Cao: false)'),(575,41,'admin','Quan ly Phan Quyen','2020-05-14','Them doi tuong Phan Quyen:  (Ten Vai Tro: giangVien), ( Ten Chuc Nang: khachHang), (Danh Sach: true), (Them: false), (Sua: false), (Xoa: false), (Bao Cao: false)'),(576,41,'admin','Quan ly Phan Quyen','2020-05-14','Them doi tuong Phan Quyen:  (Ten Vai Tro: giangVien), ( Ten Chuc Nang: capDo), (Danh Sach: false), (Them: false), (Sua: false), (Xoa: false), (Bao Cao: false)'),(577,41,'admin','Quan ly Phan Quyen','2020-05-14','Them doi tuong Phan Quyen:  (Ten Vai Tro: giangVien), ( Ten Chuc Nang: capDo), (Danh Sach: false), (Them: false), (Sua: false), (Xoa: false), (Bao Cao: false)'),(578,41,'admin','Quan ly Phan Quyen','2020-05-14','Xoa doi tuong Phan Quyen:  (Ten Vai Tro: giangVien), ( Ten Chuc Nang: capDo), (Danh Sach: false), (Them: false), (Sua: false), (Xoa: false), (Bao Cao: false)'),(579,41,'admin','Quan ly Phan Quyen','2020-05-14','Them doi tuong Phan Quyen:  (Ten Vai Tro: giangVien), ( Ten Chuc Nang: vaiTro), (Danh Sach: false), (Them: false), (Sua: false), (Xoa: false), (Bao Cao: false)'),(580,41,'admin','Quan ly Phan Quyen','2020-05-14','Cap nhat doi tuong Phan Quyen:  (Ten Vai Tro: giangVien), ( Ten Chuc Nang: phanQuyen), (Danh Sach: true), (Them: true), (Sua: true), (Xoa: true), (Bao Cao: true) => CAP NHAT THANH  (Ten Vai Tro: giangVien), ( Ten Chuc Nang: phanQuyen), (Danh Sach: false), (Them: false), (Sua: false), (Xoa: false), (Bao Cao: false)'),(581,41,'admin','Quan ly Phan Quyen','2020-05-14','Them doi tuong Phan Quyen:  (Ten Vai Tro: giangVien), ( Ten Chuc Nang: hoaDon), (Danh Sach: true), (Them: false), (Sua: false), (Xoa: false), (Bao Cao: false)'),(582,41,'admin','Quan ly Phan Quyen','2020-05-14','Them doi tuong Phan Quyen:  (Ten Vai Tro: giangVien), ( Ten Chuc Nang: nhanXet), (Danh Sach: false), (Them: false), (Sua: false), (Xoa: false), (Bao Cao: false)'),(583,41,'admin','Quan ly Phan Quyen','2020-05-14','Them doi tuong Phan Quyen:  (Ten Vai Tro: giangVien), ( Ten Chuc Nang: nhatKy), (Danh Sach: true), (Them: false), (Sua: false), (Xoa: false), (Bao Cao: false)'),(584,41,'admin','Quan ly Phan Quyen','2020-05-14','Them doi tuong Phan Quyen:  (Ten Vai Tro: giangVien), ( Ten Chuc Nang: chucNang), (Danh Sach: false), (Them: false), (Sua: false), (Xoa: false), (Bao Cao: false)'),(585,41,'admin','Quan ly Phan Quyen','2020-05-14','Them doi tuong Phan Quyen:  (Ten Vai Tro: giangVien), ( Ten Chuc Nang: nguoiDung_KhoaHoc), (Danh Sach: false), (Them: false), (Sua: false), (Xoa: false), (Bao Cao: false)'),(586,41,'admin','Quan ly Phan Quyen','2020-05-14','Them doi tuong Phan Quyen:  (Ten Vai Tro: giangVien), ( Ten Chuc Nang: chiTietHoaDon), (Danh Sach: false), (Them: false), (Sua: false), (Xoa: false), (Bao Cao: false)');
/*!40000 ALTER TABLE `nhatky` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phanquyen`
--

DROP TABLE IF EXISTS `phanquyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phanquyen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `danhSach` tinyint(4) DEFAULT NULL,
  `them` tinyint(4) DEFAULT NULL,
  `sua` tinyint(4) DEFAULT NULL,
  `xoa` tinyint(4) DEFAULT NULL,
  `baoCao` tinyint(4) DEFAULT NULL,
  `vaitro_id` int(11) NOT NULL,
  `chucnang_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_phanquyen_vaitro1_idx` (`vaitro_id`),
  KEY `fk_phanquyen_chucnang1_idx` (`chucnang_id`),
  CONSTRAINT `fk_phanquyen_chucnang1` FOREIGN KEY (`chucnang_id`) REFERENCES `chucnang` (`id`),
  CONSTRAINT `fk_phanquyen_vaitro1` FOREIGN KEY (`vaitro_id`) REFERENCES `vaitro` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phanquyen`
--

LOCK TABLES `phanquyen` WRITE;
/*!40000 ALTER TABLE `phanquyen` DISABLE KEYS */;
INSERT INTO `phanquyen` VALUES (1,1,1,1,1,1,1,1),(2,1,1,1,1,1,1,2),(3,1,1,1,1,1,1,3),(4,1,1,1,1,1,1,4),(5,1,1,1,1,1,1,5),(6,1,1,1,1,1,1,6),(7,1,1,1,1,1,1,7),(8,1,1,1,1,1,1,8),(9,1,0,1,0,1,1,9),(10,1,1,1,1,1,1,10),(11,1,1,1,1,1,1,11),(12,1,1,1,1,1,1,12),(13,0,0,0,0,0,3,1),(16,1,0,0,0,0,2,2),(18,0,0,0,0,0,2,10),(20,0,0,0,0,0,3,12),(22,1,0,0,1,0,1,13),(23,1,1,0,0,0,2,1),(26,1,1,1,1,1,1,14),(27,0,0,0,0,0,3,10),(28,1,1,1,1,1,1,15),(29,1,1,1,1,1,1,16),(30,0,0,0,0,0,3,13),(31,1,0,0,0,0,1,17),(32,1,0,0,0,0,3,17),(34,0,0,0,0,0,3,2),(35,0,0,0,0,0,3,3),(37,0,0,0,0,0,3,5),(39,0,0,0,0,0,3,8),(40,0,0,0,0,0,3,7),(41,0,0,0,0,0,3,15),(42,0,0,0,0,0,3,4),(43,0,0,0,0,0,3,6),(44,0,0,0,0,0,3,9),(45,0,0,0,0,0,3,11),(46,0,0,0,0,0,3,14),(47,0,0,0,0,0,3,16),(48,1,1,0,0,0,2,3),(49,1,1,0,0,0,2,4),(50,0,0,0,0,0,2,5),(51,1,0,0,0,0,2,6),(52,1,0,0,0,0,2,7),(53,0,0,0,0,0,2,8),(55,0,0,0,0,0,2,9),(56,1,0,0,0,0,2,11),(57,0,0,0,0,0,2,12),(58,1,0,0,0,0,2,13),(59,0,0,0,0,0,2,14),(60,0,0,0,0,0,2,15),(61,0,0,0,0,0,2,16);
/*!40000 ALTER TABLE `phanquyen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vaitro`
--

DROP TABLE IF EXISTS `vaitro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vaitro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenvaitro` varchar(100) NOT NULL,
  `mota` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tenvaitro_UNIQUE` (`tenvaitro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaitro`
--

LOCK TABLES `vaitro` WRITE;
/*!40000 ALTER TABLE `vaitro` DISABLE KEYS */;
INSERT INTO `vaitro` VALUES (1,'admin','admin'),(2,'giangVien','giangVien'),(3,'hocvien','dev');
/*!40000 ALTER TABLE `vaitro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-19 20:56:18
