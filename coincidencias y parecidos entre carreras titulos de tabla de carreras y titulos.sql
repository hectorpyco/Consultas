SELECT t.carrera AS carrera_titulos, t.titulo AS titulo_titulos,
       c.denominacion_carrera AS carrera_carreras, c.denominacion_titulo AS titulo_carreras,
       CASE 
           WHEN t.carrera = c.denominacion_carrera AND t.titulo = c.denominacion_titulo THEN 'Exacta'
           ELSE 'Parecida'
       END AS tipo_coincidencia
FROM (SELECT distinct  
      [carrera]
      
      ,[titulo]
      
  FROM [titulos].[dbo].[csv]) t
INNER JOIN (select distinct [denominacion_carrera],[denominacion_titulo]
from carreras.dbo.csv) c 
    ON (t.carrera = c.denominacion_carrera AND t.titulo = c.denominacion_titulo) OR
       (t.carrera LIKE '%' + c.denominacion_carrera + '%' AND t.titulo LIKE '%' + c.denominacion_titulo + '%');
