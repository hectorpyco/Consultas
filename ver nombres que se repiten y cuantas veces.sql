

SELECT DISTINCT nombre_completo as nombre, COUNT(nombre_completo)  AS cantidad
 FROM [mapa].[dbo].[personas$]
 group by nombre_completo
 order by cantidad desc
 