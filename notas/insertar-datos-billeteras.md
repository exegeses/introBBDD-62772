# Insertar datos en una tabla

> Para insertar datos en una tablas usamos el comando INSERT

> Primera variante  
 
    INSERT INTO nombreTabla  
      ( nColumna1, nColumna2, nColumna3 )  
    VALUES  
      ( dato1, dato2, dato3 );  

> Ejemplo:  

    INSERT INTO billeteras  
      ( id, nombre, precio, stock )  
    VALUES  
      ( DEFAULT, 'Ledger Nano S', 16000, 30 );

> Segunda variante

    INSERT INTO nombreTabla
    VALUES  
      ( dato1, dato2, dato3 );  

> Ejemplo  

    INSERT INTO billeteras
    VALUES  
     ( DEFAULT, 'Coolwalet Pro', 56500, 15 );    
    