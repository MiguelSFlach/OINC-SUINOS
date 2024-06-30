--SCRIPTS DOS RELATÓRIOS

----------------------------------------------------------------------------------

/*RELATÓRIO 1
Relacionar todos os animais com idades entre 6 a 10 meses e do sexo masculino. Ordenar o relatório pelo tipo do animal em ordem descendente:*/

SELECT DISTINCT a.aniid "ID do Animal", 
                a.tipani "Tipo do Animal", 
                a.datnas "Data de Nascimento", 
                a.pesani "Peso do Animal", 
                a.stsani "Status do Animal", 
                a.caumor "Causa da Morte", 
                a.Grupogruid "ID do Grupo", 
                a.Granjacnpj "CNPJ da Granja"
FROM Animal a
WHERE a.tipani = 2 
AND AGE(a.datnas) BETWEEN INTERVAL '6 months' AND INTERVAL '10 months'
ORDER BY a.tipani DESC;

----------------------------------------------------------------------------------

/*RELATÓRIO 2
Relacionar as granjas das cidades de São Miguel do Oeste e Descanso. Ordene o relatório pelo nome da granja em forma ascendente:*/

SELECT DISTINCT g.cnpj "CNPJ da Granja", 
                g.nomgra "Nome da Granja", 
                g.telgran "Telefone da Granja", 
                g.qtdanigra "Quantidade de Animais", 
                e.cidend "Cidade"
FROM Granja g
INNER JOIN Endereco e ON g.cnpj = e.Granjacnpj
WHERE e.cidend IN ('São Miguel do Oeste', 'Descanso')
ORDER BY g.nomgra ASC;

----------------------------------------------------------------------------------

/*RELATÓRIO 3
Relacionar todas as granjas das cidades de Maravilha, Descanso, Itapiranga e Guaraciaba que criaram mais de 100 animais. Ordene o relatório da cidade com mais animais para a cidade com menos animais:*/

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

----------------------------------------------------------------------------------

/*RELATÓRIO 4
Relacionar a granja, os tipos de animais e o total de animais por granja/tipo. Relacionar a granja com mais animais para a instituição com menos animais:*/

SELECT DISTINCT g.nomgra "Nome da Granja", 
                a.tipani "Tipo do Animal", 
                COUNT(a.aniid) AS "Total de Animais"
FROM Granja g
INNER JOIN Animal a ON g.cnpj = a.Granjacnpj
GROUP BY g.nomgra, a.tipani
ORDER BY "Total de Animais" DESC;
