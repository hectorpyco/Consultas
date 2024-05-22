SELECT  [documento]
      ,[nombre_completo]
  FROM [mapa].[dbo].[personas$]
  where nombre_completo = 'MARIA CRISTINA VILLALBA'
  or nombre_completo= 'CARLOS ALBERTO GONZALEZ'
  or nombre_completo = 'JULIO CESAR RODRIGUEZ'
  or nombre_completo = 'WANDERLEY DA SILVA'
  or nombre_completo = 'MARIA ELIZABETH GIMENEZ'
  or nombre_completo='ANA BELEN GONZALEZ'
 
  order by nombre_completo