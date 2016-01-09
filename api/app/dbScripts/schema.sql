DROP DATABASE IF EXISTS `list_estate`;
CREATE DATABASE `list_estate`;
USE `list_estate`;
--
-- Table structure for table `estate`
--

DROP TABLE IF EXISTS `estate`;
CREATE TABLE `estate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `image` text NOT NULL,
  `builder` text NOT NULL,
  `location` text NOT NULL,
  `price` text NOT NULL,
  `amenities` text NOT NULL,
  `color` text NOT NULL,
  `type` text NOT NULL,
  `likes` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `estate`
--

LOCK TABLES `estate` WRITE;
/*!40000 ALTER TABLE `estate` DISABLE KEYS */;
INSERT INTO `estate` VALUES (1,'Brigade Cosmopolis',
                             'https://is1-2.housingcdn.com/4f2250e8/36fa8e392425d46535d0aab6adb5cb17/v1/_l.jpg',
                             'Brigade Enterprises Ltd',
                             '{\r\n  \"location\": {\r\n    \"latitude\": \"12.962351\",\r\n    \"longitude\": \"77.746145\"\r\n  }\r\n}',
                             '86L',
                             '{\n  \"amenities\": {\n    \"pool\": \"1\",\n    \"gym\": \"0\",\n    \"community_hall\": \"1\",\n    \"play_area\": \"0\",\n    \"power_backup\": \"1\",\n    \"lift\": \"1\"\n  }\n}',
                             '#946a38',
                             '3BHK',3),
  (4,'Definer Hi-Life\r\n','https://is1-2.housingcdn.com/4f2250e8/948c37b99f05251a99fb12d9c320e825/v1/_l.jpg',
   'DeFINER Ventures',
   '{\r\n  \"location\": {\r\n    \"latitude\": \"13.036118\",\r\n    \"longitude\": \"77.693408\"\r\n  }\r\n}\r\n',
   '33.24L',
   '{\n  \"amenities\": {\n    \"pool\": \"1\",\n    \"gym\": \"1\",\n    \"community_hall\": \"1\",\n    \"play_area\": \"1\",\n    \"power_backup\": \"1\",\n    \"lift\": \"1\"\n  }\n}',
   '#adaca9','2 BHK',3),
  (3,'Olympia','https://is1-2.housingcdn.com/4f2250e8/30241a67c19fe285e50bbea6873d153d/v2/_l.jpg',
   'by Gopalan Enterprises\r\n',
   '{\r\n  \"location\": {\r\n    \"latitude\": \"12.868923\",\r\n    \"longitude\": \"77.438126\"\r\n  }\r\n}','34.48L','{\n  \"amenities\": {\n    \"pool\": \"1\",\n    \"gym\": \"0\",\n    \"community_hall\": \"1\",\n    \"play_area\": \"1\",\n    \"power_backup\": \"1\",\n    \"lift\": \"1\"\n  }\n}',
   '#78906b','2 BHK',6),
  (5,'Vajra Pleasant','https://is1-3.housingcdn.com/4f2250e8/a1d3cd90ef5eab5359f76e4d97fdb877/v1/_l.jpg',
   'Vajra Constructions\r\n','{\r\n  \"location\": {\r\n    \"latitude\": \"12.908972\",\r\n    \"longitude\": \"77.520385\"\r\n  }\r\n}','40.8L','{\n  \"amenities\": {\n    \"pool\": \"0\",\n    \"gym\": \"1\",\n    \"community_hall\": \"1\",\n    \"play_area\": \"0\",\n    \"power_backup\": \"1\",\n    \"lift\": \"1\"\n  }\n}','#6B7477','3BHK', 1),
  (6,'Wind Song\r\n','https://is1-2.housingcdn.com/4f2250e8/9546f07e7eeb869458db0403c3a2fa55/v2/_l.jpg','Ardente','{\r\n  \"location\": {\r\n    \"latitude\": \"12.921701\",\r\n    \"longitude\": \"77.533434\"\r\n  }\r\n}','81.47L','{\n  \"amenities\": {\n    \"pool\": \"1\",\n    \"gym\": \"1\",\n    \"community_hall\": \"0\",\n    \"play_area\": \"1\",\n    \"power_backup\": \"1\",\n    \"lift\": \"1\"\n  }\n}','#6f716f','3BHK', 0),
  (7,'Brigade Exotica','https://is1-3.housingcdn.com/4f2250e8/60a1573bdde6ef961ddbd0c3b54f1039/v1/_l.jpg','Brigade Enterprises Ltd\r\n','{\r\n  \"location\": {\r\n    \"latitude\": \"13.043635\",\r\n    \"longitude\": \"77.745212\"\r\n  }\r\n}\r\n','154L','{\n  \"amenities\": {\n    \"pool\": \"0\",\n    \"gym\": \"0\",\n    \"community_hall\": \"1\",\n    \"play_area\": \"0\",\n    \"power_backup\": \"1\",\n    \"lift\": \"1\"\n  }\n}','#b09d7f','3BHK', 22),
  (8,'The Presidential Tower','https://is1-2.housingcdn.com/4f2250e8/c39eb2292c8ce9636bc05d08861d531d/v1/_l.jpg','Golden Gate Properties Ltd\r\n','{\r\n  \"location\": {\r\n    \"latitude\": \"13.027811\",\r\n    \"longitude\": \"77.546348\"\r\n  }\r\n}\r\n','243L','{\n  \"amenities\": {\n    \"pool\": \"1\",\n    \"gym\": \"1\",\n    \"community_hall\": \"0\",\n    \"play_area\": \"0\",\n    \"power_backup\": \"1\",\n    \"lift\": \"1\"\n }\n}','#47597c','3BHK', 10),
  (9,'Sobha Life Style Legacy','https://is1-2.housingcdn.com/4f2250e8/2b07021b658779a468454117b6ccc7f1/v1/_l.jpg','Sobha Developers\r\n','{\r\n  \"location\": {\r\n    \"latitude\": \"13.241771\",\r\n    \"longitude\": \"77.713669\"\r\n  }\r\n}\r\n','485L','{\n  \"amenities\": {\n    \"pool\": \"0\",\n    \"gym\": \"0\",\n    \"community_hall\": \"1\",\n    \"play_area\": \"0\",\n    \"power_backup\": \"1\",\n    \"lift\": \"1\"\n  }\n}','#373128','4BHK', 21),
  (10,'HM Tropical Tree','https://is12.housingcdn.com/4f2250e8/1fe4f68d9f89613dcd2d37a2a08ce168/v1/_l.jpg','HM Group\r\n','{\n  \"location\": {\n    \"latitude\": \"13.020837\",\n    \"longitude\": \"77.594751\"\n  }\n}','324L','{\n  \"amenities\": {\n    \"pool\": \"1\",\n    \"gym\": \"0\",\n    \"community_hall\": \"0\",\n    \"play_area\": \"1\",\n    \"power_backup\": \"1\",\n    \"lift\": \"0\"\n  }\n}','#5d4f2c','4BHK',10),
  (11,'Reflection Villas','https://is1-2.housingcdn.com/4f2250e8/9230404c961981583cfca75a6cfbf046/v2/_l.jpg','OLYMPIA GROUP','{\r\n  \"location\": {\r\n    \"latitude\": \"12.775932\",\r\n    \"longitude\": \"80.248198\"\r\n  }\r\n}\r\n','376L','{\n  \"amenities\": {\n    \"pool\": \"1\",\n    \"gym\": \"1\",\n    \"community_hall\": \"1\",\n    \"play_area\": \"1\",\n    \"power_backup\": \"1\",\n    \"lift\": \"1\"\n  }\n}','#a6a5a2','3BHK',5),
  (12,'Shubh-Labh Homes','https://is1-3.housingcdn.com/4f2250e8/57407e744bc03d51fa1eae7ab3263eec/v3/_l.jpg','Shubh - Labh Associates\r\n','{\r\n  \"location\": {\r\n    \"latitude\": \"28.619979\",\r\n    \"longitude\": \"77.054649\"\r\n  }\r\n}\r\n','33L','{\n  \"amenities\": {\n    \"pool\": \"1\",\n    \"gym\": \"0\",\n    \"community_hall\": \"0\",\n    \"play_area\": \"0\",\n    \"power_backup\": \"1\",\n    \"lift\": \"0\"\n  }\n}','#ac906e','3BHK', 9),
  (13,'Aarambh Apartment','https://is1-3.housingcdn.com/4f2250e8/8ec8f928f1091d741e3301d229fc25b8/v1/_l.jpg','Mahalaxmi Group','{\r\n  \"location\": {\r\n    \"latitude\": \"19.471762\",\r\n    \"longitude\": \"72.828659\"\r\n  }\r\n}','13L','{\n  \"amenities\": {\n    \"pool\": \"0\",\n    \"gym\": \"0\",\n    \"community_hall\": \"0\",\n    \"play_area\": \"1\",\n    \"power_backup\": \"1\",\n    \"lift\": \"1\"\n  }\n}','#3b3f41','1 BHK', 1);
/*!40000 ALTER TABLE `estate` ENABLE KEYS */;
UNLOCK TABLES;
