CREATE TABLE Granja (
    cnpj int8 NOT NULL, 
    nomgra varchar(255) NOT NULL, 
    telgran int4 NOT NULL, 
    qtdanigra int4 NOT NULL, 
    PRIMARY KEY (cnpj)
);
COMMENT ON TABLE Granja IS 'Cadastro de granjas';
COMMENT ON COLUMN Granja.cnpj IS 'CNPJ da granja';
COMMENT ON COLUMN Granja.nomgra IS 'Nome fantasia da granja';
COMMENT ON COLUMN Granja.telgran IS 'Numero de telefone da granja';
COMMENT ON COLUMN Granja.qtdanigra IS 'Quantidade de animais que a granja possui';

CREATE TABLE Grupo (
    gruid SERIAL NOT NULL, 
    nomgru varchar(50) NOT NULL UNIQUE, 
    desgru varchar(255) NOT NULL, 
    PRIMARY KEY (gruid)
);
COMMENT ON TABLE Grupo IS 'Cadastro de grupos de animais';
COMMENT ON COLUMN Grupo.gruid IS 'Id do grupo de animais';
COMMENT ON COLUMN Grupo.nomgru IS 'Nome do grupo de animais';
COMMENT ON COLUMN Grupo.desgru IS 'Descrição do grupo';

CREATE TABLE Fornecedor (
    forid SERIAL NOT NULL, 
    fornom varchar(100) NOT NULL, 
    forcon varchar(100) NOT NULL, 
    fortel varchar(20) NOT NULL, 
    forema varchar(100) NOT NULL, 
    PRIMARY KEY (forid)
);
COMMENT ON TABLE Fornecedor IS 'Tabela de fornecedores';
COMMENT ON COLUMN Fornecedor.forid IS 'Id do fornecedor';
COMMENT ON COLUMN Fornecedor.fornom IS 'Nome do fornecedor';
COMMENT ON COLUMN Fornecedor.forcon IS 'Contato do fornecedor';
COMMENT ON COLUMN Fornecedor.fortel IS 'Telefone do fornecedor';
COMMENT ON COLUMN Fornecedor.forema IS 'Email do fornecedor';

CREATE TABLE Compra (
    comid SERIAL NOT NULL, 
    comdat date NOT NULL, 
    comdes varchar(255) NOT NULL, 
    comval numeric(19, 0) NOT NULL, 
    Fornecedoresforid int4 NOT NULL, 
    PRIMARY KEY (comid),
    FOREIGN KEY (Fornecedoresforid) REFERENCES Fornecedor (forid)
);
COMMENT ON TABLE Compra IS 'Tabela de compras de insumos';
COMMENT ON COLUMN Compra.comid IS 'Id da compra';
COMMENT ON COLUMN Compra.comdat IS 'Data da compra';
COMMENT ON COLUMN Compra.comdes IS 'Descrição da compra';
COMMENT ON COLUMN Compra.comval IS 'Valor da compra';

CREATE TABLE Usuario (
    usuid SERIAL NOT NULL, 
    nomusu varchar(100) NOT NULL, 
    emausu varchar(100) NOT NULL, 
    senusu varchar(255) NOT NULL, 
    tipusu int4 NOT NULL CHECK(tipusu = '1' or tipusu = '2'), 
    Granjacnpj int4 NOT NULL, 
    PRIMARY KEY (usuid),
    FOREIGN KEY (Granjacnpj) REFERENCES Granja (cnpj)
);
COMMENT ON TABLE Usuario IS 'Cadastro de usuários do sistema';
COMMENT ON COLUMN Usuario.usuid IS 'Id do usuário';
COMMENT ON COLUMN Usuario.nomusu IS 'Nome do usuário';
COMMENT ON COLUMN Usuario.emausu IS 'Email do usuário';
COMMENT ON COLUMN Usuario.senusu IS 'Senha do usuário';
COMMENT ON COLUMN Usuario.tipusu IS 'Tipo do usuário
1-Administrador
2-Comum';
COMMENT ON COLUMN Usuario.Granjacnpj IS 'CNPJ da granja do usuário';

CREATE TABLE Financeiro (
    finid SERIAL NOT NULL, 
    datfin date NOT NULL, 
    tipfin int4 NOT NULL CHECK(tipfin = '1' or tipfin = '2'), 
    valfin numeric(19, 0) NOT NULL, 
    desfin text NOT NULL, 
    Usuariousuid int4 NOT NULL, 
    PRIMARY KEY (finid),
    FOREIGN KEY (Usuariousuid) REFERENCES Usuario (usuid)
);
COMMENT ON TABLE Financeiro IS 'Controle financeiro';
COMMENT ON COLUMN Financeiro.finid IS 'Id da operação financeira';
COMMENT ON COLUMN Financeiro.datfin IS 'Data da operação';
COMMENT ON COLUMN Financeiro.tipfin IS 'Tipo de operação
1-Receita
2-Despesa';
COMMENT ON COLUMN Financeiro.valfin IS 'Valor da operação';
COMMENT ON COLUMN Financeiro.desfin IS 'Descrição da operação';

CREATE TABLE Animal (
    aniid SERIAL NOT NULL, 
    codani varchar(50) NOT NULL UNIQUE, 
    tipani int4 NOT NULL CHECK(tipani = '1' or tipani = '2' or tipani = '3'), 
    datnas date NOT NULL, 
    pesani numeric(19, 0) NOT NULL, 
    stsani int4 NOT NULL CHECK(stsani = '1' or stsani = '2'), 
    caumor varchar(255) NOT NULL, 
    Grupogruid int4 NOT NULL, 
    Mortemorid int4 NOT NULL, 
    Granjacnpj int4 NOT NULL, 
    PRIMARY KEY (aniid),
    FOREIGN KEY (Grupogruid) REFERENCES Grupo (gruid),
    FOREIGN KEY (Granjacnpj) REFERENCES Granja (cnpj)
);
COMMENT ON TABLE Animal IS 'Cadastro de animais';
COMMENT ON COLUMN Animal.aniid IS 'Id do animal';
COMMENT ON COLUMN Animal.codani IS 'Codigo do animal';
COMMENT ON COLUMN Animal.tipani IS 'Tipo do animal
1-Porca
2-Porco
3-Leitão';
COMMENT ON COLUMN Animal.datnas IS 'Data de nascimento do animal';
COMMENT ON COLUMN Animal.pesani IS 'Peso do animal';
COMMENT ON COLUMN Animal.stsani IS 'Status do animal
1-Vivo
2-Morto';
COMMENT ON COLUMN Animal.caumor IS 'Causa da morte do animal';

CREATE TABLE Vacina_Animal (
    idvacani SERIAL NOT NULL, 
    datvac date NOT NULL, 
    Animalaniid int4 NOT NULL, 
    PRIMARY KEY (idvacani),
    FOREIGN KEY (Animalaniid) REFERENCES Animal (aniid)
);
COMMENT ON TABLE Vacina_Animal IS 'Cadastro de vacinas feitas nos animais';
COMMENT ON COLUMN Vacina_Animal.idvacani IS 'Id da vacinação feita no animal';
COMMENT ON COLUMN Vacina_Animal.datvac IS 'Data da vacinação';

CREATE TABLE Venda (
    venid SERIAL NOT NULL, 
    leiid int4 NOT NULL, 
    datven date NOT NULL, 
    preven numeric(19, 0) NOT NULL, 
    PRIMARY KEY (venid)
);
COMMENT ON TABLE Venda IS 'Cadastro de venda de animais';
COMMENT ON COLUMN Venda.venid IS 'Id da venda de animais';
COMMENT ON COLUMN Venda.leiid IS 'Id do leitão';
COMMENT ON COLUMN Venda.datven IS 'Data da venda dos animais';
COMMENT ON COLUMN Venda.preven IS 'Preço de venda de animais';

CREATE TABLE Leitao (
    leiid SERIAL NOT NULL, 
    pcaid int4 NOT NULL, 
    peslei numeric(19, 0) NOT NULL, 
    datnaslei date NOT NULL, 
    qtdviv int4 NOT NULL, 
    qtdmor int4 NOT NULL, 
    qtdmum int4 NOT NULL, 
    Animalaniid int4 NOT NULL, 
    Vendavenid int4 NOT NULL, 
    PRIMARY KEY (leiid),
    FOREIGN KEY (Animalaniid) REFERENCES Animal (aniid),
    FOREIGN KEY (Vendavenid) REFERENCES Venda (venid)
);
COMMENT ON TABLE Leitao IS 'Cadastro de leitões';
COMMENT ON COLUMN Leitao.leiid IS 'Id do leitão';
COMMENT ON COLUMN Leitao.pcaid IS 'Id da porca mãe do leitão';
COMMENT ON COLUMN Leitao.peslei IS 'Peso do leitão';
COMMENT ON COLUMN Leitao.datnaslei IS 'Data de nascimento do leitão';
COMMENT ON COLUMN Leitao.qtdviv IS 'Quantidade de leitões vivos';
COMMENT ON COLUMN Leitao.qtdmor IS 'Quantidade de leitões mortos';
COMMENT ON COLUMN Leitao.qtdmum IS 'Quantidade de leitões mumificados';

CREATE TABLE Alimentacao (
    aliid SERIAL NOT NULL, 
    datali date NOT NULL, 
    tipali varchar(255) NOT NULL, 
    qtdali numeric(19, 0) NOT NULL, 
    Animalaniid int4 NOT NULL, 
    PRIMARY KEY (aliid),
    FOREIGN KEY (Animalaniid) REFERENCES Animal (aniid)
);
COMMENT ON TABLE Alimentacao IS 'Controle da alimentação dos animais';
COMMENT ON COLUMN Alimentacao.aliid IS 'Id da alimentação';
COMMENT ON COLUMN Alimentacao.datali IS 'Data da alimentação';
COMMENT ON COLUMN Alimentacao.tipali IS 'Tipo do alimento';
COMMENT ON COLUMN Alimentacao.qtdali IS 'Quantidade do alimento';

CREATE TABLE Endereco (
    idend SERIAL NOT NULL, 
    ruaend varchar(255) NOT NULL, 
    numend int4 NOT NULL, 
    cidend varchar(255) NOT NULL, 
    cepend int4 NOT NULL, 
    Granjacnpj int8 NOT NULL, 
    PRIMARY KEY (idend),
    FOREIGN KEY (Granjacnpj) REFERENCES Granja (cnpj)
);
COMMENT ON TABLE Endereco IS 'Cadastro de endereços das granjas';
COMMENT ON COLUMN Endereco.idend IS 'Id do endereço da granja';
COMMENT ON COLUMN Endereco.ruaend IS 'Nome da rua do endereço da granja';
COMMENT ON COLUMN Endereco.numend IS 'Numero do endereço da granja';
COMMENT ON COLUMN Endereco.cidend IS 'Nome da cidade do endereço da granja';
COMMENT ON COLUMN Endereco.cepend IS 'CEP do endereço da granja';

CREATE TABLE Inseminacao (
    insid SERIAL NOT NULL, 
    tipins varchar(50) NOT NULL, 
    datins date NOT NULL, 
    sucins int4 NOT NULL CHECK(sucins = '1' or sucins = '2'), 
    tenins int4 NOT NULL, 
    Animalaniid int4 NOT NULL, 
    PRIMARY KEY (insid),
    FOREIGN KEY (Animalaniid) REFERENCES Animal (aniid)
);
COMMENT ON TABLE Inseminacao IS 'Cadastro de inseminação dos animais';
COMMENT ON COLUMN Inseminacao.insid IS 'Id da inseminação';
COMMENT ON COLUMN Inseminacao.tipins IS 'Tipo da inseminação
1-Artificial
2-Natural';
COMMENT ON COLUMN Inseminacao.datins IS 'Data da inseminação';
COMMENT ON COLUMN Inseminacao.sucins IS 'Inseminação teve sucesso?
1-Sim
2-Não';
COMMENT ON COLUMN Inseminacao.tenins IS 'Tentativas de inseminação';

CREATE TABLE Insumo (
    insid SERIAL NOT NULL, 
    nomins varchar(100) NOT NULL, 
    desins text NOT NULL, 
    qtdins numeric(19, 0) NOT NULL, 
    undins varchar(255) NOT NULL, 
    PRIMARY KEY (insid)
);
COMMENT ON TABLE Insumo IS 'Tabela de insumos';
COMMENT ON COLUMN Insumo.insid IS 'Id do insumo';
COMMENT ON COLUMN Insumo.nomins IS 'Nome do insumo';
COMMENT ON COLUMN Insumo.desins IS 'Descrição do insumo';
COMMENT ON COLUMN Insumo.qtdins IS 'Quantidade do insumo';
COMMENT ON COLUMN Insumo.undins IS 'Unidade de medida do insumo';

CREATE TABLE Insumo_Compra (
    Insumoinsid int4 NOT NULL, 
    Compra_comid int4 NOT NULL, 
    PRIMARY KEY (Insumoinsid, Compra_comid),
    FOREIGN KEY (Insumoinsid) REFERENCES Insumo (insid),
    FOREIGN KEY (Compra_comid) REFERENCES Compra (comid)
);
COMMENT ON TABLE Insumo_Compra IS 'Tabela associativa de compras de insumos';
COMMENT ON COLUMN Insumo_Compra.Insumoinsid IS 'Id do insumo';
COMMENT ON COLUMN Insumo_Compra.Compra_comid IS 'Id da compra';

CREATE TABLE Movimentacao (
    movid SERIAL NOT NULL, 
    datmov date NOT NULL, 
    tipmov int4 NOT NULL CHECK(tipmov = '1' or tipmov = '2'), 
    locorimov varchar(255) NOT NULL, 
    locdesmov varchar(255) NOT NULL, 
    motmov text NOT NULL, 
    Animalaniid int4 NOT NULL, 
    PRIMARY KEY (movid),
    FOREIGN KEY (Animalaniid) REFERENCES Animal (aniid)
);
COMMENT ON TABLE Movimentacao IS 'Controle da movimentação dos animais';
COMMENT ON COLUMN Movimentacao.movid IS 'Id da movimentação';
COMMENT ON COLUMN Movimentacao.datmov IS 'Data da movimentação';
COMMENT ON COLUMN Movimentacao.tipmov IS 'Tipo da movimentação
1-Movimentação de entrada
2-Movimentação de saída';
COMMENT ON COLUMN Movimentacao.locorimov IS 'Local de origem da movimentação';
COMMENT ON COLUMN Movimentacao.locdesmov IS 'Local de destino da movimentação';
COMMENT ON COLUMN Movimentacao.motmov IS 'Motivo da movimentação';

CREATE TABLE Notificacao (
    notid SERIAL NOT NULL, 
    notdat date NOT NULL, 
    notmen varchar(255) NOT NULL, 
    notlid int4 NOT NULL CHECK(notlid = '1' or notlid = '2'), 
    Usuariousuid int4 NOT NULL, 
    PRIMARY KEY (notid),
    FOREIGN KEY (Usuariousuid) REFERENCES Usuario (usuid)
);
COMMENT ON TABLE Notificacao IS 'Controle de notificações dos usuários';
COMMENT ON COLUMN Notificacao.notid IS 'Id da notificação';
COMMENT ON COLUMN Notificacao.notdat IS 'Data da notificação';
COMMENT ON COLUMN Notificacao.notmen IS 'Mensagem da notificação';
COMMENT ON COLUMN Notificacao.notlid IS 'Notificação lida?
1-Sim
2-Não';

CREATE TABLE Parto (
    parid SERIAL NOT NULL, 
    pcaid int4 NOT NULL, 
    datpar date NOT NULL, 
    vasrec varchar(255) NOT NULL, 
    Animalaniid int4 NOT NULL, 
    morqtdpar int4, 
    PRIMARY KEY (parid),
    FOREIGN KEY (Animalaniid) REFERENCES Animal (aniid)
);
COMMENT ON TABLE Parto IS 'Controle de partos das porcas';
COMMENT ON COLUMN Parto.parid IS 'Id do parto';
COMMENT ON COLUMN Parto.pcaid IS 'Id da porca que pariu';
COMMENT ON COLUMN Parto.datpar IS 'Data do parto';
COMMENT ON COLUMN Parto.vasrec IS 'Vasectomia realizada?';
COMMENT ON COLUMN Parto.morqtdpar IS 'Quantidade de leitões mortos no parto';

CREATE TABLE Registro (
    logid SERIAL NOT NULL, 
    logaca text NOT NULL, 
    logdat date NOT NULL, 
    Usuariousuid int4 NOT NULL, 
    PRIMARY KEY (logid),
    FOREIGN KEY (Usuariousuid) REFERENCES Usuario (usuid)
);
COMMENT ON TABLE Registro IS 'Registro de ações realizadas no sistema';
COMMENT ON COLUMN Registro.logid IS 'Id do log';
COMMENT ON COLUMN Registro.logaca IS 'Ação realizada';
COMMENT ON COLUMN Registro.logdat IS 'Data da ação';

CREATE TABLE Tratamento (
    traid SERIAL NOT NULL, 
    dattra date NOT NULL, 
    destra text NOT NULL, 
    medtra varchar(255) NOT NULL, 
    dostra varchar(50) NOT NULL, 
    durtra int4 NOT NULL, 
    Animalaniid int4 NOT NULL, 
    PRIMARY KEY (traid),
    FOREIGN KEY (Animalaniid) REFERENCES Animal (aniid)
);
COMMENT ON TABLE Tratamento IS 'Controle de tratamentos dos animais';
COMMENT ON COLUMN Tratamento.traid IS 'Id do tratamento';
COMMENT ON COLUMN Tratamento.dattra IS 'Data do tratamento';
COMMENT ON COLUMN Tratamento.destra IS 'Descrição do tratamento';
COMMENT ON COLUMN Tratamento.medtra IS 'Medicação utilizada';
COMMENT ON COLUMN Tratamento.dostra IS 'Dosagem do tratamento';
COMMENT ON COLUMN Tratamento.durtra IS 'Duração do tratamento';

CREATE TABLE Uso_Insumo (
    Insumoinsid int4 NOT NULL, 
    Animalaniid int4 NOT NULL, 
    idusuins SERIAL NOT NULL, 
    datuso date NOT NULL, 
    qtdusoins float8 NOT NULL, 
    desusoins text NOT NULL, 
    PRIMARY KEY (Insumoinsid, Animalaniid, idusuins),
    FOREIGN KEY (Insumoinsid) REFERENCES Insumo (insid),
    FOREIGN KEY (Animalaniid) REFERENCES Animal (aniid)
);
COMMENT ON TABLE Uso_Insumo IS 'Controle de uso de insumos nos animais';
COMMENT ON COLUMN Uso_Insumo.Insumoinsid IS 'Id do insumo utilizado';
COMMENT ON COLUMN Uso_Insumo.Animalaniid IS 'Id do animal que utilizou o insumo';
COMMENT ON COLUMN Uso_Insumo.idusuins IS 'Id do uso do insumo';
COMMENT ON COLUMN Uso_Insumo.datuso IS 'Data do uso do insumo';
COMMENT ON COLUMN Uso_Insumo.qtdusoins IS 'Quantidade utilizada do insumo';
COMMENT ON COLUMN Uso_Insumo.desusoins IS 'Descrição do uso do insumo';

CREATE TABLE Vacina (
    vacid SERIAL NOT NULL, 
    nomvac varchar(100) NOT NULL, 
    desvac varchar(255) NOT NULL, 
    Vacina_Animalidvacani int4 NOT NULL, 
    PRIMARY KEY (vacid),
    FOREIGN KEY (Vacina_Animalidvacani) REFERENCES Vacina_Animal (idvacani)
);
COMMENT ON TABLE Vacina IS 'Cadastro de vacinas disponíveis';
COMMENT ON COLUMN Vacina.vacid IS 'Id da vacina';
COMMENT ON COLUMN Vacina.nomvac IS 'Nome da vacina';
COMMENT ON COLUMN Vacina.desvac IS 'Descrição da vacina';
COMMENT ON COLUMN Vacina.Vacina_Animalidvacani IS 'Id da vacinação feita no animal';
