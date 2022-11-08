# Modificar estructura de una tabla

## Cambiar nombre de una columna

    ALTER TABLE nombreTabla  
        CHANGE nombreOLD nombreNew tipoDeDato;  

    ALTER TABLE destinos  
        CHANGE destAsitnos destAsientos TINYINT;  

## Cambiar tipo de datos de una columna y modificadores de un campo

    ALTER TABLE nombreTabla  
        MODIFY nombreColumna tipoDato() modificador;  

    ALTER TABLE destinos  
        MODIFY destNombre VARCHAR(150) null;  

## Agregar una nueva columna en una tabla

    ALTER TABLE nombreTabla  
        ADD nombreCampo tipoDato modificador;

    ALTER TABLE destinos  
        ADD prueba varchar(20) NOT NULL;  

    ALTER TABLE destinos  
        ADD fecha DATE NOT NULL default '2022-11-08'; 

## Eliminar una columna de una tabla 

    ALTER TABLE nombreTabla  
        DROP nombreColumna;  

    ALTER TABLE destinos  
        DROP fecha;
