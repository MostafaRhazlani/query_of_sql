DROP TABLE IF EXISTS `clients`;

CREATE TABLE `clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `numberPhone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `clients` 
VALUES ('Ahmed Saidi','Casablanca, Maroc','065044'),
       ('Souhail','Oujda, Maroc','0771537210'),
       ('Mostafa','Oualidia, Maroc','0771538744'),
       ('Azdin','Agadir, Maroc','0612345678'),
       ('Mohammed','Rabat, Maroc','0654872198'),
       ('Omar','Safi, Maroc','0787541236')

SELECT * FROM clients;
SELECT * FROM clients WHERE id < 4;
SELECT * FROM clients WHERE name = 'mostafa';

UPDATE clients SET name = 'azdin', address = 'Oualidia, Maroc', numberPhone = '0612345678' WHERE id = 2;
UPDATE clients SET numberPhone = '0612345678' WHERE id = 5;

DELETE FROM clients WHERE id = 6;
DELETE FROM clients WHERE name = 'Mostafa';
