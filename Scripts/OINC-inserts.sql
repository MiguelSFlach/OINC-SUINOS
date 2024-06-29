--Gerador de Dados utilizado: https://generatedata.com/generator

/* Inserções de Dados */

INSERT INTO Granja (cnpj, nomgra, telgran, qtdanigra) VALUES
  (12345678000195, 'Granja Descanso', 11223344, 500),
  (98765432000121, 'Granja SMO', 55443322, 300),
  (55555555000199, 'Granja Guaraciaba', 99887766, 700),
  (77778777789018, 'Granja Tunápolis', 991887766, 900),
  (11111111000187, 'Granja Maravilha', 33445566, 400);

 ----------------------------------------------------------------
INSERT INTO Grupo (gruid, nomgru, desgru) VALUES
  (1, 'Grupo 1 (PORCA)', 'Descrição do Grupo 1 para Porcas'),
  (2, 'Grupo 2 (PORCO)', 'Descrição do Grupo 2 para Porcos'),
  (3, 'Grupo 3 (LEITÃO)', 'Descrição do Grupo 3 para Leitões');

 ----------------------------------------------------------------
INSERT INTO Fornecedor (forid,fornom,forcon,forema,forema) VALUES
  (1,'GreenFields','João Silva','1-621-420-8121','joosilva9668@protonmail.com'),
  (2,'GreenFields','Lucas Costa','(739) 384-0818','lucascosta@yahoo.com'),
  (3,'AgroTech Solutions','Maria Oliveira','1-979-837-4521','mariaoliveira832@protonmail.com'),
  (4,'GreenFields','Pedro Santos','(330) 558-8777','pedrosantos3135@google.com'),
  (5,'GreenFields','Ana Pereira','1-759-372-5152','anapereira6645@google.com');
 
 ----------------------------------------------------------------
 INSERT INTO Compra (comid,comdat,comdes,comval) VALUES
  (1,'17/06/2024','Ração A','$55.77'),
  (2,'10/01/2024','Ração B','$72.14'),
  (3,'07/01/2024','Ração C','$46.81'),
  (4,'01/08/2022','Ração D','$37.07'),
  (5,'18/05/2023','Ração E','$63.83');

 ----------------------------------------------------------------
INSERT INTO Usuario (usuid,nomusu,emausu,senusu,tipusu) VALUES
  (1,'Roary Goodwin','metus@outlook.com','EWD46GFT6NO','1'),
  (2,'Bradley Crane','et@yahoo.com','PKH14NAU9MZ','2'),
  (3,'Vielka Rollins','tellus@hotmail.com','VEO30GIG1JP','1'),
  (4,'Gemma Davidson','orci.tincidunt.adipiscing@outlook.com','HOC86JHK2LA','2'),
  (5,'Judith Jones','lectus.justo.eu@hotmail.com','FGN79NBI6WL','1');

 ----------------------------------------------------------------
 INSERT INTO Financeiro (finid,datfin,tipfin,valfin,desfin) VALUES
  (1,'11/05/2024','2','$161.96','Pagamento de fornecedores de ração'),
  (2,'14/12/2023','1','$318.20','Recebimento de venda de leitões'),
  (3,'27/08/2023','2','$242.13','Despesa com medicamentos veterinários'),
  (4,'06/02/2024','1','$262.07','Recebimento de subsídio governamental'),
  (5,'10/08/2023','2','$294.66','Pagamento de contas de energia e água');
 
 ----------------------------------------------------------------
INSERT INTO Animal (aniid,tipani,datnas,pesani,stsani,caumor)
VALUES
  (1,1,'10/04/2024',1,'1'),
  (2,2,'20/04/2023',2,'1'),
  (3,2,'13/12/2023',3,'1'),
  (4,2,'25/05/2023',4,'2','Doença respiratória'),
  (5,3,'01/06/2023',5,'2','Acidente no curral'),
  (6,1,'13/03/2024',6,'1'),
  (7,1,'18/04/2024',7,'1'),
  (8,3,'03/09/2023',8,'1'),
  (9,3,'17/04/2023',9,'1'),
  (10,2,'03/10/2023',10,'1');
  (11,3,'26/06/2023',11,'Complicações durante o parto'),
  (12,1,'26/02/2024',12,'1'),
  (13,2,'23/10/2023',13,'1'),
  (14,2,'19/06/2024',14,'1');

 ----------------------------------------------------------------
INSERT INTO Inseminacao (pcaid, pcoid, datins, sucins, tenins, Animalaniid) VALUES 
(1, 2, '2023-05-10', 1, 1, 1),
(2, 3, '2023-06-12', 2, 2, 2);
SELECT * FROM Inseminacao;

INSERT INTO Leitao (pcaid, peslei, datnaslei, qtdviv, qtdmor, qtdmum, Animalaniid) VALUES 
(1, 2.5, '2023-05-01', 5, 0, 0, 3),
(2, 3.0, '2023-06-01', 4, 1, 0, 3);
SELECT * FROM Leitao;

INSERT INTO Morte (Animalaniid, datmor, caumor) VALUES 
(3, '2023-05-15', 'Causa natural'),
(2, '2023-06-20', 'Doença');
SELECT * FROM Morte;

INSERT INTO Parto (pcaid, datpar, vasrec, Animalaniid) VALUES 
(1, '2023-05-01', 'Vacina A', 1),
(2, '2023-06-01', 'Vacina B', 2);
SELECT * FROM Parto;

INSERT INTO Vacina (nomvac, desvac) VALUES 
('Vacina A', 'Descrição da Vacina A'),
('Vacina B', 'Descrição da Vacina B');
SELECT * FROM Vacina;

INSERT INTO Vacina_Animal (Vacinavacid, Animalaniid, datvac) VALUES 
(1, 1, '2023-01-20'),
(2, 2, '2023-02-25');
SELECT * FROM Vacina_Animal;

INSERT INTO Venda (leiid, datven, preven) VALUES 
(1, '2023-06-10', 500.0),
(2, '2023-07-15', 550.0);
SELECT * FROM Venda;
