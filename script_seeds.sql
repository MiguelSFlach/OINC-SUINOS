--script dos seeds

INSERT INTO Grupo (nomgru, desgru) VALUES 
('Grupo 1', 'Grupo de suínos jovens'),
('Grupo 2', 'Grupo de suínos adultos');
SELECT * FROM Grupo;

INSERT INTO Animal (codani, tipani, datnas, pesani, stsani, caumor, Grupogruid) VALUES 
('A001', 1, '2023-01-15', 150.5, 1, 'Doença', 1),
('A002', 2, '2023-02-20', 200.3, 1, 'Diarréia', 1),
('A003', 3, '2023-03-05', 15.0, 1, 'Pneumonia', 2);
SELECT * FROM Animal;

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
