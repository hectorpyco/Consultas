
select distinct clasificacion_campo_amplio from
(
select  clasificacion_campo_amplio, denominacion_carrera, carrera
from [carreras].[dbo].[carreras] ca
join [titulos].[dbo].[carreras] ti
on ca.denominacion_carrera = ti.carrera
where ca.denominacion_carrera LIKE '%INGE%'
) as subconsulta