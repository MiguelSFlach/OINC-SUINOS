/* INSERÇÕES DE DADOS PARA TABELAS */

----------------------------------------------------------------
-- Granja
INSERT INTO Granja (cnpj, nomgra, telgran, qtdanigra, tipgra) VALUES
  (12345678000195, 'Granja Esperança', 11223344, 0, 1),
  (98765432000121, 'Granja Sol Nascente', 55443322, 0, 2),
  (55555555000199, 'Granja Boa Vista', 99887766, 0, 3),
  (77778777789018, 'Granja União', 991887766, 0, 1),
  (11111111000187, 'Granja Floresta Azul', 33445566, 0, 2);

----------------------------------------------------------------
-- Grupo
INSERT INTO Grupo (gruid, nomgru, desgru, tipgru) VALUES
  (1, 'Grupo 1 (PORCA)', 'Descrição do Grupo 1 para Porcas', 1),
  (2, 'Grupo 2 (PORCO)', 'Descrição do Grupo 2 para Porcos', 2),
  (3, 'Grupo 3 (LEITÃO)', 'Descrição do Grupo 3 para Leitões', 3);

----------------------------------------------------------------
-- Fornecedor
INSERT INTO Fornecedor (forid, fornom, forcon, fortel, forema) VALUES
  (1, 'GreenFields', 'João Silva', '1-621-420-8121', 'joosilva9668@protonmail.com'),
  (2, 'AgroTech Solutions', 'Lucas Costa', '(739) 384-0818', 'lucascosta@yahoo.com'),
  (3, 'Fazenda Boa Vista', 'Maria Oliveira', '1-979-837-4521', 'mariaoliveira832@protonmail.com');

----------------------------------------------------------------
-- Compra
INSERT INTO Compra (comdat, comdes, comval, Fornecedoresforid) VALUES
  ('2024-06-17', 'Ração A', 560, 1),
  ('2024-07-18', 'Ração B', 340, 2), 
  ('2024-08-19', 'Ração C', 450, 3);

----------------------------------------------------------------
-- Usuario
INSERT INTO Usuario (nomusu, emausu, senusu, tipusu, cpfusu, sexusu, Granjacnpj) VALUES
  ('João Mendes', 'joao@empresa.com', 'senha123', 1, 12345678901, 1, 12345678000195),
  ('Maria Santos', 'maria@empresa.com', 'senha456', 2, 98765432100, 2, 98765432000121);

----------------------------------------------------------------
-- Financeiro
INSERT INTO Financeiro (datfin, tipfin, valfin, desfin, Usuariousuid) VALUES
  ('2024-05-11', 2, 161.96, 'Pagamento de fornecedores', 1),
  ('2023-12-14', 1, 318.20, 'Venda de leitões', 2);

----------------------------------------------------------------
-- Animal
INSERT INTO Animal (tipani, datnas, pesani, stsani, caumor, Grupogruid, Granjacnpj, Localizacaoidloc) VALUES
  (1, '2023-06-01', 150, 1, NULL, 1, 12345678000195, 1),
  (2, '2024-01-10', 200, 1, NULL, 2, 98765432000121, 2),
  (3, '2024-03-15', 180, 2, 'Doença', 3, 55555555000199, 3);

----------------------------------------------------------------
-- Atualização da Quantidade de Animais na Granja
UPDATE Granja
SET qtdanigra = (SELECT COUNT(*) FROM Animal WHERE Animal.Granjacnpj = Granja.cnpj);

----------------------------------------------------------------
-- Vacina_Animal
INSERT INTO Vacina_Animal (datvac, Animalaniid) VALUES
  ('2024-10-30', 1),
  ('2024-12-14', 2);

----------------------------------------------------------------
-- Venda
INSERT INTO Venda (leiid, datven, preven) VALUES
  (1, '2024-04-15', 532),
  (2, '2024-08-20', 330);

----------------------------------------------------------------
-- Leitao
INSERT INTO Leitao (pcaid, peslei, datnaslei, Animalaniid, Vendavenid) VALUES
  (1, 30, '2024-01-15', 1, 1),
  (2, 45, '2024-02-20', 2, 2);

----------------------------------------------------------------
-- Alimentacao
INSERT INTO Alimentacao (datali, tipali, qtdali, Animalaniid) VALUES
  ('2023-08-04', 'Farelo de milho', 50, 1),
  ('2024-01-10', 'Farelo de soja', 30, 2);

----------------------------------------------------------------
-- Endereco
INSERT INTO Endereco (ruaend, numend, cidend, cepend, Granjacnpj) VALUES
  ('Rua Marcilio Dias', 1199, 'São Miguel do Oeste', 89900000, 12345678000195),
  ('Av. Brasil', 700, 'Descanso', 89910000, 98765432000121);

----------------------------------------------------------------
-- Inseminacao
INSERT INTO Inseminacao (tipins, datins, sucins, tenins, Animalaniid) VALUES
  (1, '2024-04-29', 2, 3, 1),
  (2, '2025-02-10', 1, 1, 2);

----------------------------------------------------------------
-- Insumo
INSERT INTO Insumo (nomins, desins, qtdins, undins) VALUES
  ('Farelo de milho', 'Alimento rico em energia', 500, 'kg'),
  ('Farelo de soja', 'Fonte de proteína vegetal', 300, 'kg');

----------------------------------------------------------------
-- Movimentacao
INSERT INTO Movimentacao (datmov, tipmov, locorimov, locdesmov, motmov, Animalaniid) VALUES
  ('2024-06-10', 1, 'São Miguel do Oeste', 'Descanso', 'Transferência', 1);

----------------------------------------------------------------
-- Notificacao
INSERT INTO Notificacao (notdat, notmen, notlid, Usuariousuid) VALUES
  ('2024-12-10', 'Mensagem de alerta', 1, 1);

----------------------------------------------------------------
-- Parto
INSERT INTO Parto (datpar, vasrec, morqtdpar, Animalaniid) VALUES
  ('2024-06-01', 'Sim', 2, 1);

----------------------------------------------------------------
-- Registro
INSERT INTO Registro (logaca, logdat, Usuariousuid) VALUES
  ('Acesso ao sistema', '2024-12-01', 1);

----------------------------------------------------------------
-- Tratamento
INSERT INTO Tratamento (dattra, destra, medtra, dostra, durtra, Animalaniid) VALUES
  ('2024-10-02', 'Tratamento para parasitas', 'Ivermectina', '5ml', 7, 1);

----------------------------------------------------------------
-- Uso_Insumo
INSERT INTO Uso_Insumo (Insumoinsid, Animalaniid, idusuins, datuso, qtdusoins, desusoins) VALUES
  (1, 1, 1, '2024-06-15', 50, 'Alimentação');
