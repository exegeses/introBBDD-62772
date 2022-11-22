-- BUSCANDO coincidencias  palabra reservada LIKE

-- que contenga ...  LIKE  '%...%'
SELECT prdNombre, prdPrecio, prdDescripcion
FROM productos
WHERE prdNombre LIKE '%Marshall%';

-- que comience con Altavoz
SELECT prdNombre, prdPrecio, prdDescripcion
FROM productos
WHERE prdDescripcion LIKE 'Altavoz%';


-- combinando con relaciones
-- que comience con Altavoz
SELECT prdNombre, prdPrecio, prdDescripcion, mkNombre
FROM productos, marcas
WHERE productos.idMarca = marcas.idMarca
  AND prdDescripcion LIKE 'Altavoz%';


-- variante usadno JOIN
-- que comience con Altavoz
SELECT prdNombre, prdPrecio, prdDescripcion, mkNombre
FROM productos
 JOIN marcas
  ON productos.idMarca = marcas.idMarca
WHERE prdDescripcion LIKE 'Altavoz%';

-- combinando 3 tablas
SELECT prdNombre, prdPrecio, prdDescripcion, mkNombre, catNombre
FROM productos, marcas, categorias
WHERE productos.idMarca = marcas.idMarca
  AND productos.idCategoria = categorias.idCategoria
  AND prdDescripcion LIKE 'Altavoz%';

-- variante JOINS
SELECT prdNombre, prdPrecio, prdDescripcion, mkNombre, catNombre
FROM productos
 JOIN marcas
  ON productos.idMarca = marcas.idMarca
 JOIN categorias
  ON productos.idCategoria = categorias.idCategoria
WHERE prdDescripcion LIKE 'Altavoz%';


SELECT prdNombre, prdPrecio, prdDescripcion, mkNombre, catNombre
FROM productos
 JOIN marcas
  ON productos.idMarca = marcas.idMarca
 JOIN categorias
  ON productos.idCategoria = categorias.idCategoria
WHERE prdDescripcion LIKE 'Altavoz%'
  AND productos.idMarca = 4;

