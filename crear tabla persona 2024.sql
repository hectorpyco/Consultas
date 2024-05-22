SELECT DISTINCT documento AS persona_id, nombre_completo AS nombre
INTO personas
FROM [titulos].[dbo].[registros_titulos];
