BEGIN TRAN
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

COMMIT

