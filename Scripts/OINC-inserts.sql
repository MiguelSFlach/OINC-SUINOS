--Gerador de Dados utilizado: https://generatedata.com/generator

/* Inserções de Dados */

INSERT INTO Granja (cnpj, nomgra, telgran, qtdanigra) VALUES
  (12345678000195, 'Granja Descanso', 11223344, 500),
  (98765432000121, 'Granja SMO', 55443322, 300),
  (55555555000199, 'Granja Guaraciaba', 99887766, 700),
  (77778777789018, 'Granja Tunápolis', 991887766, 900),
  (11111111000187, 'Granja Maravilha', 33445566, 400);

INSERT INTO Grupo (gruid,nomgru,desgru)VALUES
  (1,'Vivamus','justo'),
  (2,'egestas.','nunc'),
  (3,'feugiat','ipsum'),
  (4,'sem','egestas.'),
  (5,'eleifend','felis');

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
