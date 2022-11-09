-- modificar datos DENTRO de una tabla

-- UPDATE nombreTabla
--    SET columna = valor;

UPDATE destinos
    SET destPrecio = 6800
  WHERE idDestino = 9;

UPDATE regiones
    SET regNombre = 'Europa Occidental'
    WHERE idRegion = 5;



UPDATE destinos
    SET destPrecio = 6800,
        columna2 = valor,
        columna3 = valor
    WHERE idDestino = 9;

-- modificar el precio de
-- todos los destinos de oceanía
-- 5% de aumento

UPDATE destinos
    SET destPrecio = destPrecio * 1.05
    WHERE idRegion = 8;




