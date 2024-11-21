-- View 1: Animais de 6 a 10 meses do sexo masculino
CREATE OR REPLACE VIEW vw_animais_6_10_meses_masculinos AS
SELECT DISTINCT 
    a.aniid AS "ID do Animal", 
    a.tipani AS "Tipo do Animal", 
    a.datnas AS "Data de Nascimento", 
    a.pesani AS "Peso do Animal", 
    a.stsani AS "Status do Animal", 
    a.caumor AS "Causa da Morte", 
    a.Grupogruid AS "ID do Grupo", 
    a.Granjacnpj AS "CNPJ da Granja"
FROM Animal a
WHERE a.tipani = 2 
AND AGE(a.datnas) BETWEEN INTERVAL '6 months' AND INTERVAL '10 months'
ORDER BY a.tipani DESC;

-- View 2: Granjas das cidades de São Miguel do Oeste e Descanso
CREATE OR REPLACE VIEW vw_granjas_smo_descanso AS
SELECT DISTINCT 
    g.cnpj AS "CNPJ da Granja", 
    g.nomgra AS "Nome da Granja", 
    g.telgran AS "Telefone da Granja", 
    g.qtdanigra AS "Quantidade de Animais", 
    e.cidend AS "Cidade"
FROM Granja g
INNER JOIN Endereco e ON g.cnpj = e.Granjacnpj
WHERE e.cidend IN ('São Miguel do Oeste', 'Descanso')
ORDER BY g.nomgra ASC;

-- View 3: Granjas com mais de 100 animais em cidades específicas
CREATE OR REPLACE VIEW vw_granjas_mais_de_100_animais AS
SELECT DISTINCT 
    g.cnpj AS "CNPJ da Granja", 
    g.nomgra AS "Nome da Granja", 
    g.telgran AS "Telefone da Granja", 
    g.qtdanigra AS "Quantidade de Animais", 
    e.cidend AS "Cidade"
FROM Granja g
INNER JOIN Endereco e ON g.cnpj = e.Granjacnpj
WHERE e.cidend IN ('Maravilha', 'Descanso', 'Itapiranga', 'Guaraciaba')
AND g.qtdanigra > 100
ORDER BY g.qtdanigra DESC;

-- View 4: Total de animais por granja/tipo
CREATE OR REPLACE VIEW vw_total_animais_por_granja_tipo AS
SELECT DISTINCT 
    g.nomgra AS "Nome da Granja", 
    a.tipani AS "Tipo do Animal", 
    COUNT(a.aniid) AS "Total de Animais"
FROM Granja g
INNER JOIN Animal a ON g.cnpj = a.Granjacnpj
GROUP BY g.nomgra, a.tipani
ORDER BY "Total de Animais" DESC;
