# RUTINAS DE ENTRADA O DE SALIDA

Las **rutinas de entrada o salida** de datos son instrucciones que le permiten al programa comunicarse con el usuario mediante la instrucción de información o el envío de resultados.

## Rutina de salida

La instrucción que permite escribir datos y menajes en la pantalla es **WRITE** con su variante **WRITELN**.    

Para utilizar  **WRITE** tenga en cuenta los siguientes puntos:

1. Los textos (o mensajes) deberán ir entrecomillados.
2. Para escribir el valor almacenado en una varaiable basta con colocar el identificador correspondiente (sin comillas).
3. Para imprimir, con una misma instrucción **WRITE**, mensajes y variables, o varias variables, separar con comas (,).
4. Para imprimir un dato y bajar el cursor a la siguiente línea use **WRITELN**.

A continuación mostramos el uso del **WRITE** y **WRITELN**.


```pascal
    Program EjemplosDeImpresion;
    Var
        A : Integer;
    Begin
        A := 10;
        Write ('Hola);
        Write (6 * 5);
        Write (A); 
        Write ('Resultado: ', 2 * A);
    End.
```

El programa anterior imprimirá:
    Hola3010Resultado: 20

Para evitar que todas las impresiones aparezcan juntas podemos modificar el programa de la siguiente forma:


```pascal
    Program EjemplosDeImpresion_II;
    Var
        A : Integer:
        Begin
        A := 10;
        WriteLn ('Hola');
        WriteLn (6 * 5);
        WriteLn (A);
        WriteLn ('Resultado: ', 2 * A);
    End.
```

El programa anterior imprimirá:
        Hola
         30
         10
    Resultado: 20