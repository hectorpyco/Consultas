use mapa

select distinct(nombre_institucion), establecimiento, distrito, nivel
from carreras
where nombre_institucion='UNIVERSIDAD NIHON GAKKO'
group by nombre_institucion, establecimiento, distrito, nivel
order by distrito


