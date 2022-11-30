-- trae nombre, apellido y departamento
-- no trae los nulos
SELECT nombre, apellido, depNombre
FROM empleados
 JOIN departamentos
  ON empleados.idDepartamento = departamentos.idDepartamento


-- trae nombre, apellido y departamento
-- si trae los nulos
SELECT nombre, apellido, depNombre
FROM empleados
 LEFT JOIN departamentos
  ON empleados.idDepartamento = departamentos.idDepartamento

-- se considera LEFT a la primera tabla mencionada

-- trae nombre, apellido y departamento
-- le da prioridad a la segunda tabla mencionada
SELECT nombre, apellido, depNombre
FROM empleados
 RIGHT JOIN departamentos
  ON empleados.idDepartamento = departamentos.idDepartamento

-- se considera RIGHT a la segunda tabla mencionada