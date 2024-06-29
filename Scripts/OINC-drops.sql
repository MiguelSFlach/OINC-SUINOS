/* Deletando as restrições */

ALTER TABLE Compra 
    DROP CONSTRAINT Compra_Fornecedoresforid_fkey;

ALTER TABLE Usuario 
    DROP CONSTRAINT Usuario_Granjacnpj_fkey;

ALTER TABLE Financeiro 
    DROP CONSTRAINT Financeiro_Usuariousuid_fkey;

ALTER TABLE Animal 
    DROP CONSTRAINT Animal_Grupogruid_fkey;
ALTER TABLE Animal 
    DROP CONSTRAINT Animal_Granjacnpj_fkey;

ALTER TABLE Vacina_Animal 
    DROP CONSTRAINT Vacina_Animal_Animalaniid_fkey;

ALTER TABLE Leitao 
    DROP CONSTRAINT Leitao_Animalaniid_fkey;
ALTER TABLE Leitao 
    DROP CONSTRAINT Leitao_Vendavenid_fkey;

ALTER TABLE Alimentacao 
    DROP CONSTRAINT Alimentacao_Animalaniid_fkey;

ALTER TABLE Endereco 
    DROP CONSTRAINT Endereco_Granjacnpj_fkey;

ALTER TABLE Inseminacao 
    DROP CONSTRAINT Inseminacao_Animalaniid_fkey;

ALTER TABLE Insumo_Compra 
    DROP CONSTRAINT Insumo_Compra_Insumoinsid_fkey;
ALTER TABLE Insumo_Compra 
    DROP CONSTRAINT Insumo_Compra_Compra_comid_fkey;

ALTER TABLE Movimentacao 
    DROP CONSTRAINT Movimentacao_Animalaniid_fkey;

ALTER TABLE Notificacao 
    DROP CONSTRAINT Notificacao_Usuariousuid_fkey;

ALTER TABLE Parto 
    DROP CONSTRAINT Parto_Animalaniid_fkey;

ALTER TABLE Registro 
    DROP CONSTRAINT Registro_Usuariousuid_fkey;

ALTER TABLE Tratamento 
    DROP CONSTRAINT Tratamento_Animalaniid_fkey;

ALTER TABLE Uso_Insumo 
    DROP CONSTRAINT Uso_Insumo_Insumoinsid_fkey;
ALTER TABLE Uso_Insumo 
    DROP CONSTRAINT Uso_Insumo_Animalaniid_fkey;

ALTER TABLE Vacina 
    DROP CONSTRAINT Vacina_Vacina_Animalidvacani_fkey;
    
  -------------------------------------------------------------
/* Deletando as tabelas */
   
   DROP TABLE IF EXISTS Vacina CASCADE;
DROP TABLE IF EXISTS Usuario CASCADE;
DROP TABLE IF EXISTS Uso_Insumo CASCADE;
DROP TABLE IF EXISTS Tratamento CASCADE;
DROP TABLE IF EXISTS Registro CASCADE;
DROP TABLE IF EXISTS Parto CASCADE;
DROP TABLE IF EXISTS Notificacao CASCADE;
DROP TABLE IF EXISTS Movimentacao CASCADE;
DROP TABLE IF EXISTS Insumo_Compra CASCADE;
DROP TABLE IF EXISTS Insumo CASCADE;
DROP TABLE IF EXISTS Inseminacao CASCADE;
DROP TABLE IF EXISTS Fornecedor CASCADE;
DROP TABLE IF EXISTS Financeiro CASCADE;
DROP TABLE IF EXISTS Endereco CASCADE;
DROP TABLE IF EXISTS Compra CASCADE;
DROP TABLE IF EXISTS Alimentacao CASCADE;
DROP TABLE IF EXISTS Leitao CASCADE;
DROP TABLE IF EXISTS Venda CASCADE;
DROP TABLE IF EXISTS Vacina_Animal CASCADE;
DROP TABLE IF EXISTS Animal CASCADE;
DROP TABLE IF EXISTS Grupo CASCADE;
DROP TABLE IF EXISTS Granja CASCADE;
