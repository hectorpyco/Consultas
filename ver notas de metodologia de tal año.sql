/*	m1 KTIE026 - KTIL026 - KTII026 - KTIC025
	M2 KTIE064 - KTIL064 - KTII061 - KTIC044
	M3 KTIE082 - KTIL082 - KTII078 - KTIC082
*/
SELECT *
  FROM [unca].[dbo].[actascalificaciones]
  where idmateria = 'KTIL026'
  and year(fecha)='2021'
SELECT *
  FROM [unca].[dbo].[actascalificacionesdetalles]
  where  idacta='KT202010028' or idacta='KT202010222' or idacta='KT202010405'
  and calificacion <> '1'
