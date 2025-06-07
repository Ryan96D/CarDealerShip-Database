-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: cardealership
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Table structure for table `dealerships`
--

DROP TABLE IF EXISTS `dealerships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dealerships` (
  `dealership_id` int NOT NULL AUTO_INCREMENT,
  `dealership_name` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Phone` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`dealership_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealerships`
--

LOCK TABLES `dealerships` WRITE;
/*!40000 ALTER TABLE `dealerships` DISABLE KEYS */;
INSERT INTO `dealerships` VALUES (1,'Sunrise Auto','123 Main St','555-123-4567'),(2,'Mega Motors','456 Elm St','555-987-6543'),(3,'Prime Wheels','789 Oak Ave','555-555-1212'),(4,'Sunrise Auto','123 Main St, Los Angeles, CA','555-101-0001'),(5,'Urban Motors','456 Market Ave, San Francisco, CA','555-202-0002'),(6,'North Star Cars','789 Pine Rd, Seattle, WA','555-303-0003'),(7,'Coastal Rides','321 Ocean Dr, San Diego, CA','555-404-0004'),(8,'Desert Drive','654 Sand Blvd, Phoenix, AZ','555-505-0005'),(9,'Metro Auto','222 City St, Chicago, IL','555-606-0006'),(10,'Freedom Wheels','888 Liberty Ln, Dallas, TX','555-707-0007'),(11,'Big Sky Autos','444 Horizon Dr, Denver, CO','555-808-0008'),(12,'Rust Belt Motors','999 Steel St, Detroit, MI','555-909-0009'),(13,'Capitol Cars','111 Congress Ave, Washington, DC','555-111-1111');
/*!40000 ALTER TABLE `dealerships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `dealership_id` int NOT NULL,
  `VIN` varchar(17) NOT NULL,
  PRIMARY KEY (`dealership_id`,`VIN`),
  KEY `VIN` (`VIN`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`dealership_id`) REFERENCES `dealerships` (`dealership_id`),
  CONSTRAINT `inventory_ibfk_2` FOREIGN KEY (`VIN`) REFERENCES `vehicles` (`VIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (2,'000000G00SE000001'),(9,'1C4RJEBG8FC000017'),(1,'1FAFP404X1F000002'),(1,'1FAFP404X1F123456'),(7,'1FTFW1ET5E0000013'),(8,'1G1BE5SM7H0000015'),(4,'1GCHK231X2F000007'),(1,'1HGCM82633A000001'),(1,'1HGCM82633A004352'),(5,'1N4AL11D75C000010'),(2,'2T1BR32E54C000003'),(2,'2T1BR32E54C123456'),(3,'3C6UR5FL4JG000005'),(2,'3C6UR5FL4JG123456'),(6,'3FAHP0HA4AR000012'),(6,'4T1BE32KX6U000011'),(9,'5UXWX9C58E0F00018'),(3,'5YJ3E1EA7KF000006'),(4,'JM1BL1UG1A0000008'),(5,'JN1AZ4EH3DM000009'),(8,'SALWR2FKXFA000016'),(7,'WA1LFAFP8FA000014'),(2,'WDBUF56X48B000004'),(3,'WDBUF56X48B123456'),(10,'YV1MS382772000020'),(10,'ZARFAEAV9J0000019');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leases`
--

DROP TABLE IF EXISTS `leases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leases` (
  `lease_id` int NOT NULL AUTO_INCREMENT,
  `VIN` varchar(17) DEFAULT NULL,
  `leaseholder_name` varchar(100) DEFAULT NULL,
  `lease_start_date` date DEFAULT NULL,
  `lease_end_date` date DEFAULT NULL,
  `monthly_payment` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`lease_id`),
  KEY `VIN` (`VIN`),
  CONSTRAINT `leases_ibfk_1` FOREIGN KEY (`VIN`) REFERENCES `vehicles` (`VIN`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leases`
--

LOCK TABLES `leases` WRITE;
/*!40000 ALTER TABLE `leases` DISABLE KEYS */;
INSERT INTO `leases` VALUES (1,'2T1BR32E54C123456','Emily Davis','2024-01-01','2026-01-01',299.99),(2,'WDBUF56X48B123456','Chris Johnson','2023-06-15','2025-06-15',449.50),(3,'2T1BR32E54C000003','Liam Torres','2024-01-01','2026-01-01',250.00),(4,'3C6UR5FL4JG000005','Sophia Harris','2024-02-10','2027-02-10',430.00),(5,'1GCHK231X2F000007','Ethan Brown','2024-03-15','2026-03-15',395.00),(6,'JN1AZ4EH3DM000009','Ava Wilson','2024-03-20','2026-03-20',340.00),(7,'1N4AL11D75C000010','Noah Walker','2024-04-01','2026-04-01',280.00),(8,'3FAHP0HA4AR000012','Mia Scott','2024-04-15','2026-04-15',310.00),(9,'WA1LFAFP8FA000014','Mason Young','2024-05-01','2027-05-01',460.00),(10,'SALWR2FKXFA000016','Isabella Allen','2024-05-10','2027-05-10',500.00),(11,'1C4RJEBG8FC000017','Logan Perez','2024-06-01','2026-06-01',420.00),(12,'ZARFAEAV9J0000019','Charlotte Rivera','2024-06-10','2026-06-10',385.00);
/*!40000 ALTER TABLE `leases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_contracts`
--

DROP TABLE IF EXISTS `sales_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_contracts` (
  `contract_id` int NOT NULL AUTO_INCREMENT,
  `VIN` varchar(17) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `sale_date` date DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`contract_id`),
  KEY `VIN` (`VIN`),
  CONSTRAINT `sales_contracts_ibfk_1` FOREIGN KEY (`VIN`) REFERENCES `vehicles` (`VIN`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_contracts`
--

LOCK TABLES `sales_contracts` WRITE;
/*!40000 ALTER TABLE `sales_contracts` DISABLE KEYS */;
INSERT INTO `sales_contracts` VALUES (2,'1FAFP404X1F123456','Michael Lee','2024-03-02',24999.99),(3,'WDBUF56X48B123456','Sandra Ochoa','2024-06-01',32500.75),(6,'1HGCM82633A000001','Alice Johnson','2024-01-10',18900.00),(7,'1FAFP404X1F000002','Tom Smith','2024-02-15',27500.00),(8,'WDBUF56X48B000004','Julia Martinez','2024-03-01',33000.00),(9,'5YJ3E1EA7KF000006','Kevin Lee','2024-04-12',42000.00),(10,'JM1BL1UG1A0000008','Sarah Kim','2024-04-25',19500.00),(11,'4T1BE32KX6U000011','David Patel','2024-05-05',24000.00),(12,'1FTFW1ET5E0000013','Jessica Nguyen','2024-05-20',52000.00),(13,'1G1BE5SM7H0000015','Carlos Reyes','2024-06-01',17000.00),(14,'5UXWX9C58E0F00018','Michelle Tran','2024-06-10',38000.00),(15,'YV1MS382772000020','Emma Brooks','2024-06-15',21500.00);
/*!40000 ALTER TABLE `sales_contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `VIN` varchar(17) NOT NULL,
  `MakeModel` varchar(50) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `Color` varchar(30) DEFAULT NULL,
  `SOLD` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`VIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES ('000000G00SE000001','BMW 3 Series',2017,'Navy Blue',0),('1C4RJEBG8FC000017','Jeep Grand Cherokee',2021,'Red',0),('1FAFP404X1F000002','Ford Mustang',2022,'Red',1),('1FAFP404X1F123456','Ford Mustang',2021,'Red',1),('1FTFW1ET5E0000013','Ford F-150',2023,'Black',1),('1G1BE5SM7H0000015','Chevy Cruze',2019,'Blue',1),('1GCHK231X2F000007','Chevy Silverado',2020,'Black',0),('1HGCM82633A000001','Honda Accord',2020,'Blue',1),('1HGCM82633A004352','Honda Accord',2020,'Blue',0),('1N4AL11D75C000010','Nissan Altima',2018,'Blue',0),('2T1BR32E54C000003','Toyota Corolla',2019,'White',0),('2T1BR32E54C123456','Toyota Corolla',2019,'White',0),('3C6UR5FL4JG000005','Ram 2500',2023,'Silver',0),('3C6UR5FL4JG123456','Ram 2500',2023,'Silver',0),('3FAHP0HA4AR000012','Ford Fusion',2021,'Silver',0),('4T1BE32KX6U000011','Toyota Camry',2022,'Green',1),('5UXWX9C58E0F00018','BMW X3',2022,'Black',1),('5YJ3E1EA7KF000006','Tesla Model 3',2022,'Gray',1),('JM1BL1UG1A0000008','Mazda 3',2021,'Red',1),('JN1AZ4EH3DM000009','Nissan 370Z',2020,'White',0),('SALWR2FKXFA000016','Land Rover Sport',2020,'Gray',0),('WA1LFAFP8FA000014','Audi Q5',2021,'White',0),('WDBUF56X48B000004','Mercedes E350',2021,'Black',1),('WDBUF56X48B123456','Mercedes E350',2022,'Black',1),('YV1MS382772000020','Volvo S40',2019,'Silver',1),('ZARFAEAV9J0000019','Alfa Romeo Giulia',2020,'White',0);
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-06 17:30:30
