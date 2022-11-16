-- Consultas a más de una tabla
-- Relaciones o Joins

-- primero traemos dos columnas de UNA SÓLA tabla
-- nombre y precio de tabla productos
SELECT prdNombre, prdPrecio
    FROM productos;


-- TABLE RELATIONS
-- nombre(de producto), precio y nombre-de-marca de los productos
SELECT prdNombre, prdPrecio, mkNombre
    FROM productos, marcas
    WHERE productos.idMarca = marcas.idMarca;

-- nombre(de producto), precio
-- nombre-de-marca y nombre-de-categoria
SELECT prdNombre, prdPrecio, mkNombre, catNombre
FROM productos, marcas, categorias
WHERE productos.idMarca = marcas.idMarca
  AND productos.idCategoria = categorias.idCategoria
