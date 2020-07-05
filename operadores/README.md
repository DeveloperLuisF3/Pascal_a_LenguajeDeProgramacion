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

## Operadores de comparación

Los operadores de comparación o relacionales permiten verificar la relación existente entre dos datos y entregan un resultado de cierto o falso (llamado *booleano*).

En Pascal se tienen los siguientes operadores de comparación:

|   Operador    |       Descripción     |   Símbolo matemático  |
|---------------|-----------------------|:---------------------:|
|      =        |       Igual que       |           =           |
|      <        |       Menor que       |           <           |
|      >        |       Mayor que       |           >           |
|      <=       |   Menor o igual que   |           ≤           | 
|      >=       |   Mayor o igual que   |           ≥           |
|      <>       |      Diferente de     |           ≠           |

A continuación un ejemplo específico:

```pascal
    Program Relacionales;
    Var
        a, c : Integer;
        b, d : Boolean;
    Begin 
        a := 15;
        c := 20;
        b := a > b; { en b se almacenará FALSE }
        d := a <> b;    { en d se almacenará TRUE }
    End.
```

Estos operadores son utilizados en las estructuras de programación, como se verá en el tema correspondiente.

## Operadores lógicos

Son los que permiten realizar operaciones descritas por la lógica matemática y actúan únicamente con valores de falso y verdadero.

En Pascal se tienen los siguientes operadores lógicos:

|   Operador    |   Significado |
|---------------|:-------------:|
|      AND      |       Y       |
|      OR       |       O       |
|      NOT      |       NO      |

El operador **AND** produce un resultado verdadero sólo cuando sus dos operandos son verdaderos.

El operador **OR** produce un resultado falso sólo cuando sus dos operandos son falsos.

El operador **NOT** produce un resultado contrario al del operador.

A continuación se muestran las tablas de verdad de cada operador.

|      Op1      |      Op2      |       Op1 AND Op2     |
|---------------|---------------|:---------------------:|
|     FALSE     |     FALSE     |         FALSE         |
|     FALSE     |     TRUE      |         FALSE         |
|     TRUE      |     FALSE     |         FALSE         |
|     TRUE      |     TRUE      |         TRUE          |

|      Op1      |      Op2      |       Op1 OR Op2      |
|---------------|---------------|:---------------------:|
|    FALSE_     |    FALSE_     |         FALSE         |
|    FALSE_     |    TRUE_      |         TRUE          |
|    TRUE_      |    FALSE_     |         TRUE          |
|    TRUE_      |    TRUE_      |         TRUE          |

|      Op1      |       NOT Op2      |
|---------------|:------------------:|
|    FALSE_     |        TRUE        |
|    TRUE_      |        FALSE       |

Este tipo de operadores son utilizados al efectuar comparaciones, los ejemplos los veremos más adelante.

## Jerarquía de operadores

Se conoce como jerarquía o precedencia de los operadores al orden en que se efectuarán las operaciones indicadas en una expresión; es similar a la jerarquía algebraica.

La jerarquía de operadores en Pascal es la siguiente:

1. NOT
3. +, -, Or
2. *, /, Div, Mod, And
4. =, <>, <, >, <=, >=

Esta jerarquía se altera mediante el uso de paréntesis.

Algunos ejemplos:

* 5 + 10 * 2 / 5 + 1 = 10
* 5 + (10 * 2) / 5 + 1 = 10
* 5 + 10 * (2 / 5) + 1 = 10
* (5 + 10) * 2 / 5 + 1 = 7
* 5  + 10 * 2 / (5 + 1) = 8.33
* (5 + 10) * 2 / (5 + 1) = 5

