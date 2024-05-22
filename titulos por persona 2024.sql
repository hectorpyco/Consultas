use titulos
SELECT p.documento, p.nombre_completo, COUNT(rt.documento) AS cantidad_registros
FROM personas p
JOIN registros rt ON p.documento = rt.documento
GROUP BY p.documento, p.nombre_completo
ORDER BY cantidad_registros DESC
