# Operadores

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

Si usted prueba este ejemplo en la computadora no observará nada porque todo el proceso se efetúa internemente. 