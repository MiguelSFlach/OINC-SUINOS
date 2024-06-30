--script das duas consultas em tabelas

--1 Causa da Morte
select distinct porco.aniid "ID do Animal", porco.codani "Código do Animal", porco.tipani "Tipo do Animal", morte.datmor "Data de Morte", morte.caumor "Causa da Morte"
from Animal porco
inner join Morte morte on porco.aniid = morte.Animalaniid 
order by porco.aniid;

--2 Ver se ta vivo
select distinct a.aniid "ID do Animal", a.codani "Código do Animal", a.datnas "Data de Nascimento", m.datmor "Data de Morte" 
from Animal a 
inner join Morte m ON a.aniid = m.Animalaniid 
where a.stsani = 2  -- 2 indica que o animal está morto
order by a.aniid;

select distinct a.aniid "ID do Animal", a.codani "Código do Animal", l.pcaid "ID da Mãe (Porca)" 
from Animal a 
inner join Leitao l ON a.aniid = l.Animalaniid 
where a.stsani = 1  -- 1 indica que o animal está vivo 
order by a.aniid;


-- 1-Relacionar todos os animais com idades entre 6 a 10 meses e do sexo masculino. Ordenar o relatório pelo tipo do animal em ordem descendente:


-- 1 Animais com idades entre 6 a 10 meses e do sexo masculino
SELECT DISTINCT a.aniid "ID do Animal", 
                a.tipani "Tipo do Animal", 
                a.datnas "Data de Nascimento", 
                a.pesani "Peso do Animal", 
                a.stsani "Status do Animal", 
                a.caumor "Causa da Morte", 
                a.Grupogruid "ID do Grupo", 
                a.Granjacnpj "CNPJ da Granja"
FROM Animal a
WHERE a.tipani = 2 -- 2 indica que o animal é masculino
AND AGE(a.datnas) BETWEEN INTERVAL '6 months' AND INTERVAL '10 months'
ORDER BY a.tipani DESC;


-- 2-Relacionar as granjas das cidades de São Miguel do Oeste e Descanso. Ordene o relatório pelo nome da granja em forma ascendente:

-- 2 Granjas das cidades de São Miguel do Oeste e Descanso
SELECT DISTINCT g.cnpj "CNPJ da Granja", 
                g.nomgra "Nome da Granja", 
                g.telgran "Telefone da Granja", 
                g.qtdanigra "Quantidade de Animais", 
                e.cidend "Cidade"
FROM Granja g
INNER JOIN Endereco e ON g.cnpj = e.Granjacnpj
WHERE e.cidend IN ('São Miguel do Oeste', 'Descanso')
ORDER BY g.nomgra ASC;


-- 3-Relacionar todas as granjas das cidades de Maravilha, Descanso, Itapiranga e Guaraciaba que criaram mais de 100 animais. Ordene o relatório da cidade com mais animais para a cidade com menos animais:

-- 3 Granjas das cidades de Maravilha, Descanso, Itapiranga e Guaraciaba com mais de 100 animais
SELECT DISTINCT g.cnpj "CNPJ da Granja", 
                g.nomgra "Nome da Granja", 
                g.telgran "Telefone da Granja", 
                g.qtdanigra "Quantidade de Animais", 
                e.cidend "Cidade"
FROM Granja g
INNER JOIN Endereco e ON g.cnpj = e.Granjacnpj
WHERE e.cidend IN ('Maravilha', 'Descanso', 'Itapiranga', 'Guaraciaba')
AND g.qtdanigra > 100
ORDER BY g.qtdanigra DESC;


-- 4-Relacionar a granja, os tipos de animais e o total de animais por granja/tipo. Relacionar a granja com mais animais para a instituição com menos animais:

-- 4 Granja, tipos de animais e total de animais por granja/tipo
SELECT DISTINCT g.nomgra "Nome da Granja", 
                a.tipani "Tipo do Animal", 
                COUNT(a.aniid) AS "Total de Animais"
FROM Granja g
INNER JOIN Animal a ON g.cnpj = a.Granjacnpj
GROUP BY g.nomgra, a.tipani
ORDER BY "Total de Animais" DESC;

