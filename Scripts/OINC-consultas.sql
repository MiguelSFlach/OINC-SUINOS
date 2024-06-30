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


SELECT aniid, tipani, datnas, pesani, stsani, caumor, Grupogruid, Granjacnpj
FROM Animal
WHERE tipani = 2
AND AGE(datnas) BETWEEN INTERVAL '6 months' AND INTERVAL '10 months'
ORDER BY tipani DESC;

-- 2-Relacionar as granjas das cidades de São Miguel do Oeste e Descanso. Ordene o relatório pelo nome da granja em forma ascendente:

SELECT Granja.cnpj, nomgra, telgran, qtdanigra
FROM Granja
JOIN Endereco ON Granja.cnpj = Endereco.Granjacnpj
WHERE Endereco.cidend IN ('São Miguel do Oeste', 'Descanso')
ORDER BY nomgra ASC;

-- 3-Relacionar todas as granjas das cidades de Maravilha, Descanso, Itapiranga e Guaraciaba que criaram mais de 100 animais. Ordene o relatório da cidade com mais animais para a cidade com menos animais:

SELECT Granja.cnpj, nomgra, telgran, qtdanigra, Endereco.cidend
FROM Granja
JOIN Endereco ON Granja.cnpj = Endereco.Granjacnpj
WHERE Endereco.cidend IN ('Maravilha', 'Descanso', 'Itapiranga', 'Guaraciaba')
AND qtdanigra > 100
ORDER BY qtdanigra DESC;

-- 4-Relacionar a granja, os tipos de animais e o total de animais por granja/tipo. Relacionar a granja com mais animais para a instituição com menos animais:

SELECT Granja.nomgra, Animal.tipani, COUNT(Animal.aniid) AS total_animais
FROM Granja
JOIN Animal ON Granja.cnpj = Animal.Granjacnpj
GROUP BY Granja.nomgra, Animal.tipani
ORDER BY total_animais DESC;

