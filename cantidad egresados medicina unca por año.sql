
SELECT count(anio),anio, sexo,carrera, institucion FROM [mapa].[dbo].[titulo]
where institucion='UNIVERSIDAD NACIONAL DE CAAGUAZU'
group by anio, institucion, sexo, carrera
order by carrera