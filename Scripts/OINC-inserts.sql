--Gerador de Dados utilizado: https://generatedata.com/generator

/* Inserções de Dados */

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
 
INSERT INTO Fornecedor (forid,fornom,forcon,fortel,forema) VALUES
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
  (1,'11/05/2024','2',161.96,'Pagamento de fornecedores de ração'),
  (2,'14/12/2023','1',318.20,'Recebimento de venda de leitões'),
  (3,'27/08/2023','2',242.10,'Despesa com medicamentos veterinários'),
  (4,'06/02/2024','1',262.07,'Recebimento de subsídio governamental'),
  (5,'10/08/2023','2',294.66,'Pagamento de contas de energia e água');
 
 ----------------------------------------------------------------
 
INSERT INTO Animal (aniid,tipani,datnas,pesani,stsani,caumor) VALUES
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
  (11,3,'26/06/2023',11,'2','Complicações durante o parto'),
  (12,1,'26/02/2024',12,'1'),
  (13,2,'23/10/2023',13,'1'),
  (14,2,'19/06/2024',14,'1');

 ----------------------------------------------------------------
 
INSERT INTO Vacina_Animal (idvacani,datvac,Animalaniid) VALUES
  (1,'10/30/2024',1),
  (2,'02/14/2024',2),
  (3,'01/03/2025',3),
  (4,'12/25/2023',4),
  (5,'04/04/2025',5);

 ----------------------------------------------------------------
 
INSERT INTO Venda (venid,Animalaniid,datven,preven) VALUES
  (1,1,'04/15/2024','$532'),
  (2,2,'10/20/2023','$330'),
  (3,3,'09/22/2024','$447'),
  (4,4,'03/26/2024','$885'),
  (5,5,'02/24/2025','$871');

 
 ----------------------------------------------------------------
INSERT INTO Leitao (leiid,pcaid,peslei,datnaslei,Animalaniid) VALUES
  (1,1,27,'06/16/2024',1),
  (2,2,60,'12/26/2024',2),
  (3,3,60,'07/29/2024',3),
  (4,4,32,'11/03/2024',4),
  (5,5,60,'07/18/2023',5);
 
----------------------------------------------------------------
 
INSERT INTO Alimentacao (aliid,datali,tipali,qtdali,Animalaniid) VALUES
  (1,'08/04/2023','Farelo de milho,',7,1),
  (2,'12/22/2023','Farelo de soja',6,2),
  (3,'05/08/2025','Farelo de trigo,',6,3),
  (4,'10/16/2023','Ração concentrada',6,4),
  (5,'05/30/2024','Subprodutos agrícolas',3,5);
 
 
----------------------------------------------------------------
 
INSERT INTO Endereco (idend,ruaend,numend,cidend,cepend) VALUES
  (1,'Rua Marcilio Dias','1199','São Miguel do Oeste',89900000),
  (2,'Rua 07 de Setembro','700','Descanso',89910000),
  (3,'Rua Adolfo Konder','133','Guaraciaba',89920000),
  (4,'Av. Uruguai','1700','Itapiranga',89896000),;

----------------------------------------------------------------
 
INSERT INTO Inseminacao (insid,tipins,datins,sucins,tenins,Animalaniid) VALUES
  (1,'1','04/29/2025',2,1,1),
  (2,'2','02/10/2025',1,3,2),
  (3,'2','09/07/2023',2,3,3),
  (4,'1','01/29/2025',1,4,4),
  (5,'1','03/29/2024',1,2,5);
 
----------------------------------------------------------------
 
INSERT INTO Insumo (insid,nomins,desins,qtdins,undins) VALUES
  (1,'Farelo de Milho','Fonte principal de energia, rica em carboidratos.',6,'Quilogramas (kg)'),
  (2,'Farelo de Soja','Fonte de proteína de alta qualidade, essencial para o crescimento.',4,'Quilogramas (kg)'),
  (3,'Farelo de Trigo','Fonte de energia e fibras, auxilia na digestão.',7,'Quilogramas (kg)'),
  (4,'Ração Concentrada','Mistura de vitaminas, minerais e aminoácidos para balanceamento nutricional.',7,'Quilogramas (kg)'),
  (5,'Subprodutos Agrícolas (Farelo de Arroz)','Complemento nutricional, fornece energia e fibras.',2,'Quilogramas (kg)');

----------------------------------------------------------------
 
INSERT INTO Movimentacao (movid,datmov,tipmov,locorimov,locdesmov,motmov) VALUES
  (1,'09/18/2023',1,'São Miguel do Oeste','Descanso','Compra'),
  (2,'03/08/2024',1,'Itapiranga','Guaraciaba','Compra'),
  (3,'12/03/2024',1,'Dionísio Cerqueira','Palmitos','Compra'),
  (4,'07/12/2023',1,'Maravilha','Chapecó','Compra'),
  (5,'07/18/2023',2,'Iporã do Oeste','Mondaí','Venda');

----------------------------------------------------------------
 
INSERT INTO Notificacao (notid,notdat,notmen,notlid) VALUES
  (1,'06/10/2025','Reunião às 10h',2),
  (2,'01/09/2025','Nova mensagem recebida',1),
  (3,'08/19/2023','Atualização disponível',1),
  (4,'02/11/2025','Entrega em andamento',1),
  (5,'02/28/2025','Pagamento confirmado',1);

----------------------------------------------------------------
 
INSERT INTO Parto (parid,datpar,vasrec,morqtdpar,Animalaniid) VALUES
  (1,'06/23/2025','Sim',6,1),
  (2,'08/30/2023','Sim',3,1),
  (3,'05/16/2025','Sim',4,6),
  (4,'12/21/2024','Sim',5,6),
  (5,'02/11/2024','Sim',2,7);
 
----------------------------------------------------------------
 
INSERT INTO Registro (logid,logaca,logdat,Usuariousuid) VALUES
  (1,'Inscrição','02/12/2025',1),
  (2,'Documentação','02/28/2025',2),
  (3,'Registro','01/15/2025',3),
  (4,'Cadastro','05/21/2024',4),
  (5,'Inscrição','01/13/2024',5);
 
 ----------------------------------------------------------------
 
INSERT INTO Tratamento (traid,dattra,destra,medtra,dostra,durtra,Animalaniid) VALUES
  (1,'10/02/2024','Recuperação Medicamento','Antiparasitário','100ml',7,1),
  (2,'01/19/2025','Recuperação Medicamento','Anti-inflamatório','4ml',9,2),
  (3,'02/23/2025','Recuperação Medicamento','Antifúngico','5ml',5,3),
  (4,'02/10/2025','Recuperação Medicamento','Anti-inflamatório','15ml',9,4),
  (5,'03/04/2025','Diagnóstico Recuperação','Antiparasitário','4ml',7,5);
 
 ----------------------------------------------------------------
 
INSERT INTO Uso_Insumo (Insumoinsid,Animalaniid,idusuins,datuso,qtdusoins,desusoins) VALUES
  (1,1,1,'10/15/2023',5,'Alimentação'),
  (2,2,2,'02/06/2025',7,'Alimentação'),
  (3,3,3,'08/21/2024',1,'Alimentação'),
  (4,4,4,'09/22/2024',10,'Alimentação'),
  (5,5,5,'06/23/2025',2,'Alimentação');

 ----------------------------------------------------------------
   
INSERT INTO Vacina (vacid,nomvac,desvac,Vacina_Animalidvacani) VALUES
  (1,'DoençaDeAujeszky','Medicação',1),
  (2,'PneumoniaEnzoótica','Medicação',2),
  (3,'GripeSuína','Medicação',3),
  (4,'PneumoniaEnzoótica','Medicação',4),
  (5,'PneumoniaEnzoótica','Medicação',5);

 ----------------------------------------------------------------
