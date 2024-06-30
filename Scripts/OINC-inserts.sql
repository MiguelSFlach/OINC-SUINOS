--Gerador de Dados utilizado: https://generatedata.com/generator

/* Inserções de Dados */

----------------------------------------------------------------

INSERT INTO Granja (cnpj, nomgra, telgran, qtdanigra) VALUES
  (12345678000195, 'Granja Esperança', 11223344, 500),
  (98765432000121, 'Granja Sol Nascente', 55443322, 300),
  (55555555000199, 'Granja Boa Vista', 99887766, 700),
  (77778777789018, 'Granja União', 991887766, 900),
  (11111111000187, 'Granja Floresta Azul', 33445566, 400);
 
 ----------------------------------------------------------------

INSERT INTO Grupo (gruid, nomgru, desgru) VALUES
  (1, 'Grupo 1 (PORCA)', 'Descrição do Grupo 1 para Porcas'),
  (2, 'Grupo 2 (PORCO)', 'Descrição do Grupo 2 para Porcos'),
  (3, 'Grupo 3 (LEITÃO)', 'Descrição do Grupo 3 para Leitões');
 
 ----------------------------------------------------------------

INSERT INTO Fornecedor (forid, fornom, forcon, fortel, forema) VALUES
  (1, 'GreenFields', 'João Silva', '1-621-420-8121', 'joosilva9668@protonmail.com'),
  (2, 'GreenFields', 'Lucas Costa', '(739) 384-0818', 'lucascosta@yahoo.com'),
  (3, 'AgroTech Solutions', 'Maria Oliveira', '1-979-837-4521', 'mariaoliveira832@protonmail.com'),
  (4, 'GreenFields', 'Pedro Santos', '(330) 558-8777', 'pedrosantos3135@google.com'),
  (5, 'GreenFields', 'Ana Pereira', '1-759-372-5152', 'anapereira6645@google.com');
 
 ----------------------------------------------------------------

INSERT INTO Compra (comid, comdat, comdes, comval,forid) VALUES
  (1, '2024-06-17', 'Ração A', 56, 1),
  (2, '2024-07-18', 'Ração B', 34, 2), 
  (3, '2024-08-19', 'Ração C', 45, 3), 
  (4, '2024-09-20', 'Ração D', 67, 4),
  (5, '2024-10-21', 'Ração E', 89, 5);
 
 ----------------------------------------------------------------

INSERT INTO Usuario (usuid, nomusu, emausu, senusu, tipusu, Granjacnpj) VALUES
  (1, 'Roary Goodwin', 'metus@outlook.com', 'EWD46GFT6NO', 1, 12345678000195),
  (2, 'Bradley Crane', 'et@yahoo.com', 'PKH14NAU9MZ', 2, 98765432000121),
  (3, 'Vielka Rollins', 'tellus@hotmail.com', 'VEO30GIG1JP', 1, 55555555000199),
  (4, 'Gemma Davidson', 'orci.tincidunt.adipiscing@outlook.com', 'HOC86JHK2LA', 2, 77778777789018),
  (5, 'Judith Jones', 'lectus.justo.eu@hotmail.com', 'FGN79NBI6WL', 1, 11111111000187);

 
 ----------------------------------------------------------------

INSERT INTO Financeiro (finid, datfin, tipfin, valfin, desfin,Usuariousuid) VALUES
  (1, '2024-05-11', '2', 161.96, 'Pagamento de fornecedores de ração',1),
  (2, '2023-12-14', '1', 318.20, 'Recebimento de venda de leitões',2),
  (3, '2023-08-27', '2', 242.10, 'Despesa com medicamentos veterinários',3),
  (4, '2024-02-06', '1', 262.07, 'Recebimento de subsídio governamental',4),
  (5, '2023-08-10', '2', 294.66, 'Pagamento de contas de energia e água',5);
 
 ----------------------------------------------------------------

INSERT INTO Animal (aniid, tipani, datnas, pesani, stsani, caumor, Grupogruid, Granjacnpj) VALUES
  (1, 1, '2024-04-10', 1, 1, NULL, 1, 12345678000195),
  (2, 2, '2023-04-20', 2, 1, NULL, 2, 98765432000121),
  (3, 2, '2023-12-13', 3, 1, NULL, 2, 98765432000121),
  (4, 2, '2023-05-25', 4, 2, 'Doença respiratória', 2, 98765432000121),
  (5, 3, '2023-06-01', 5, 2, 'Acidente no curral', 3, 55555555000199),
  (6, 1, '2024-03-13', 6, 1, NULL, 1, 12345678000195),
  (7, 1, '2024-04-18', 7, 1, NULL, 1, 12345678000195),
  (8, 3, '2023-09-03', 8, 1, NULL, 3, 55555555000199),
  (9, 3, '2023-04-17', 9, 1, NULL, 3, 55555555000199),
  (10, 2, '2023-10-03', 10, 1, NULL, 2, 98765432000121),
  (11, 3, '2023-06-26', 11, 2, 'Complicações durante o parto', 3, 55555555000199),
  (12, 1, '2024-02-26', 12, 1, NULL, 1, 12345678000195),
  (13, 2, '2023-10-23', 13, 1, NULL, 2, 98765432000121),
  (14, 2, '2024-06-19', 14, 1, NULL, 2, 98765432000121);

 
 ----------------------------------------------------------------

INSERT INTO Vacina_Animal (idvacani, datvac, Animalaniid) VALUES
  (1, '2024-10-30', 1),
  (2, '2024-02-14', 2),
  (3, '2025-01-03', 3),
  (4, '2023-12-25', 4),
  (5, '2025-04-04', 5);
 
 ----------------------------------------------------------------

INSERT INTO Venda (venid, Animalaniid, datven, preven) VALUES
  (1, 1, '2024-04-15', 532),
  (2, 2, '2023-10-20', 330),
  (3, 3, '2024-09-22', 447),
  (4, 4, '2024-03-26', 885),
  (5, 5, '2025-02-24', 871);
 
 ----------------------------------------------------------------

INSERT INTO Leitao (leiid, pcaid, peslei, datnaslei, Animalaniid,Vendavenid) VALUES
  (1, 1, 27, '2024-06-16', 1,1),
  (2, 2, 60, '2024-12-26', 2,2),
  (3, 3, 60, '2024-07-29', 3,3),
  (4, 4, 32, '2024-11-03', 4,4),
  (5, 5, 60, '2023-07-18', 5,5);
 
 ----------------------------------------------------------------

INSERT INTO Alimentacao (aliid, datali, tipali, qtdali, Animalaniid) VALUES
  (1, '2023-08-04', 'Farelo de milho', 7, 1),
  (2, '2023-12-22', 'Farelo de soja', 6, 2),
  (3, '2025-05-08', 'Farelo de trigo', 6, 3),
  (4, '2023-10-16', 'Ração concentrada', 6, 4),
  (5, '2024-05-30', 'Subprodutos agrícolas', 3, 5);
 
 ----------------------------------------------------------------

INSERT INTO Endereco (idend, ruaend, numend, cidend, cepend, Granjacnpj) VALUES
  (1, 'Rua Marcilio Dias', '1199', 'São Miguel do Oeste', 89900000, 12345678000195),
  (2, 'Rua 07 de Setembro', '700', 'Descanso', 89910000, 98765432000121),
  (3, 'Rua Adolfo Konder', '133', 'Guaraciaba', 89920000, 98765432000121),
  (4, 'Av. Uruguai', '1700', 'Itapiranga', 89896000, 98765432000121);
 
 ----------------------------------------------------------------

INSERT INTO Inseminacao (insid, tipins, datins, sucins, tenins, Animalaniid) VALUES
  (1, '1', '2025-04-29', 2, 1, 1),
  (2, '2', '2025-02-10', 1, 3, 2),
  (3, '2', '2023-09-07', 2, 3, 3),
  (4, '1', '2025-01-29', 1, 4, 4),
  (5, '1', '2024-03-29', 1, 2, 5);

 ----------------------------------------------------------------
 
INSERT INTO Insumo (insid, nomins, desins, qtdins, undins) VALUES
  (1, 'Farelo de soja', 'Farelo de soja para alimentação animal', 300, 'kg'),
  (2, 'Farelo de milho', 'Farelo de milho para alimentação animal', 200, 'kg'),
  (3, 'Ração concentrada', 'Ração concentrada para suínos', 150, 'kg'),
  (4, 'Subprodutos agrícolas', 'Subprodutos agrícolas para alimentação animal', 100, 'kg'),
  (5, 'Farelo de trigo', 'Farelo de trigo para alimentação animal', 250, 'kg');


----------------------------------------------------------------
 
INSERT INTO Movimentacao (movid, datmov, tipmov, locorimov, locdesmov, motmov, Animalaniid) VALUES
  (1, '2023-09-18', 1, 'São Miguel do Oeste', 'Descanso', 'Compra', 1),
  (2, '2024-03-08', 1, 'Itapiranga', 'Guaraciaba', 'Compra', 2),
  (3, '2024-12-03', 1, 'Dionísio Cerqueira', 'Palmitos', 'Compra', 3),
  (4, '2023-07-12', 1, 'Maravilha', 'Chapecó', 'Compra', 4),
  (5, '2023-07-18', 2, 'Iporã do Oeste', 'Mondaí', 'Venda', 5);

----------------------------------------------------------------

INSERT INTO Notificacao (notid, notdat, notmen, notlid, Usuariousuid) VALUES
  (1, '2025-06-10', 'Reunião às 10h', 2, 1),
  (2, '2025-01-09', 'Nova mensagem recebida', 1, 2),
  (3, '2023-08-19', 'Atualização disponível', 1, 3),
  (4, '2025-02-11', 'Entrega em andamento', 1, 4),
  (5, '2025-02-28', 'Pagamento confirmado', 1, 5);

----------------------------------------------------------------

INSERT INTO Parto (parid, datpar, vasrec, morqtdpar, Animalaniid) VALUES
  (1, '2025-06-23', 'Sim', 6, 1),
  (2, '2023-08-30', 'Sim', 3, 1),
  (3, '2025-05-16', 'Sim', 4, 6),
  (4, '2024-12-21', 'Sim', 5, 6),
  (5, '2024-02-11', 'Sim', 2, 7);

----------------------------------------------------------------

INSERT INTO Registro (logid, logaca, logdat, Usuariousuid) VALUES
  (1, 'Inscrição', '2025-02-12', 1),
  (2, 'Documentação', '2025-02-28', 2),
  (3, 'Registro', '2025-01-15', 3),
  (4, 'Cadastro', '2024-05-21', 4),
  (5, 'Inscrição', '2024-01-13', 5);

----------------------------------------------------------------

INSERT INTO Tratamento (traid, dattra, destra, medtra, dostra, durtra, Animalaniid) VALUES
  (1, '2024-10-02', 'Recuperação Medicamento', 'Antiparasitário', '100ml', 7, 1),
  (2, '2025-01-19', 'Recuperação Medicamento', 'Anti-inflamatório', '4ml', 9, 2),
  (3, '2025-02-23', 'Recuperação Medicamento', 'Antifúngico', '5ml', 5, 3),
  (4, '2025-02-10', 'Recuperação Medicamento', 'Anti-inflamatório', '15ml', 9, 4),
  (5, '2025-03-04', 'Diagnóstico Recuperação', 'Antiparasitário', '4ml', 7, 5);

----------------------------------------------------------------

INSERT INTO Uso_Insumo (Insumoinsid, Animalaniid, idusuins, datuso, qtdusoins, desusoins) VALUES
  (1, 1, 1, '2023-10-15', 5, 'Alimentação'),
  (2, 2, 2, '2025-02-06', 7, 'Alimentação'),
  (3, 3, 3, '2024-08-21', 1, 'Alimentação'),
  (4, 4, 4, '2024-09-22', 10, 'Alimentação'),
  (5, 5, 5, '2025-06-23', 2, 'Alimentação');

----------------------------------------------------------------

INSERT INTO Vacina (vacid, nomvac, desvac, Vacina_Animalidvacani) VALUES
  (1, 'Doença De Aujeszky', 'Medicação', 1),
  (2, 'Pneumonia Enzoótica', 'Medicação', 2),
  (3, 'Gripe Suína', 'Medicação', 3),
  (4, 'Pneumonia Enzoótica', 'Medicação', 4),
  (5, 'Pneumonia Enzoótica', 'Medicação', 5);
