# RUTINAS DE ENTRADA O DE SALIDA

Las **rutinas de entrada o salida** de datos son instrucciones que le permiten al programa comunicarse con el usuario mediante la instrucción de información o el envío de resultados.


## Rutina de salida

La instrucción que permite escribir datos y menajes en la pantalla es **WRITE** con su variante **WRITELN**.    

Para utilizar  **WRITE** tenga en cuenta los siguientes puntos:

1. Los textos (o mensajes) deberán ir entrecomillados.
2. Para escribir el valor almacenado en una varaiable basta con colocar el identificador correspondiente (sin comillas).
3. Para imprimir, con una misma instrucción **WRITE**, mensajes y variables, o varias variables, separar con comas (,).
4. Para imprimir un dato y bajar el cursor a la siguiente línea use **WRITELN**.

A continuación un ejemplo del uso de **WRITE** y **WRITELN**.


```pascal
    Program EjemplosDeImpresion;
    Var
        A : Integer;
    Begin
        A := 10;
        Write ('Hola');
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


## Salida formateada

Se conoce como *formato de salida* al aspecto que presentarán los datos una vez impresos. En Pascal hay dos posibilidades de modificación: alterar la cantidad de decimales de un número real o la cantidad de espacio mínimo para escribir todas las cifras de un número o los símbolos de una cadena.

Este control se logra agregando el modificador dos puntos (**:**) a los datos que imprimirá la instrucción **WRITE**.


### * Formateo de campos decimales

Este formateo permite controlar la cantidad de cifras decimales con las que un número será desplegado en pantalla. Ejemplo:


```pascal
    Program FormateoDecimal;
    Var
        r : Real;
    Begin
        r := 5.715;
        writeln (r:0:0);    { ===> 6 }
        writeln (r:0:1);    { ===> 5.7 }
        writeln (r:0:2);    { ===> 5.71 }
        writeln (r:0:3);    { ===> 5.715 }
        writeln (r:0:4);    { ===> 5.7150 }
    End.
```


A continuación un ejemplo de un caso comúm donde apreciamos la necesidad de formatear la impresión de números.


```pascal
    Program AreaDelCirculo;
    { Este programa calcula el área de un círculo de radio 35 }
    Var
        Area, Radio: Real;
    Begin
        Radio := 35;
        Area := PI * Radio * Radio; { PI es una constante predifinida }
        Write (Area);   { Cuyo valor es de 3.14159... }
    End.
```


El programa anterior escribirá:      3.848445100E03 


Este mismo programa imprimirá algo más legible si lo modificamos. Ejemplo:


```pascal
    Program AreaDelCirculo_II;
    Var
        Area, Radio : Real;
    Begin
        Radio := 35;
        Area := PI * Radio * Radio;
        Write (Area:0:2);
    End.
```


El programa anterior escribirá:     3848.45

### * Formateo de campos enteros

Este formateo permite controlar el espacio necesario para las cifras enteras de un número que será desplegado en pantalla. Ejemplo:

```pascal
    Program FormateoEntero;
    Var
        r : Real;
    Begin
        r := 5.715;
        writeln (r:0:2);    { ===> 5.71 }
        writeln (r:4:2);    { ===> 5.71 }
        writeln (r:5:2);    { ===>  5.71 }
        writeln (r:6:2);    { ===>   5.71 }
        writeln (r:7:2);    { ===>    5.71 }
    End.
```

Este formateo es muy útil para impresión de tablas de datos.

### * Formateo de campos para cadenas

Este formateo permite controlar el espacio mínimo necesario para desplegar en la pantalla los caracteres de una cadena. Ejemplo:

```pascal
    Program FormateoCadena;
    Var
        st : String;
    Begin
        st := 'HOLA';
        writeln (st:3);         { ===> HOLA }
        writeln (st:4);         { ===> HOLA }
        writeln (st:5);         { ===>  HOLA }
        writeln (st:6);         { ===>   HOLA }
        writeln (st:7);         { ===>    HOLA }
        writeln ('ADIOS':6);    { ===>  ADIOS }
    End.
```