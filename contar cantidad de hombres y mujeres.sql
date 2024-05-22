select sexo, COUNT(sexo) AS cantidad_sexos
from registros_titulos
GROUP BY sexo
