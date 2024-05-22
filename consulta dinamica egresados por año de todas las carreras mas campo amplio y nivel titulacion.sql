DECLARE @cols AS NVARCHAR(MAX),
    @query AS NVARCHAR(MAX);

-- Obtener los años presentes en la tabla
SELECT @cols = STUFF((SELECT DISTINCT ',' + QUOTENAME(anio)
                      FROM [titulos].[dbo].[csv]
                      ORDER BY 1
                      FOR XML PATH(''), TYPE
                     ).value('.', 'NVARCHAR(MAX)'), 1, 1, '');

-- Consulta dinámica para pivotar los datos
SET @query = '
SELECT clasificacion_campo_amplio, nivel_titulacion,carrera,' + @cols + '
FROM
(
    SELECT clasificacion_campo_amplio AS clasificacion_campo_amplio, 
	nivel_titulacion, anio, carrera, COUNT(*) AS cantidad_registros
    FROM [titulos].[dbo].[csv] ti
     
    GROUP BY anio, carrera, clasificacion_campo_amplio,nivel_titulacion


) AS source
PIVOT
(
    SUM(cantidad_registros)
    FOR anio IN (' + @cols + ')
) AS pivot_table
ORDER BY clasificacion_campo_amplio,nivel_titulacion,carrera;';

EXEC(@query);
