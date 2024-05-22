use titulos
SELECT carrera, COUNT(*) AS cantidad_registros
FROM csv
WHERE carrera LIKE '%inge%'
GROUP BY carrera
order by cantidad_registros desc

SELECT anio, carrera, COUNT(*) AS cantidad_registros
FROM csv
WHERE carrera LIKE '%inge%'
GROUP BY anio, carrera
ORDER BY anio, cantidad_registros DESC;
