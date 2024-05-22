
  UPDATE [titulos].[dbo].[registros_titulos]
  SET sexo = CASE WHEN sexo = 'HOMBRE' THEN 0
                WHEN sexo = 'MUJER' THEN 1
                END;
