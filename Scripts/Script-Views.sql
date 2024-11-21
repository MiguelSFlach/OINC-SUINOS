CREATE VIEW total_animais_por_granja AS
SELECT 
    g.cnpj AS cnpj_granja,
    g.nomgra AS nome_granja,
    COUNT(a.aniid) AS total_animais
FROM 
    Granja g
LEFT JOIN 
    Animal a ON g.cnpj = a.Granjacnpj
GROUP BY 
    g.cnpj, g.nomgra;

CREATE VIEW animais_por_grupo AS
SELECT 
    gr.gruid AS id_grupo,
    gr.nomgru AS nome_grupo,
    COUNT(a.aniid) AS total_animais
FROM 
    Grupo gr
LEFT JOIN 
    Animal a ON gr.gruid = a.Grupogruid
GROUP BY 
    gr.gruid, gr.nomgru;

CREATE VIEW vacinas_por_animal AS
SELECT 
    a.aniid AS id_animal,
    COUNT(va.idvacani) AS total_vacinas
FROM 
    Animal a
LEFT JOIN 
    Vacina_Animal va ON a.aniid = va.Animalaniid
GROUP BY 
    a.aniid;
