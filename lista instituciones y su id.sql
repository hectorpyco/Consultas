/****** Script for SelectTopNRows command from SSMS  ******/
SELECT distinct [institucion_id], institucion
  FROM [mapa].[dbo].[titulo]
  order by institucion

select distinct carrera_id, carrera
FROM [mapa].[dbo].[titulo]
where carrera= 'medicina '  
  order by carrera