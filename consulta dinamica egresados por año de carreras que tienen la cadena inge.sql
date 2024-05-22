use titulos
DECLARE @cols AS NVARCHAR(MAX),
    @query AS NVARCHAR(MAX);

-- Obtener los años presentes en la tabla
SELECT @cols = STUFF((SELECT DISTINCT ',' + QUOTENAME(anio)
                      FROM csv
                      ORDER BY 1
                      FOR XML PATH(''), TYPE
                     ).value('.', 'NVARCHAR(MAX)'), 1, 1, '');

-- Consulta dinámica para pivotar los datos
SET @query = '
SELECT carrera, ' + @cols + '
FROM
(
    SELECT anio, carrera, COUNT(*) AS cantidad_registros
    FROM csv
    WHERE carrera LIKE ''%inge%''
    GROUP BY anio, carrera

) AS source
PIVOT
(
    SUM(cantidad_registros)
    FOR anio IN (' + @cols + ')
) AS pivot_table
ORDER BY carrera;';

EXEC(@query);
