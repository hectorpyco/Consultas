UPDATE MEC
SET MEC.Resol_ANEAES=ANEAES.[Fecha Finalización]
from MEC
 join ANEAES
 on ANEAES.Universidad =mec.nombre_institucion
WHERE
mec.denominacion_carrera = aneaes.Carrera 
and
aneaes.Sede = mec.distrito 
and
mec.Resol_ANEAES='NULL'
and
mec.modalidad_estudio='Presencial'

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