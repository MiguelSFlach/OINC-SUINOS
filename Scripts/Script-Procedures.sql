CREATE OR REPLACE PROCEDURE atualizar_status_granja(cnpj_granja NUMERIC)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE Granja
    SET tipgra = 2
    WHERE cnpj = cnpj_granja;
END;
$$;

CREATE OR REPLACE PROCEDURE inserir_animal(
    tipAni INT,
    datNas DATE,
    pesAni NUMERIC,
    stsAni INT,
    cauMor VARCHAR,
    obsAni VARCHAR,
    Grupogruid INT,
    Granjacnpj NUMERIC,
    Localizacaoidloc INT)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO Animal (tipani, datnas, pesani, stsani, caumor, obsani, Grupogruid, Granjacnpj, Localizacaoidloc)
    VALUES (tipAni, datNas, pesAni, stsAni, cauMor, obsAni, Grupogruid, Granjacnpj, Localizacaoidloc);
END;
$$;
