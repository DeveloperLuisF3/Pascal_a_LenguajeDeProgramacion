# ESTRUCTURA DE UN PROGRAMA EN PASCAL

Un programa en lenguaje Pascal es en realidad un documento (escrito) que contiene una serie de instrucciones y especificaciones que le indican a una computadora cómo resolver un problema.

Sin embargo dichas instrucciones y especificaciones deben ser colocadas en lugares adecuados del texto siguiendo esta estructura:

1. Zona de encabezado.
2. Zona de declaraciones.
3. Cuerpo del módulo.

### Ejemplo:


```javascript 
    //Palabra reservada = PROGRAM
    //Nombre del programa = Sumar_Numeros

    Program Sumar_Numeros;  //Zona de Encabezado
    { Este programa pide al usuario dos números, los suma e imprime el resultado}

    Var
        A, B, C: Integer;   //Zona de Declaraciones

    Begin
        Write ('Escribe dos números:');  //Cuerpo Del Módulo
        Read (A, B); 
        C := A + B;
        Write ('La suma es: ', C);
    End
```         

La ** zona de encabezado ** es la primera línea del programa y en ella se indica el nombre o título del programa; la primera palabra debe ser ** PROGRAM ** seguida de un espacio y un identificador (nombre del programa) que no contenga espacios ni acentos: La línea debe terminar con ** ; ** (punto y coma).
