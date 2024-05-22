/*
SELECT [nombre_institucion]
      ,[codigo_institucion]
      ,[tipo_institucion]
      ,[tipo_gestion]
      ,[codigo_departamento]
      ,[departamento]
      ,[codigo_distrito]
      ,[distrito]
      ,[codigo_establecimiento]
      ,[establecimiento]
      ,[carrera_institucion_id]
      ,[codigo_oferta]
      ,[codigo_carrera]
      ,[denominacion_carrera]
      ,[denominacion_titulo]
      ,[nivel_titulacion]
      ,[enfasis_id]
      ,[enfasis_carrera]
      ,[modalidad_asistencia]
      ,[clasificacion_campo_detallado]
      ,[clasificacion_campo_especifico]
      ,[clasificacion_campo_amplio]
      ,[activa]
  FROM [carreras].[dbo].[csv]

*/

select distinct(clasificacion_campo_amplio), denominacion_carrera, carrera
from [carreras].[dbo].[csv] ca
join [titulos].[dbo].[csv] ti
on ca.denominacion_carrera = ti.carrera
where ca.denominacion_carrera LIKE '%INGE%'