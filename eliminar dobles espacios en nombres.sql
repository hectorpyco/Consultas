update [mapa].[dbo].[registros_titulos$]
--set nombre_completo = replace(rtrim(ltrim(nombre_completo)),'   ',' ')
set documento = replace(rtrim(ltrim(documento)),' ','')