# Crear una base y sus tablas en SQL

## Crear una base

    CREATE DATABASE nombreBase;  

## Activar la base

    USE nombreBase;  

## Eliminar una base

    DROP DATABASE nombreBase;  

> Esta comando NO te pregunta si estás seguro.  

## Crear una tabla

    CREATE TABLE nombreTabla  
    (
        nCampo tipoDato características,
        nCampo tipoDato características,
        nCampo tipoDato características,
        nCampo tipoDato características
    );

> ejemplo


    CREATE TABLE billeteras
    (
        id int primary key auto_increment not null,  
        nombre varchar(30) not null,  
        precio float( 9, 2 ) not null,  
        stock smallint not null  
    );  
