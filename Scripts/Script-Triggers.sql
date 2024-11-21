CREATE OR REPLACE FUNCTION log_movimentacao()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO Registro (logaca, logdat, Usuariousuid)
    VALUES ('Movimentação registrada', CURRENT_DATE, NEW.Animalaniid);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_movimentacao
AFTER INSERT ON Movimentacao
FOR EACH ROW
EXECUTE FUNCTION log_movimentacao();

CREATE OR REPLACE FUNCTION verificar_peso_leitao()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.peslei < 5 THEN
        RAISE EXCEPTION 'Peso inválido para o leitão. Deve ser maior que 5kg.';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_peso_leitao
BEFORE INSERT OR UPDATE ON Leitao
FOR EACH ROW
EXECUTE FUNCTION verificar_peso_leitao();
