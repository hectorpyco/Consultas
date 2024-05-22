SELECT t.carrera AS carrera_titulos, c.denominacion_carrera AS carrera_carreras, 
        t.titulo AS titulo_titulos, c.denominacion_titulo AS titulo_carreras,
		c.[nivel_titulacion],c.[clasificacion_campo_amplio]
FROM (SELECT distinct  
      [carrera]      
      ,[titulo]
      
  FROM [titulos].[dbo].[csv]) t
INNER JOIN (select distinct 
			[denominacion_carrera],[denominacion_titulo]
			,[nivel_titulacion],[clasificacion_campo_amplio] 
from carreras.dbo.csv) c 
    ON (t.carrera = c.denominacion_carrera AND
       t.titulo = c.denominacion_titulo) 
	   
ORDER BY carrera_titulos
