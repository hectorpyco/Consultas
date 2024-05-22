SELECT cantidad_registros, COUNT(*) AS cantidad_personas
FROM (
    SELECT p.documento, p.nombre_completo, COUNT(rt.documento) AS cantidad_registros
    FROM personas p
    JOIN registros rt ON p.documento = rt.documento
    GROUP BY p.documento, p.nombre_completo
) AS subconsulta
GROUP BY cantidad_registros
ORDER BY cantidad_registros DESC;
