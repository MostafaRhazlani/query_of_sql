DROP TABLE IF EXISTS `contrats`;

CREATE TABLE `contrats` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dateDebut` datetime DEFAULT NULL,
  `dateFin` datetime DEFAULT NULL,
  `duree` int DEFAULT NULL,
  `numClient` int DEFAULT NULL,
  `numImmatriculation` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `numImmatriculation` (`numImmatriculation`),
  KEY `numClient` (`numClient`),
  CONSTRAINT `contrats_ibfk_2` FOREIGN KEY (`numImmatriculation`) REFERENCES `voitures` (`id`),
  CONSTRAINT `contrats_ibfk_3` FOREIGN KEY (`numClient`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `contrats` 
VALUES (1,'2024-01-01 00:00:00','2024-01-10 00:00:00',10,1,1),
       (2,'2024-04-22 00:00:00','2024-05-02 00:00:00',11,2,3),
       (3,'2024-02-01 00:00:00','2024-02-05 00:00:00',5,3,4),
       (4,'2024-02-10 00:00:00','2024-02-17 00:00:00',8,5,2),
       (5,'2024-05-01 00:00:00','2024-05-04 00:00:00',4,6,5),
       (6,'2024-08-15 00:00:00','2024-08-20 00:00:00',5,4,6);

SELECT dateDebut FROM contrats WHERE dateDebut < '2024-04-01';
SELECT * FROM contrats WHERE duree <= '10';

UPDATE contrats SET numClient = 2 WHERE id = 3;
UPDATE contrats SET dateDebut = '2024-03-02 00:00:00', dateFin = '2024-03-10 00:00:00' WHERE numClient = 2;

DELETE from contrats WHERE numClient > 4;

