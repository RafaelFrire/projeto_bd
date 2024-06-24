CREATE DATABASE  IF NOT EXISTS `prj_bd` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `prj_bd`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: prj_bd
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `ProdutoID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) DEFAULT NULL,
  `Descricao` text,
  `Preco` decimal(10,2) DEFAULT NULL,
  `CategoriaID` int DEFAULT NULL,
  `FornecedorID` int DEFAULT NULL,
  `Estoque` int DEFAULT NULL,
  PRIMARY KEY (`ProdutoID`),
  KEY `CategoriaID` (`CategoriaID`),
  KEY `FornecedorID` (`FornecedorID`),
  CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`CategoriaID`) REFERENCES `categorias` (`CategoriaID`),
  CONSTRAINT `produtos_ibfk_2` FOREIGN KEY (`FornecedorID`) REFERENCES `fornecedores` (`FornecedorID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Notebook Dell Inspiron','Notebook Dell Inspiron com 8GB de RAM e 256GB SSD',3500.00,1,1,50),(2,'Mouse Logitech MX Master 3','Mouse sem fio Logitech MX Master 3',400.00,2,1,100),(3,'Teclado Mecânico Razer','Teclado Mecânico Razer com iluminação RGB',600.00,2,1,80),(4,'HD Externo Seagate 1TB','HD Externo Seagate 1TB USB 3.0',300.00,3,2,120),(5,'SSD Kingston 480GB','SSD Kingston 480GB A400 SATA',350.00,3,2,90),(6,'Roteador TP-Link Archer C6','Roteador Gigabit Dual Band AC1200',250.00,4,2,60),(7,'Cabo HDMI 2.0 2m','Cabo HDMI 2.0 2 metros',50.00,5,3,200),(8,'Monitor LG 24\" Full HD','Monitor LG 24MK430H-B 23.8\" LED IPS Full HD',900.00,2,3,70),(9,'Impressora HP DeskJet 2774','Multifuncional HP DeskJet 2774 Wi-Fi',450.00,2,3,40),(10,'Gabinete Gamer NZXT','Gabinete NZXT H510 ATX Mid Tower',700.00,5,1,30),(11,'Placa Mãe ASUS Prime','Placa Mãe ASUS Prime B450M-GAMING/BR',600.00,1,1,50),(12,'Memória RAM Corsair 8GB','Memória RAM Corsair Vengeance LPX 8GB 3000MHz',350.00,1,2,120),(13,'Fonte Corsair 550W','Fonte Corsair 550W 80 Plus Bronze',400.00,5,3,80),(14,'Webcam Logitech C920','Webcam Logitech C920 Full HD',350.00,2,1,70),(15,'Mousepad Gamer HyperX','Mousepad Gamer HyperX Fury S Pro',150.00,2,2,100),(16,'Processador Intel Core i5','Processador Intel Core i5-10400F',1200.00,1,3,50),(17,'Placa de Vídeo GTX 1660','Placa de Vídeo NVIDIA GeForce GTX 1660',2000.00,1,2,30),(18,'Cooler Master Hyper 212','Cooler Master Hyper 212 RGB Black Edition',200.00,5,1,90),(19,'Mouse Microsoft Bluetooth','Mouse Microsoft Bluetooth Ergonomic',200.00,2,3,70),(20,'Headset Gamer HyperX','Headset Gamer HyperX Cloud Stinger',300.00,2,2,80),(21,'Hub USB 3.0 4 Portas','Hub USB 3.0 4 Portas Ugreen',100.00,5,2,150),(22,'Estabilizador Enermax','Estabilizador Enermax EXS II 1200VA',250.00,5,3,50),(23,'Adaptador USB para Ethernet','Adaptador USB 3.0 para Ethernet Gigabit',80.00,4,2,100),(24,'Nobreak APC 1200VA','Nobreak APC Back-UPS 1200VA',700.00,5,1,40),(25,'Switch D-Link 8 Portas','Switch D-Link 8 Portas Gigabit',150.00,4,2,60),(26,'Leitor de Cartões SanDisk','Leitor de Cartões SanDisk MobileMate USB 3.0',70.00,5,3,120),(27,'Pen Drive Kingston 64GB','Pen Drive Kingston DataTraveler 64GB USB 3.0',80.00,3,2,200),(28,'Tablet Samsung Galaxy','Tablet Samsung Galaxy Tab A7 32GB',1200.00,1,3,30),(29,'Fone de Ouvido JBL','Fone de Ouvido JBL Tune 500BT Bluetooth',200.00,2,1,100),(30,'Cadeira Gamer ThunderX3','Cadeira Gamer ThunderX3 TGC12 Preta',900.00,5,2,20),(31,'Smartphone Xiaomi Redmi Note 10','Smartphone Xiaomi Redmi Note 10 128GB',1800.00,1,3,50),(32,'Microfone Condensador BM-800','Microfone Condensador BM-800 com Suporte',150.00,2,1,100),(33,'Notebook Acer Aspire 5','Notebook Acer Aspire 5 A515-54G-53GP',3500.00,1,2,50),(34,'Projetor Epson XGA','Projetor Epson PowerLite X41+ XGA',2000.00,2,3,30),(35,'HD Interno WD Blue 1TB','HD Interno WD Blue 1TB 7200RPM',300.00,3,2,120),(36,'Cabo USB Tipo C 1m','Cabo USB Tipo C 1 metro',30.00,5,1,200),(37,'Monitor Samsung 27\" Curvo','Monitor Samsung LED Curvo 27\" Full HD',1200.00,2,3,40),(38,'Dock Station Dell','Dock Station Dell Universal D6000',1000.00,2,2,20),(39,'Câmera IP Intelbras','Câmera IP Intelbras VIP S3020 G2',350.00,2,1,60),(40,'Console Xbox Series S','Console Microsoft Xbox Series S',2800.00,1,3,30),(41,'Smartwatch Amazfit Bip U','Smartwatch Amazfit Bip U Preto',300.00,1,2,100),(42,'Placa Captura Elgato HD60 S','Placa de Captura Elgato HD60 S',1000.00,2,3,30),(43,'Antena Wi-Fi USB TP-Link','Antena Wi-Fi USB TP-Link Archer T2U',100.00,4,2,120),(44,'Controlador MIDI Akai','Controlador MIDI Akai Professional MPK Mini MK3',600.00,2,1,50),(45,'Caixa de Som JBL','Caixa de Som JBL Charge 4 Bluetooth',600.00,2,3,70),(46,'Estação de Trabalho HP','Estação de Trabalho HP Z2 Mini G4',5000.00,1,2,20),(47,'Switch Gerenciável Cisco','Switch Gerenciável Cisco 24 Portas',3000.00,4,3,15),(48,'SSD Crucial MX500 1TB','SSD Crucial MX500 1TB SATA III',600.00,3,2,60),(49,'Teclado Gamer Corsair K55','Teclado Gamer Corsair K55 RGB',250.00,2,1,80),(50,'Monitor Gamer Acer 27\" Full HD','Monitor Gamer Acer KG271 27\" LED Full HD',1400.00,2,3,50),(51,'Placa de Vídeo RTX 3060 Ti','Placa de Vídeo NVIDIA GeForce RTX 3060 Ti',4000.00,1,2,25),(52,'Impressora Epson EcoTank L3150','Impressora Epson EcoTank L3150 Wi-Fi',900.00,2,3,30);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-24  0:09:41
