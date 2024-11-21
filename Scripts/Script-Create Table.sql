CREATE TABLE Alimentacao (
  aliid       SERIAL NOT NULL, 
  datali      date NOT NULL, 
  tipali      varchar(255) NOT NULL, 
  qtdali      numeric(19, 0) NOT NULL, 
  Animalaniid int4 NOT NULL, 
  PRIMARY KEY (aliid)
);

CREATE TABLE Animal (
  aniid            SERIAL NOT NULL, 
  tipani           int4 NOT NULL CHECK(tipani = 1 or tipani = 2 or tipani = 3), 
  datnas           date NOT NULL, 
  pesani           numeric(19, 0) NOT NULL, 
  stsani           int4 NOT NULL CHECK(stsani = 1 or stsani = 2), 
  caumor           varchar(255) NOT NULL, 
  obsani           varchar(255), 
  Grupogruid       int4 NOT NULL, 
  Granjacnpj       numeric(14, 0) NOT NULL, 
  Localizacaoidloc int4 NOT NULL, 
  PRIMARY KEY (aniid)
);

CREATE TABLE Compra (
  comid             SERIAL NOT NULL, 
  comdat            date NOT NULL, 
  comdes            varchar(255) NOT NULL, 
  comval            numeric(19, 0) NOT NULL, 
  Fornecedoresforid int4 NOT NULL, 
  PRIMARY KEY (comid)
);

CREATE TABLE Endereco (
  idend      SERIAL NOT NULL, 
  ruaend     varchar(255) NOT NULL, 
  numend     int4 NOT NULL, 
  cidend     varchar(255) NOT NULL, 
  cepend     int4 NOT NULL, 
  Granjacnpj numeric(14, 0) NOT NULL, 
  PRIMARY KEY (idend)
);

CREATE TABLE Financeiro (
  finid        SERIAL NOT NULL, 
  datfin       date NOT NULL, 
  tipfin       int4 NOT NULL CHECK(tipfin = 1 or tipfin = 2), 
  valfin       numeric(19, 0) NOT NULL, 
  desfin       text NOT NULL, 
  Usuariousuid int4 NOT NULL, 
  PRIMARY KEY (finid)
);

CREATE TABLE Fornecedor (
  forid  SERIAL NOT NULL, 
  fornom varchar(100) NOT NULL, 
  forcon varchar(100) NOT NULL, 
  fortel varchar(20) NOT NULL, 
  forema varchar(100) NOT NULL, 
  PRIMARY KEY (forid)
);

CREATE TABLE Granja (
  cnpj      numeric(14, 0) NOT NULL, 
  nomgra    varchar(255) NOT NULL, 
  telgran   int4 NOT NULL, 
  qtdanigra int4 NOT NULL, 
  tipgra    int4 NOT NULL CHECK(tipgra = 1 or tipgra = 2 or tipgra = 3), 
  PRIMARY KEY (cnpj)
);

CREATE TABLE Grupo (
  gruid  SERIAL NOT NULL, 
  nomgru varchar(50) NOT NULL UNIQUE, 
  desgru varchar(255) NOT NULL, 
  tipgru int4 NOT NULL CHECK(tipgru = 1 or tipgru = 2 or tipgru = 3 or tipgru = 4 or tipgru = 5), 
  PRIMARY KEY (gruid)
);

CREATE TABLE Inseminacao (
  insid       SERIAL NOT NULL, 
  tipins      int4 NOT NULL CHECK(tipins = 1 or tipins = 2), 
  datins      date NOT NULL, 
  sucins      int4 NOT NULL CHECK(sucins = 1 or sucins = 2), 
  tenins      int4 NOT NULL, 
  Animalaniid int4 NOT NULL, 
  datcio      date, 
  obsins      varchar(255), 
  PRIMARY KEY (insid)
);

CREATE TABLE Insumo (
  insid  SERIAL NOT NULL, 
  nomins varchar(100) NOT NULL, 
  desins text NOT NULL, 
  qtdins numeric(19, 0) NOT NULL, 
  undins varchar(255) NOT NULL, 
  PRIMARY KEY (insid)
);

CREATE TABLE Insumo_Compra (
  Insumoinsid  int4 NOT NULL, 
  Comprascomid int4 NOT NULL, 
  PRIMARY KEY (Insumoinsid, Comprascomid)
);

CREATE TABLE Leitao (
  leiid       SERIAL NOT NULL, 
  pcaid       int4 NOT NULL, 
  peslei      numeric(19, 0) NOT NULL, 
  datnaslei   date NOT NULL, 
  Animalaniid int4 NOT NULL, 
  Vendavenid  int4 NOT NULL, 
  PRIMARY KEY (leiid)
);

CREATE TABLE Localizacao (
  idloc  SERIAL NOT NULL, 
  tiploc int4 NOT NULL CHECK(tiploc = 1 or tiploc = 2), 
  numloc int4 NOT NULL, 
  PRIMARY KEY (idloc)
);

CREATE TABLE Movimentacao (
  movid       SERIAL NOT NULL, 
  datmov      date NOT NULL, 
  tipmov      int4 NOT NULL CHECK(tipmov = 1 or tipmov = 2), 
  locorimov   varchar(255) NOT NULL, 
  locdesmov   varchar(255) NOT NULL, 
  motmov      text NOT NULL, 
  Animalaniid int4 NOT NULL, 
  PRIMARY KEY (movid)
);

CREATE TABLE Notificacao (
  notid        SERIAL NOT NULL, 
  notdat       date NOT NULL, 
  notmen       varchar(255) NOT NULL, 
  notlid       int4 NOT NULL CHECK(notlid = 1 or notlid = 2), 
  Usuariousuid int4 NOT NULL, 
  PRIMARY KEY (notid)
);

CREATE TABLE Parto (
  parid       SERIAL NOT NULL, 
  datpar      date NOT NULL, 
  vasrec      varchar(255) NOT NULL, 
  Animalaniid int4 NOT NULL, 
  morqtdpar   int4, 
  PRIMARY KEY (parid)
);

CREATE TABLE Registro (
  logid        SERIAL NOT NULL, 
  logaca       text NOT NULL, 
  logdat       date NOT NULL, 
  Usuariousuid int4 NOT NULL, 
  PRIMARY KEY (logid)
);

CREATE TABLE Tratamento (
  traid       SERIAL NOT NULL, 
  dattra      date NOT NULL, 
  destra      text NOT NULL, 
  medtra      varchar(255) NOT NULL, 
  dostra      varchar(50) NOT NULL, 
  durtra      int4 NOT NULL, 
  Animalaniid int4 NOT NULL, 
  PRIMARY KEY (traid)
);

CREATE TABLE Uso_Insumo (
  Insumoinsid int4 NOT NULL, 
  Animalaniid int4 NOT NULL, 
  idusuins    int4 NOT NULL, 
  datuso      date NOT NULL, 
  qtdusoins   float4 NOT NULL, 
  desusoins   text NOT NULL, 
  PRIMARY KEY (Insumoinsid, Animalaniid, idusuins)
);

CREATE TABLE Usuario (
  usuid      SERIAL NOT NULL, 
  nomusu     varchar(100) NOT NULL, 
  emausu     varchar(100) NOT NULL, 
  senusu     varchar(255) NOT NULL, 
  tipusu     int4 NOT NULL CHECK(tipusu = 1 or tipusu = 2 or tipusu = 3 or tipusu = 4 or tipusu = 5 or tipusu = 6 or tipusu = 7 or tipusu = 8 or tipusu = 9 or tipusu = 10 or tipusu = 11), 
  cpfusu     numeric(11, 0) NOT NULL, 
  sexusu     int4 CHECK(sexusu = 1 or sexusu = 2), 
  idausu     int4, 
  Granjacnpj numeric(14, 0) NOT NULL, 
  PRIMARY KEY (usuid)
);

CREATE TABLE Vacina (
  vacid                 SERIAL NOT NULL, 
  nomvac                varchar(100) NOT NULL, 
  desvac                varchar(255) NOT NULL, 
  Vacina_Animalidvacani int4 NOT NULL, 
  PRIMARY KEY (vacid)
);

CREATE TABLE Vacina_Animal (
  idvacani    SERIAL NOT NULL, 
  datvac      date NOT NULL, 
  Animalaniid int4 NOT NULL, 
  PRIMARY KEY (idvacani)
);

CREATE TABLE Venda (
  venid  SERIAL NOT NULL PRIMARY KEY, 
  leiid  int4 NOT NULL, 
  datven date NOT NULL, 
  preven numeric(19, 0) NOT NULL,
  confirmada boolean NOT NULL DEFAULT false,
  CONSTRAINT fk_venda_leitao FOREIGN KEY (leiid) REFERENCES Leitao(leiid)
);


