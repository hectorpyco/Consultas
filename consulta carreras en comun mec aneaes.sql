use Carreras

select  aneaes.Universidad, mec.nombre_institucion,
 aneaes.Carrera, mec.denominacion_carrera, 
 aneaes.sede, mec.distrito,
  aneaes.[Fecha Finalización], MEC.Resol_ANEAES
from ANEAES
 join MEC
 on aneaes.Universidad =mec.nombre_institucion
WHERE
(mec.denominacion_carrera = aneaes.Carrera 
or 
mec.denominacion_carrera like '%' + aneaes.Carrera + '%'
or 
aneaes.Carrera like '%' + mec.denominacion_carrera + '%'

)
and
(aneaes.Sede = mec.distrito 
or 
aneaes.sede like '%' + mec.distrito + '%')
order by nombre_institucion