-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: retail
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductID` text,
  `ProductName` text,
  `Category` text,
  `SubCategory` text,
  `UnitPrice` double DEFAULT NULL,
  `CostPrice` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('P001','Like Camera','Electronics','Camera',1673.69,1323.38),('P002','Audience Television','Electronics','Television',818.76,527.62),('P003','Here Footwear','Fashion','Footwear',337.63,169.03),('P004','Four Accessories','Fashion','Accessories',1853.77,1363.52),('P005','Knowledge Bags','Fashion','Bags',1396.22,1004.09),('P006','Company Fruits','Groceries','Fruits',318.05,187.34),('P007','Understand Camera','Electronics','Camera',1474.12,764.02),('P008','Recognize Footwear','Fashion','Footwear',109.78,70.59),('P009','Us Snacks','Groceries','Snacks',123.19,80.36),('P010','Step Smartphone','Electronics','Smartphone',1194.12,838.95),('P011','Either Headphones','Electronics','Headphones',248.57,190.67),('P012','Above Camera','Electronics','Camera',1193.09,818.24),('P013','World Watches','Fashion','Watches',1134.8,675.1),('P014','Add Clothing','Fashion','Clothing',1342.75,797.94),('P015','Whether Bags','Fashion','Bags',270.45,187.6),('P016','House Accessories','Fashion','Accessories',1858.75,1451.16),('P017','Find Headphones','Electronics','Headphones',1246.11,833.52),('P018','Democratic Smartphone','Electronics','Smartphone',1079.89,703.83),('P019','Traditional Laptop','Electronics','Laptop',1762.92,1346.48),('P020','Simple Accessories','Fashion','Accessories',323.92,242.98),('P021','Firm Dairy','Groceries','Dairy',1227.24,977.09),('P022','How Vegetables','Groceries','Vegetables',25.57,19.05),('P023','And Footwear','Fashion','Footwear',1878.47,1014.91),('P024','Him Smartphone','Electronics','Smartphone',1487.41,813.07),('P025','Little Watches','Fashion','Watches',429.15,258.72),('P026','Behavior Dairy','Groceries','Dairy',1015.76,584.4),('P027','Hospital Smartphone','Electronics','Smartphone',1272.23,952.65),('P028','Deal Smartphone','Electronics','Smartphone',673.78,363.33),('P029','Road Clothing','Fashion','Clothing',1485.05,988.31),('P030','National Watches','Fashion','Watches',29.24,15.28),('P031','Foot Snacks','Groceries','Snacks',1095.72,822.2),('P032','Difficult Vegetables','Groceries','Vegetables',304.71,164.01),('P033','Beat Accessories','Fashion','Accessories',1798.97,1329.15),('P034','Everything Laptop','Electronics','Laptop',428.05,246.07),('P035','Chair Laptop','Electronics','Laptop',1562.43,1195.63),('P036','New Watches','Fashion','Watches',1501.46,1167.73),('P037','Book Television','Electronics','Television',1952.65,1451.27),('P038','Stage Footwear','Fashion','Footwear',366.93,285.23),('P039','Church Clothing','Fashion','Clothing',540.94,398.25),('P040','Piece Headphones','Electronics','Headphones',1745.61,1322.44),('P041','Present Television','Electronics','Television',1635.01,1043.29),('P042','Maybe Clothing','Fashion','Clothing',453.62,316.63),('P043','Soon Accessories','Fashion','Accessories',564.42,293.96),('P044','Least Accessories','Fashion','Accessories',1286.55,797.54),('P045','Set Dairy','Groceries','Dairy',1879.08,1004.56),('P046','Nature Clothing','Fashion','Clothing',1165.37,926.55),('P047','Or Smartphone','Electronics','Smartphone',1197.18,722.74),('P048','Nor Bags','Fashion','Bags',1216.36,794.8),('P049','Possible Watches','Fashion','Watches',388.26,199.3),('P050','Maybe Footwear','Fashion','Footwear',1044.64,775.07);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-15 23:25:09
