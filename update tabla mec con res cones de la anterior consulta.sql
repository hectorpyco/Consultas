
UPDATE MEC
SET MEC.Resol_CONES=CONES.[DOCUMENTO RESPALDATORIO]
from MEC
 join CONES
 on CONES.INSTITUCIÓN =mec.nombre_institucion
WHERE
(mec.denominacion_carrera = cones.denominacion_carrera 
or 
mec.denominacion_carrera like '%' + cones.[CARRERA O PROGRAMA] + '%'
OR
mec.denominacion_carrera like '%' + cones.denominacion_carrera + '%'
)
and
(cones.[SEDE O FILIAL] = mec.distrito )


