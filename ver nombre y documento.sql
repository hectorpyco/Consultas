SELECT  [documento]
      ,[nombre_completo]
  FROM [mapa].[dbo].[personas$]
  where documento = '4834962'
  or documento = '6089268'
  or documento= '3856059'
  or documento= '4697844'
  order by documento