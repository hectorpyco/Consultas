/*use titulos
SELECT COUNT(*) AS total_registros
FROM csv;
*/
/*SELECT DISTINCT documento, nombre_completo
INTO personas
FROM csv;
SELECT DISTINCT carrera, carrera_id
INTO carreras
FROM csv;
SELECT DISTINCT titulo, titulo_id
INTO titulos
FROM csv;
SELECT DISTINCT tipo_institucion, tipo_institucion_id
INTO tipo_inst
FROM csv;
SELECT DISTINCT institucion, institucion_id
INTO instituciones
FROM csv;

SELECT * INTO registros FROM csv;
*/
/*
ALTER TABLE registros DROP COLUMN 
      [nombre_completo]     
      ,[carrera]
      ,[titulo]
      ,[numero_resolucion]
      ,[fecha_resolucion]
      ,[tipo_institucion]
      ,[institucion]
      ,[gobierno_actual]
*/
/*
SELECT COUNT(*) AS total_registros
FROM registros;
*/
/*
WITH CTE AS (
    SELECT *,
           ROW_NUMBER() OVER(PARTITION BY [anio]
      ,[mes]
      ,[documento]
      ,[carrera_id]
      ,[titulo_id]
      ,[tipo_institucion_id]
      ,[institucion_id]
      ,[sexo] ORDER BY (SELECT NULL)) AS RowNumber
    FROM registros
)
DELETE FROM CTE WHERE RowNumber > 1;

*/
/*
SELECT cantidad_registros, COUNT(*) AS cantidad_personas
FROM (
    SELECT p.documento, p.nombre_completo, COUNT(rt.documento) AS cantidad_registros
    FROM personas p
    JOIN registros rt ON p.documento = rt.documento
    GROUP BY p.documento, p.nombre_completo
) AS subconsulta
GROUP BY cantidad_registros
ORDER BY cantidad_registros DESC;
*/
/* contar documentos duplicados en tabla personas
WITH CTE AS (
    SELECT *,
           ROW_NUMBER() OVER(PARTITION BY 
      [documento]
       ORDER BY (SELECT NULL)) AS RowNumber 
    FROM personas
)
select * FROM CTE WHERE RowNumber > 1
order by RowNumber desc;
*/
/* titulos por persona usando la condicion de nombre y documento
use titulos
SELECT p.documento, p.nombre_completo, COUNT(rt.titulo_id) AS cantidad_registros
FROM personas p
JOIN csv rt ON p.documento = rt.documento
AND p.nombre_completo = rt.nombre_completo
GROUP BY p.documento, p.nombre_completo
ORDER BY cantidad_registros DESC
*/