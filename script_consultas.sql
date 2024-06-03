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

