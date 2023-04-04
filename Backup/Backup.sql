/*Las tablas que se incluyeron en el backup son : auditoria consumo de servicios extra, auditoria de pagos, canal de reserva, clientes,
direccion clientes,servicios extra,consumo de servicios extra, descripción de habitaciones, habitaciones, pago, recepcionista, reserva,
reserva de habitacion */

-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: hotel_royal_entrega
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Dumping data for table `auditoria_consumo_serv_extra`
--

LOCK TABLES `auditoria_consumo_serv_extra` WRITE;
/*!40000 ALTER TABLE `auditoria_consumo_serv_extra` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_consumo_serv_extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auditoria_pagos`
--

LOCK TABLES `auditoria_pagos` WRITE;
/*!40000 ALTER TABLE `auditoria_pagos` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `canal_de_reserva`
--

LOCK TABLES `canal_de_reserva` WRITE;
/*!40000 ALTER TABLE `canal_de_reserva` DISABLE KEYS */;
INSERT INTO `canal_de_reserva` VALUES (1,'particular'),(2,'almundo'),(3,'trivago'),(4,'booking'),(5,'gyra'),(6,'turismo city'),(7,'despegar'),(8,'expedia'),(9,'kayak'),(10,'priceline'),(11,'world travel'),(12,'tripadvidor'),(13,'hoteles'),(14,'vrbo'),(15,'accor live limitless'),(16,'atrapalo'),(17,'viator'),(18,'hotel beds'),(19,'best day');
/*!40000 ALTER TABLE `canal_de_reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'maria','hoyos','argentina',16559369,1,'1164352457','mariahoyos@gmail.com'),(2,'carlos','flores','argentino',14159867,1,'1136005827','carlosflores@gmail.com'),(3,'jose','flores','argentino',36295683,1,'0','joseflores@gmail.com'),(4,'lucas','flores','argentino',34659824,1,'0','lucasflores@gmail.com'),(5,'florencia','barrio','uruguay',568953,2,'643521925','florenciabarrio@gmail.com'),(6,'santiago','posadas','uruguay',576831,2,'643521978','santiagoposadas@gmail.com'),(7,'ines','aguirre','chile',2564975,3,'5365382154','inesaguirre@gmail.com'),(8,'maria','perez','chile',2653795,4,'5364978154','mariaperez@gmail.com'),(9,'carmen','reyna','chile',2659864,5,'5364978522','carmenreyna@gmail.com'),(10,'magdalena','gomez','argentina',28643528,6,'2263465218','magdalenagomez@gmail.com'),(11,'nicolas','pune','argentino',25649750,6,'2263594578','nicolaspune@gmail.com'),(12,'felipe','pune','argentino',40652104,6,'0','felipepune@gmail.com'),(13,'miguel','salamanca','español',6435289,7,'346512487','miguelsalamanca@gmail.com'),(14,'sol','gimenez','español',9865312,7,'346512487','solgimenez@gmail.com'),(15,'agustin','guerrero','ecuador',3564984,8,'126345187','agustinguerrero@gmail.com'),(16,'marco','cazza ','italiano',5461978,9,'33546192','cazzam@hotmail.com'),(17,'vitoria','centurion','italiana',5421978,9,'33645127','vitcenturion@hmail.com'),(18,'daniela','gonzales','uruguaya',649781,10,'25645789','danielagon@gmail.com'),(19,'maximo','preas','uruguayo',645127,10,'65221349','mpreas@gmail.com'),(20,'maximo jr','preas','uruguayo',316457,10,'97645127','maxipreas@gmail.com'),(21,'lorenzo','luca','chileno',245698,11,'145226589','lorenzoluca@gmail.com'),(22,'guillermo','mateo','chileno',541298,12,'145526658','mateoguille@hotmail.com'),(23,'pablo','gerra','chileno',256981,13,'254783021','guerra_pablo@gmail.com'),(24,'ricardo','sturla','paraguayo',6952387,14,'5236589','richisturla@gmail.com'),(25,'milena','pardo','paraguaya',3652147,14,'5140214','pardomilena@hotmail.com'),(26,'enrique ','lozada','argentino',32514708,15,'1145882156','enriquelozada@hotmail.com'),(27,'julian','tulio','argentino',16225871,16,'22514836','juliantulio@gmail.com'),(28,'milagros','tullido','argentina',29610214,16,'145213659','milagrostullido@gmail.com'),(29,'veronica','miranda','argentina',9521458,17,'125478985','veronicam@hotmail.com'),(30,'luz','viaus','argentina',19980215,18,'652389745','luzviaus@hotmail.com');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `consumo_servicios_extra`
--

LOCK TABLES `consumo_servicios_extra` WRITE;
/*!40000 ALTER TABLE `consumo_servicios_extra` DISABLE KEYS */;
INSERT INTO `consumo_servicios_extra` VALUES (1,4,2,3000,1),(2,1,1,3500,2),(3,2,1,4000,2),(4,4,3,4500,3),(5,5,2,2000,4),(6,1,1,3500,5),(7,2,1,4000,5),(8,4,2,3000,6),(9,1,2,7000,7),(10,1,2,7000,8),(11,2,1,4000,8),(12,3,1,5000,8),(13,4,2,3000,8),(14,4,3,4500,9),(15,1,2,7000,10),(16,2,1,4000,10),(17,5,6,6000,11),(18,2,1,4000,11),(19,4,1,1500,11),(20,5,5,5000,12),(21,3,1,5000,12),(22,1,2,7000,13),(23,1,1,3500,14);
/*!40000 ALTER TABLE `consumo_servicios_extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `descripcion_habitaciones`
--

LOCK TABLES `descripcion_habitaciones` WRITE;
/*!40000 ALTER TABLE `descripcion_habitaciones` DISABLE KEYS */;
INSERT INTO `descripcion_habitaciones` VALUES (1,'single standart',2,7450.00),(2,'doble twin',2,8600.00),(3,'doble king',2,8968.55),(4,'triple',3,12258.00),(5,'cuadruple',4,15745.00);
/*!40000 ALTER TABLE `descripcion_habitaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `direccion_clientes`
--

LOCK TABLES `direccion_clientes` WRITE;
/*!40000 ALTER TABLE `direccion_clientes` DISABLE KEYS */;
INSERT INTO `direccion_clientes` VALUES (1,'altolaguirre','2367',5,'puerto','santa fe','1567'),(2,'24','542',0,'punta','maldonado','5674'),(3,'machado','25',0,'las condes','santiago',''),(4,'andes','673',6,'centro','santiago',''),(5,'victoria ','1823',4,'centro','santiago',''),(6,'rodo','3012',0,'san benito','cordoba','3768'),(7,'gran via','56',2,'gran via','madrid','356274'),(8,'la tierra','890',4,'batan bajo','quito','8765'),(9,'via salasco ','3',1,'bocconi','milano','20136'),(10,'las focas','30',4,'peninsula','punta del este','20100'),(11,'tajamar','183',4,'las condes','santiago de chile',''),(12,'la pastora','123',0,'las condes','santiago de chile',''),(13,'obispo sierra','674',0,'vitacura','santiago de chile',''),(14,'santa ana','897',3,'las lomas','asuncion',''),(15,'rawson','5375',0,'los troncos','mar del plata',''),(16,'alberti','780',0,'ushuaia','ushuaia',''),(17,'sarmiento','302',0,'piran','gral. Piran',''),(18,'sucre','2039',7,'punta alta','santa fe','');
/*!40000 ALTER TABLE `direccion_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `habitaciones`
--

LOCK TABLES `habitaciones` WRITE;
/*!40000 ALTER TABLE `habitaciones` DISABLE KEYS */;
INSERT INTO `habitaciones` VALUES (1,201,2,1),(2,202,2,2),(3,203,2,3),(4,204,2,4),(5,205,2,5),(6,301,3,1),(7,302,3,2),(8,303,3,3),(9,304,3,4),(10,305,3,5),(11,401,4,1),(12,402,4,2),(13,403,4,3),(14,404,4,4),(15,405,4,5),(16,501,5,1),(17,502,5,2),(18,503,5,3),(19,504,5,4),(20,505,5,5),(21,601,6,1),(22,602,6,2),(23,603,6,3),(24,604,6,4),(25,605,6,5),(26,701,7,1),(27,702,7,2),(28,703,7,3),(29,704,7,4),(30,705,7,5);
/*!40000 ALTER TABLE `habitaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
INSERT INTO `pago` VALUES (1,'2022-04-24',424,2,1),(2,'2022-05-21',521,1,2),(3,'2022-06-09',609,3,3),(4,'2022-05-19',519,5,4),(5,'2022-07-07',707,6,5),(6,'2022-03-15',315,2,6),(7,'2022-04-22',422,5,7),(8,'2022-03-18',318,8,8),(9,'2022-06-16',616,2,9),(10,'2022-02-10',210,3,10),(11,'2022-02-15',215,6,11),(12,'2022-01-04',104,9,12),(13,'2022-01-03',103,10,13);
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `recepcionista`
--

LOCK TABLES `recepcionista` WRITE;
/*!40000 ALTER TABLE `recepcionista` DISABLE KEYS */;
INSERT INTO `recepcionista` VALUES (1,'clara','burgos',20259648,'1163342250','burgosclara@gmail.com','tarde'),(2,'marcelo','fernandez',36958471,'1136448972','fernandezmarcelo@gmail.com','tarde'),(3,'guillermo','ramirez',34698574,'1124876592','ramirezguillermo@gmail.com','mañana'),(4,'daniela','franco',2569877,'1136005437','francodaniela@gmail.com','tarde'),(5,'macarena','perez',28693210,'1129463215','perezmacarena@gmail.com','mañana'),(6,'daniel','villegas',30256984,'1179635288','villegasdaniel@gmail.com','tarde'),(7,'marcos','morenos',28546791,'1164335289','marcosvillegas@gmail.com','tarde'),(8,'ignacio','esterli',35620197,'22364551278','ignacioesterli@gmail.com','mañana'),(9,'milagros','quera',33164572,'2266552457','milagrosquera@gmail.com','tarde'),(10,'pia','llanos',22649187,'3364551208','piallanos@gmail.com','mañana');
/*!40000 ALTER TABLE `recepcionista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` VALUES (1,1,'2022-04-22','2022-04-24',4,1,4),(2,5,'2022-05-14','2022-05-21',3,4,2),(3,7,'2022-06-09','2022-06-14',6,6,3),(4,10,'2022-05-19','2022-05-21',4,1,3),(5,13,'2022-07-04','2022-07-07',4,2,2),(6,15,'2022-03-15','2022-03-17',11,5,1),(7,16,'2022-04-22','2022-04-24',10,7,2),(8,18,'2022-03-18','2022-03-26',18,8,3),(9,21,'2022-06-12','2022-06-16',19,9,3),(10,24,'2022-02-06','2022-02-10',12,5,2),(11,26,'2022-02-10','2022-02-15',15,8,1),(12,27,'2022-01-04','2022-01-08',1,3,2),(13,29,'2022-01-01','2022-01-03',1,6,1),(14,30,'2022-03-16','2022-03-19',4,7,1);
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `reserva_habitacion`
--

LOCK TABLES `reserva_habitacion` WRITE;
/*!40000 ALTER TABLE `reserva_habitacion` DISABLE KEYS */;
INSERT INTO `reserva_habitacion` VALUES (1,1,1),(2,2,1),(3,3,2),(4,9,3),(5,13,4),(6,11,4),(7,8,5),(8,6,6),(9,3,7),(10,23,8),(11,26,9),(12,28,9),(13,28,10),(14,21,11),(15,18,12),(16,11,13),(17,16,14);
/*!40000 ALTER TABLE `reserva_habitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `servicios_extra`
--

LOCK TABLES `servicios_extra` WRITE;
/*!40000 ALTER TABLE `servicios_extra` DISABLE KEYS */;
INSERT INTO `servicios_extra` VALUES (1,'transfer','desde o hacia el aeropuerto',3500.00),(2,'day tour','guia turistica por la ciudad',4000.00),(3,'spa day','dia de spa en un local asociado',5000.00),(4,'alquiler de bicicletas','alquiler diario de bicicletas',1500.00),(5,'parking','estacionamiento por dia',1000.00);
/*!40000 ALTER TABLE `servicios_extra` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-19 20:24:28
