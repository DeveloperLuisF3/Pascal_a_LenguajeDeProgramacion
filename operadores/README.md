# 5. Operadores

Son símbolos o palabras que sirven para obtener un resultado a partir de uno o dos datos llamados **operandos**.

En Pascal hay cuatro categorías de operadores:

1. Operador de asignación.
2. Operadores aritméticos.
3. Operadores de comparación.
4. Operadores lógicos.

A la construcción formada por operadores se le conoce como *expresión*.

## Operador de asignación

El símbolo := es el **operador de asignación** y sirve para darle valor a una variable.

Se a usado este operador en ejemplos anteriores pero, a continuación, un ejemplo específico:

```pascal
    Program Asignacion;
    Var 
        a, b, c : Integer;
    Begin
        a := 15;    { en a se almacenará 15 }
        b := 20;    { en b se almacenará 20 }
        c := a + b; { en c se almacenará 35 }
    End.
```

Si usted prueba este ejemplo en la computadora no observará nada porque todo el proceso se efetúa internamente. 

## Operadores aritméticos

Los **operadores aritméticos** son los que permiten realizar las siguientes operaciones aritméticas:

|   Operador    |      Descripción      |
|---------------|:---------------------:|
|       +       |        Suma           |
|       -       |        Resta          |
|       *       |   Multiplicación      |
|       /       |      División         |
|      Div      |   División entera     |
|      Mod      |   Módulo (residuo)    |

A continuación un ejemplo específico. Al final se encuentran algunas instrucciones con **WRITE**, que permiten ver qué ocurrió internamente con las variables.

```pascal
    Program Aritmeticos;
    Var
        a, b, c : Integer;
        d, e, f : Real;
    Begin
        a := 15 + 26;   { en a se almacenar  41 }
        b := 21 mod 4;  { en b se almacenar  1 }
        c := a - b;     { en c se almacenar  40 }
        d := 15.0;      { en d se almacenar  15.0 }
        e := d * b;     { en e se almacenar  15.0 }
        f := d / e;     { en f se almacenar  1.0 }
        WriteLn (a);
        WriteLn (b);
        WriteLn (c);
        WriteLn (d);
        WriteLn (e);
        WriteLn (f);
End.
```

Del ejemplo anterior se observará lo siguiente:

El operador **/** efectúa una división  y entrega como resultado un cociente que incluye cifras decimales.

El operador **DIV** efectúa una división  y entrega como resultado un cociente que no incluye cifras decimales.

El operador **MOD** efectúa una división y entrega como resultado el residuo obtenido. Otros ejemplos:

    5 / 2 = 2.5
    5 DIV 2 = 2
    5 MOD 2 = 1
    10 / 2 = 5.0
    10 DIV 2 = 5
    10 MOD 2 = 0

Observe que el operador **/** entrega un número de tipo **REAL**, aunque la división sea exacta. Es decir:

    10 / 2 = 5.0, que es diferente de 10 DIV 2 = 5

Un aspecto importante sobre el operador **+** es que sirve también para enlazar (concatenar) cadenas, como se ve en el siguiente programa:

```pascal
    Program ConcatenarCadenas;
    Var
        Primero, Segundo, Saludo : String;
    Begin
        Primero := 'Hola';
        Segundo := '¿Cómo estás?;
        Saludo := Primero + ', ' + Segundo;
        WriteLn (Saludo);
    End.
```

Este programa imprimirá:

    Hola, ¿Cómo estás?