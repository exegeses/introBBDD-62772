-- sólo dos columnas: nombre y precio | TODOS los registros
SELECT destNombre, destPrecio
    FROM destinos;


-- FILTROS, palabra reservada WHERE


-- sólo dos columnas: nombre y precio.
-- dónde el precio sea 8000 como máximo
SELECT destNombre, destPrecio
    FROM destinos
    WHERE destPrecio <= 8000;


-- sólo dos columnas: nombre y precio.
-- dónde el precio sea entre 6600 y 8000
SELECT destNombre, destPrecio
FROM destinos
WHERE destPrecio <= 8000
  AND destPrecio >= 6600;

-- una variante usando BETWEEN
SELECT destNombre, destPrecio
FROM destinos
WHERE destPrecio BETWEEN 6600 AND 8000;

-- filtro OR
-- los que tengan idRegion = 5 o bien idRegion = 3
SELECT destNombre, destPrecio
FROM destinos
WHERE idRegion = 5
   OR idRegion = 3;


-- resolviendo paréntesis
SELECT destNombre, destPrecio
FROM destinos
WHERE ( idRegion = 5 OR idRegion = 3)
  AND destPrecio <= 7000;


-- usando una subconsulta
SELECT destNombre, destPrecio
FROM destinos
WHERE destPrecio = (  SELECT min(destPrecio) FROM destinos  );