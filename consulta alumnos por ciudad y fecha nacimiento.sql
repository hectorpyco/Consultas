use unca
select apellido,alumnos.nombre, ciudades.nombre ciudad, alumnos.fechanacimiento from alumnos
join ciudades
on alumnos.idciudad= ciudades.codigo

where
/* ciudades.nombre = 'NO DEFINIDO'*/
year(alumnos.fechanacimiento)>2010