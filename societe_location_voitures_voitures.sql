DROP TABLE IF EXISTS `voitures`;

CREATE TABLE `voitures` (
  `marque` varchar(20) DEFAULT NULL,
  `modele` varchar(20) DEFAULT NULL,
  `annee` year DEFAULT NULL,
  `numImmatriculation` varchar(20) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `voitures` 
VALUES ('Toyota','Corolla',2020,'1234ABC'),
       ('Renault','Clio',2021,'5678XYZ'),
       ('Audi','Audi A1',2024,'7382ABC'),
       ('Bently','Bentley Bentayga',2020,'4917DEF'),
       ('BMW','BMW 1-Series',2011,'8256GHI'),
       ('Dacia','Dacia Dokker',2015,'3069JKL'),
       ('Jaguar','Jaguar E-Pace',2018,'5628PQR');

SELECT marque, modele FROM voitures;
SELECT * FROM voitures;

UPDATE voitures SET modele = 'Audi A2' WHERE id = 3;
UPDATE voitures SET marque = 'Ferrari', modele = 'Ferrari' WHERE id = 5;

DELETE FROM voitures WHERE id = 7;
