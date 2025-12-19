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
-- Temporary view structure for view `store_sales_summary`
--

DROP TABLE IF EXISTS `store_sales_summary`;
/*!50001 DROP VIEW IF EXISTS `store_sales_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `store_sales_summary` AS SELECT 
 1 AS `StoreID`,
 1 AS `StoreName`,
 1 AS `City`,
 1 AS `Region`,
 1 AS `TotalTransactions`,
 1 AS `TotalUnitsSold`,
 1 AS `GrossRevenue`,
 1 AS `NetRevenue`,
 1 AS `Profit`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `customer_value_summary`
--

DROP TABLE IF EXISTS `customer_value_summary`;
/*!50001 DROP VIEW IF EXISTS `customer_value_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_value_summary` AS SELECT 
 1 AS `CustomerID`,
 1 AS `CustomerName`,
 1 AS `Gender`,
 1 AS `City`,
 1 AS `TotalOrders`,
 1 AS `TotalUnitsPurchased`,
 1 AS `LifetimeRevenue`,
 1 AS `LifetimeProfit`,
 1 AS `AvgOrderValue`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `store_sales_summary`
--

/*!50001 DROP VIEW IF EXISTS `store_sales_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `store_sales_summary` AS select `s`.`StoreID` AS `StoreID`,`s`.`StoreName` AS `StoreName`,`s`.`City` AS `City`,`s`.`Region` AS `Region`,count(`t`.`TransactionID`) AS `TotalTransactions`,sum(`t`.`Quantity`) AS `TotalUnitsSold`,sum(`t`.`GrossRevenue`) AS `GrossRevenue`,sum(`t`.`NetRevenue`) AS `NetRevenue`,sum(`t`.`Profit`) AS `Profit` from (`transactions` `t` join `stores` `s` on((`t`.`StoreID` = `s`.`StoreID`))) group by `s`.`StoreID`,`s`.`StoreName`,`s`.`City`,`s`.`Region` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customer_value_summary`
--

/*!50001 DROP VIEW IF EXISTS `customer_value_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_value_summary` AS select `c`.`CustomerID` AS `CustomerID`,concat(`c`.`FirstName`,' ',`c`.`LastName`) AS `CustomerName`,`c`.`Gender` AS `Gender`,`c`.`City` AS `City`,count(`t`.`TransactionID`) AS `TotalOrders`,sum(`t`.`Quantity`) AS `TotalUnitsPurchased`,sum(`t`.`NetRevenue`) AS `LifetimeRevenue`,sum(`t`.`Profit`) AS `LifetimeProfit`,avg(`t`.`NetRevenue`) AS `AvgOrderValue` from (`transactions` `t` join `customers` `c` on((`t`.`CustomerID` = `c`.`CustomerID`))) group by `c`.`CustomerID`,`CustomerName`,`c`.`Gender`,`c`.`City` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'retail'
--

--
-- Dumping routines for database 'retail'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-15 23:25:10
