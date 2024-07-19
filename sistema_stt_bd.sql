
DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `dni` varchar(255) DEFAULT NULL,
  `number_phone` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_r43af9ap4edm43mmtq01oddj6` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `users` WRITE;
INSERT INTO `users` VALUES (8,'pancho_alenda@yahoo.com.ar','Alenda','Pancho','$2a$10$0MApmQ43LAuzdgeitxvFUOdZ5ROQzLS4MTeVEIy5h0aPuPRHHHZUq','admin',NULL,NULL,NULL,NULL),(9,'pato257_7@yahoo.com.ar','Funes','Pato','$2a$10$ZZ1F21oosvnthCuyu4Kd9OdctnyQQpMzOJ9GKEaUNN3x1xJBrtl9i','pato257',NULL,NULL,NULL,NULL),(10,'pato257_7@hotmail.com','Funes','Patricia','$2a$10$rzozLsrWd7WdG.djwyGbj.ZQHYOE1gEh87mqbJGwxRqSiRqEPaT1K','pato',NULL,NULL,NULL,NULL),(11,'juangomez@hotmail.com','Gomez','Juan','$2a$10$AEw3ICkV1sSMWjC9YLfNFe2LvnnpRBf3OhJrVy.RUjhROEeysBPs.','juan',NULL,NULL,NULL,NULL),(12,'A','pollo','A,A','$2a$10$0MApmQ43LAuzdgeitxvFUOdZ5ROQzLS4MTeVEIy5h0aPuPRHHHZUq','12345','c:\\sistema\\avatars\\FotoCC.jpg','2644123833','q@a.com','A'),(13,'pepe@pepe.com','POLLO,POLLO','PEPE','$2a$10$0MApmQ43LAuzdgeitxvFUOdZ5ROQzLS4MTeVEIy5h0aPuPRHHHZUq','pepito','CALLE 1','12.345.678','2644123833','c:\\sistema\\avatars\\FotoCC.jpg'),(14,'papa@papa.com','A,A','A','$2a$10$7N2qBaAIXc2FWmWNt8BOYOMORxaqMhH26snverci8eKu1fNvWGw92','fran','A','12.235.325','2644123833','src\\main\\resources\\static\\avatars\\jmolina - copia.jpeg'),(15,'a@a.com','ALE,ALE','ALE','$2a$10$6RBlnes6Nk3CJ9n/Xzzvd.mMc81D8nwtF1aORmDtXM4RbmOQtDktG','alejo','A','98.654.321','2644123655','src\\main\\resources\\static\\avatars\\jmolina.jpeg'),(16,'a@a.com','AA,AA','A','$2a$10$NwGzAvpZktfcQ341ZlTR9OqedJ.R/uYiW5IGzBu6pQWYDkouufMNW','papa','A','21.236.236','2344567899','Back\\src\\main\\resources\\static\\avatars\\jmolina - copia.jpeg'),(17,'p@p.com','A,A','A','$2a$10$xOcqnLs6NhAIU1oYf5oMbeedtDejYtdq02e07vakzwj3h.lDawkWu','pedro','A','12.325.365','1234567899','C:\\Users\\panch\\Desktop\\Sistema STT - Final\\Back\\src\\main\\resources\\static\\avatars\\jmolina - copia.jpeg'),(18,'a@a.com','A,A','A','$2a$10$HG75/2GI31gywwzgojbW4u5N7rXLOKj/jIi83CGOd4bmVQscMWQU2','pollox','A','23.369.325','2644123833','avatars\\falfaro.jpeg'),(19,'mail@mail.com','Blasco','Leo','$2a$10$4q0J6XZBmEiewaxi0W8D2eDaGFODiJFFu5hc7WvWewOqTZfcyxAz6','lblasco','calle','12345678','2644123888','');
UNLOCK TABLES;


DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name_role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_huvt67m8co70tcbe9yogs1yan` (`name_role`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `roles` WRITE;
INSERT INTO `roles` VALUES (3,'ROLE_ACCOUNTANT'),(1,'ROLE_ADMIN'),(5,'ROLE_CIRCULATIONPERMIT'),(10,'ROLE_DISPATCH'),(20,'ROLE_HERITAGE'),(21,'ROLE_HIREDSERVICE'),(11,'ROLE_LEGAL'),(22,'ROLE_NOTIFIER'),(19,'ROLE_PERSONAL'),(4,'ROLE_REGISTER'),(8,'ROLE_REPAC'),(9,'ROLE_RETRACAP'),(6,'ROLE_STREETCLOSUREPERMIT'),(18,'ROLE_SUBE'),(7,'ROLE_TAXI'),(2,'ROLE_USER');
UNLOCK TABLES;


DROP TABLE IF EXISTS `users_roles`;

CREATE TABLE `users_roles` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  UNIQUE KEY `UKq3r1u8cne2rw2hkr899xuh7vj` (`user_id`,`role_id`),
  KEY `FKj6m8fwv7oqv74fcehir1a9ffy` (`role_id`),
  CONSTRAINT `FK2o0jvgh89lemvvo17cbqvdxaa` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKj6m8fwv7oqv74fcehir1a9ffy` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `users_roles` WRITE;
INSERT INTO `users_roles` VALUES (8,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(8,2),(9,2),(10,2),(12,3),(13,3),(15,3),(16,3),(17,3),(18,3),(19,18),(11,22),(14,22);
UNLOCK TABLES;
