-- Consultas de la última clase

-- id,nombre, apellido, rol
-- de la empresa Pied Piper
-- versión  table relation
SELECT idUsuario, nombre, apellido, rol
FROM usuarios as u, roles as r
WHERE u.idRol = r.idRol
  AND email LIKE '%piedpiper%';

-- en el campo email contiene  @piedpiper.com
-- id,nombre, apellido, rol
-- de la empresa Pied Piper

-- id,nombre, apellido, rol
-- de la empresa Pied Piper
-- versión  JOIN
SELECT idUsuario, nombre, apellido, rol
FROM usuarios as u
 JOIN roles as r
  ON u.idRol = r.idRol
WHERE email LIKE '%piedpiper%';

-- obtener listado de usuarios
-- ordenados por fecha de nacimiento
SELECT *
FROM usuarios
ORDER BY fechaNacimiento;

-- obtener datos de usuario/s nacidos el
-- 01 de octubre de 1988

-- NOTA: a las fecha las tratamos como se fuesen strings
--  el problema es que si no lo ponemos entre comillas
-- ejecutaría una RESTA o una DIVISIÓN
SELECT *
FROM usuarios
WHERE fechaNacimiento = '1988-10-01';


-- obtener listado de usuarios
-- nacidos en 1988
SELECT *
FROM usuarios
WHERE fechaNacimiento LIKE '1988%';

-- obtener listado de usuarios
-- nacidos en 1988
SELECT *
FROM usuarios
WHERE fechaNacimiento BETWEEN '1988-01-01' AND '1988-12-31'

-- obtener listado de usuarios
-- nacidos en 1988
SELECT *
FROM usuarios
WHERE  YEAR(fechaNacimiento) = 1988;

-- obtener listado de usuarios
-- nacidos en febrero
SELECT *
FROM usuarios
WHERE MONTH(fechaNacimiento) = 2;


-- obtener listado de usuarios
-- nacidos en junio de 1998
SELECT *
FROM usuarios
WHERE fechaNacimiento BETWEEN '1998-06-01' AND '1998-06-30'


-- obtener listado de usuarios
-- nacidos en junio de 1998
SELECT *
FROM usuarios
WHERE YEAR(fechaNacimiento) = 1998
  AND MONTH(fechaNacimiento) = 06;


-- días transcurridos desde el último login

SELECT *, DATEDIFF( CURRENT_DATE(), fechaLogin ) AS dias
from usuarios;

-- DATEDIFF( CURRENT_DATE(), fechaLogin )

-- obteniendo edad de los usuarios
SELECT nombre, apellido, fechaNacimiento,
       TIMESTAMPDIFF(year, fechaNacimiento, curdate() ) as edad
FROM usuarios;


