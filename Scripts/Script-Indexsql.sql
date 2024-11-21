CREATE INDEX idx_animal_granja ON Animal (Granjacnpj);
CREATE INDEX idx_vacina_animal ON Vacina_Animal (Animalaniid);

ALTER TABLE Animal ADD CONSTRAINT fk_animal_grupo FOREIGN KEY (Grupogruid) REFERENCES Grupo (gruid);
ALTER TABLE Animal ADD CONSTRAINT fk_animal_granja FOREIGN KEY (Granjacnpj) REFERENCES Granja (cnpj);
