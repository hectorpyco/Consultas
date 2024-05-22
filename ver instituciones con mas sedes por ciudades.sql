use mapa

select distinct(nombre_institucion), count(distinct(establecimiento)) as sedes, 
		count(distinct(distrito)) as ciudades
from carreras
group by nombre_institucion
order by sedes desc

