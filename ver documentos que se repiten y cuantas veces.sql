SELECT DISTINCT documento, COUNT(documento)  AS cantidad
 FROM [mapa].[dbo].[personas$]
 group by documento
 order by cantidad desc