--scripts da criação das tabelas e execução

CREATE TABLE Animal (
    aniid SERIAL NOT NULL,
    codani VARCHAR(50) NOT NULL UNIQUE,
    tipani INT NOT NULL CHECK (tipani IN (1, 2, 3)),
    datnas DATE NOT NULL,
    pesani FLOAT4 NOT NULL,
    stsani INT NOT NULL CHECK (stsani IN (1, 2)),
    caumor VARCHAR(255) NOT NULL,
    Grupogruid INT NOT NULL,
    PRIMARY KEY (aniid)
);
COMMENT ON TABLE Animal IS 'Cadastro de animais';
COMMENT ON COLUMN Animal.aniid IS 'Id do animal';
COMMENT ON COLUMN Animal.codani IS 'Codigo do animal';
COMMENT ON COLUMN Animal.tipani IS 'Tipo do animal 1-Porca 2-Porco 3-Leitão';
COMMENT ON COLUMN Animal.datnas IS 'Data de nascimento do animal';
COMMENT ON COLUMN Animal.pesani IS 'Peso do animal';
COMMENT ON COLUMN Animal.stsani IS 'Status do animal 1-Vivo 2-Morto';
COMMENT ON COLUMN Animal.caumor IS 'Causa da morte do animal';

CREATE TABLE Grupo (
    gruid SERIAL NOT NULL,
    nomgru VARCHAR(50) NOT NULL UNIQUE,
    desgru VARCHAR(255) NOT NULL,
    PRIMARY KEY (gruid)
);
COMMENT ON TABLE Grupo IS 'Cadastro de grupos de animais';
COMMENT ON COLUMN Grupo.gruid IS 'Id do grupo de animais';
COMMENT ON COLUMN Grupo.nomgru IS 'Nome do grupo de animais';
COMMENT ON COLUMN Grupo.desgru IS 'Descrição do grupo';

CREATE TABLE Inseminacao (
    insid SERIAL NOT NULL,
    pcaid INT NOT NULL,
    pcoid INT NOT NULL,
    datins DATE NOT NULL,
    sucins INT NOT NULL CHECK (sucins IN (1, 2)),
    tenins INT NOT NULL,
    Animalaniid INT NOT NULL,
    PRIMARY KEY (insid)
);
COMMENT ON TABLE Inseminacao IS 'Controle de Inseminações dos animais';
COMMENT ON COLUMN Inseminacao.insid IS 'Id da inseminação';
COMMENT ON COLUMN Inseminacao.pcaid IS 'Id da porca';
COMMENT ON COLUMN Inseminacao.pcoid IS 'Id do porco';
COMMENT ON COLUMN Inseminacao.datins IS 'Data da inseminação';
COMMENT ON COLUMN Inseminacao.sucins IS 'Ouve sucesso na inseminação do animal 1-Sim 2-Não';
COMMENT ON COLUMN Inseminacao.tenins IS 'Tentativas de inseminação';

CREATE TABLE Leitao (
    leiid SERIAL NOT NULL,
    pcaid INT NOT NULL,
    peslei FLOAT4 NOT NULL,
    datnaslei DATE NOT NULL,
    qtdviv INT NOT NULL,
    qtdmor INT NOT NULL,
    qtdmum INT NOT NULL,
    Animalaniid INT NOT NULL,
    PRIMARY KEY (leiid)
);
COMMENT ON TABLE Leitao IS 'Cadastro de leitões';
COMMENT ON COLUMN Leitao.leiid IS 'Id do leitão';
COMMENT ON COLUMN Leitao.pcaid IS 'Id da porca mãe do leitão';
COMMENT ON COLUMN Leitao.peslei IS 'Peso do leitão';
COMMENT ON COLUMN Leitao.datnaslei IS 'Data de nascimento do leitão';
COMMENT ON COLUMN Leitao.qtdviv IS 'Quantidade de leitões vivos';
COMMENT ON COLUMN Leitao.qtdmor IS 'Quantidade de leitões mortos';
COMMENT ON COLUMN Leitao.qtdmum IS 'Quantidade de leitões mumificados';

CREATE TABLE Morte (
    morid SERIAL NOT NULL,
    Animalaniid INT NOT NULL,
    datmor DATE NOT NULL,
    caumor VARCHAR(255) NOT NULL,
    PRIMARY KEY (morid)
);
COMMENT ON TABLE Morte IS 'Controle de mortes dos animais';
COMMENT ON COLUMN Morte.morid IS 'Id da morte do animal';
COMMENT ON COLUMN Morte.datmor IS 'Data da morte do animal';
COMMENT ON COLUMN Morte.caumor IS 'Causa da morte do animal';

CREATE TABLE Parto (
    parid SERIAL NOT NULL,
    pcaid INT NOT NULL,
    datpar DATE NOT NULL,
    vasrec VARCHAR(255) NOT NULL,
    Animalaniid INT NOT NULL,
    PRIMARY KEY (parid)
);
COMMENT ON TABLE Parto IS 'Cadastro de partos dos animais';
COMMENT ON COLUMN Parto.parid IS 'Id do parto do animal';
COMMENT ON COLUMN Parto.pcaid IS 'Id da porca';
COMMENT ON COLUMN Parto.datpar IS 'Data do parto';
COMMENT ON COLUMN Parto.vasrec IS 'Vacinas recebidas pelo animal';

CREATE TABLE Vacina (
    vacid SERIAL NOT NULL,
    nomvac VARCHAR(100) NOT NULL,
    desvac VARCHAR(255) NOT NULL,
    PRIMARY KEY (vacid)
);
COMMENT ON TABLE Vacina IS 'Cadastro de vacinas';
COMMENT ON COLUMN Vacina.vacid IS 'Id da vacina';
COMMENT ON COLUMN Vacina.nomvac IS 'Nome da vacina';
COMMENT ON COLUMN Vacina.desvac IS 'Descrição da vacina';

CREATE TABLE Vacina_Animal (
    idvacani SERIAL NOT NULL,
    Vacinavacid INT NOT NULL,
    Animalaniid INT NOT NULL,
    datvac DATE NOT NULL,
    PRIMARY KEY (idvacani, Vacinavacid, Animalaniid)
);
COMMENT ON TABLE Vacina_Animal IS 'Cadastro de vacinas feitas nos animais';
COMMENT ON COLUMN Vacina_Animal.idvacani IS 'Id da vacinação feita no animal';
COMMENT ON COLUMN Vacina_Animal.datvac IS 'Data da vacinação';

CREATE TABLE Venda (
    venid SERIAL NOT NULL,
    leiid INT NOT NULL,
    datven DATE NOT NULL,
    preven FLOAT4 NOT NULL,
    PRIMARY KEY (venid)
);
COMMENT ON TABLE Venda IS 'Cadastro de venda de animais';
COMMENT ON COLUMN Venda.venid IS 'Id da venda de animais';
COMMENT ON COLUMN Venda.leiid IS 'Id do leitão';
COMMENT ON COLUMN Venda.datven IS 'Data da venda dos animais';
COMMENT ON COLUMN Venda.preven IS 'Preço de venda de animais';

--script das chaves estrangeiras
ALTER TABLE Vacina_Animal 
ADD CONSTRAINT FKVacina_Ani659397 FOREIGN KEY (Vacinavacid) REFERENCES Vacina (vacid);

ALTER TABLE Vacina_Animal 
ADD CONSTRAINT FKVacina_Ani638056 FOREIGN KEY (Animalaniid) REFERENCES Animal (aniid);

ALTER TABLE Leitao 
ADD CONSTRAINT FKLeitao257907 FOREIGN KEY (Animalaniid) REFERENCES Animal (aniid);

ALTER TABLE Animal 
ADD CONSTRAINT FKAnimal455615 FOREIGN KEY (Grupogruid) REFERENCES Grupo (gruid);

ALTER TABLE Morte 
ADD CONSTRAINT FKMorte904878 FOREIGN KEY (Animalaniid) REFERENCES Animal (aniid);

ALTER TABLE Inseminacao 
ADD CONSTRAINT FKInseminacao34769 FOREIGN KEY (Animalaniid) REFERENCES Animal (aniid);

ALTER TABLE Venda 
ADD CONSTRAINT FKVenda383812 FOREIGN KEY (leiid) REFERENCES Leitao (leiid);

ALTER TABLE Parto 
ADD CONSTRAINT FKParto258380 FOREIGN KEY (Animalaniid) REFERENCES Animal (aniid);



