use titulos
UPDATE csv
SET csv.clasificacion_campo_amplio = coincidencias.clasificacion_campo_amplio,
    csv.nivel_titulacion = coincidencias.nivel_titulacion
FROM [titulos].[dbo].[csv] csv
INNER JOIN (
    SELECT t.[carrera] AS carrera_titulos, c.denominacion_carrera AS carrera_carreras, 
           t.[titulo] AS titulo_titulos, c.denominacion_titulo AS titulo_carreras,
           c.[nivel_titulacion], c.[clasificacion_campo_amplio]
    FROM (SELECT DISTINCT [carrera], [titulo]
          FROM [titulos].[dbo].[csv]) t
    INNER JOIN (SELECT DISTINCT [denominacion_carrera], [denominacion_titulo],
                        [nivel_titulacion], [clasificacion_campo_amplio]
                FROM carreras.dbo.csv) c 
    ON t.[carrera] = c.[denominacion_carrera] AND t.[titulo] = c.[denominacion_titulo]
) coincidencias
ON csv.[carrera] = coincidencias.carrera_titulos AND csv.[titulo] = coincidencias.titulo_titulos;
