# 7. Estructuras de programación

Las **estructuras de programación**, o **estructuras de control**, son sentencias que permiten controlar el orden en que se ejecutan las instrucciones de los programas. La incorporación de estas estructuras es una de las principales características del lenguaje Pascal.

Las estructuras de programación se agrupan en tres categorías:

1. Bloque.
2. Selección.
3. Iteración.

La selección y la iteración utilizan expresiones *booleanas* para poder controlar el flujo de instrucciones.

## Expresiones booleanas

Las **expresiones** ***booleanas*** son construcciones formadas por dos operandos relacionados mediante un operador de comparación y operadores lógicos.

Por ejemplo:

```pascal
    (x > 10) AND (x < 20) -----> // significa que el valor de x es mayor que 10 y menor que 20.

    (A <> B) ------> // ¿A es diferente de B?

    (PERSONA = 'JUAN') OR (PERSONA = 'PEDRO') -----> // ¿La persona es Juan o es Pedro?
```

Evaluar una expresión booleana significa determinar si la condición impuesta resulta verdadera **(TRUE)** o si resulta falsa **(FALSE)**.

En la vida diaria también vemos expresiones *booleanas* cuando imponemos condiciones, por ejemplo: "Si *bañas a tu perro y cortas el pasto* puedes salir a jugar", "Si *arreglas la mesa o lavas los platos* vas al cine".
    
## Bloque de instrucciones

Es una secuencia de instrucciones que comienzan con **BEGIN** y termina con **END**.

A continuación un ejemplo mediante un programa cuyo bloque contiene cuatro instrucciones.

```pascal
    Program AreaDelCirculo;
    Var 
        Area, Radio : Real;
    Begin
        Write ('Escriba el radio del círculo: ');
        Read (Radio);
        Area := PI * Radio * Radio;
        Write ('El área es ', Area:0:2);
    End.
```

El **END** que corresponde al cuerpo del módulo principal (**END** principal) debe terminar con punto (**.**). Cualquier otro **END** (no principal) debe terminar con punto y coma (**;**).

Si el bloque consta de una sola instrucción se puede omitir el **BEGIN** y el **END**, por ejemplo:

```pascal
    Begin
        Read (DIVIDENDO, DIVISOR);
        if DIVISOR = 0 Then
            Write ('No se puede hacer la Divición'); ------> // instrucción
        Else
            Begin                                   // Bloque
                COCIENTE = DIVIDENDO / DIVISOR;     // Bloque
                Write (Cociente);                   // Bloque
            End;
    End.
```

## Estructura de selección

La **estructura de selección** permite decidir entre bloques de instrucciones diferentes; para ello evalúa expresiones *booleanas* y considera si se cumplió (o no) la condición. En Pascal existen tres formas para indicar selección.

### * IF-THEN

La selección **IF-THEN** se traduce como **SI-ENTONCES**. Esta selección evalúa una expresión *booleana* y de resultar verdadera ejecuta el bloque indicado después de la palabra **THEN** (de resultar falsa no lo hará).

Ejemplo:

```pascal
    Program SeleccionSimple;
    { Este programa devuelve el valor absoluto de un número }
    Var
        i : Integer;
    Begin
        Read (i);
        IF i < 0 Then i := -i;  { Sólo cambia el signo si la }
        Write (i);              { i es negativa }
    End.
```

[Selección simple video](../vid/seleccionSimple.mp4 "Pascal-video")

### * IF-THEN-ELSE

La selección **IF-THEN-ELSE** se traduce como **SI-ENTONCES-DE LO CONTRARIO**. Esta selección evalúa una expresión booleana y de resultar verdadera ejecutará el bloque indicado despúes de la palabra **THEN**, pero de resultar falsa ejecutará el bloque indicado despúes de la palabra **ELSE**. Ejemplo:

```pascal
    Program SeleccionCompleta;
    { Este programa hace una división, pero verifica que el divisor sea diferente de cero }
    uses crt;
    Var
            Dividendo, Divisor, Cociente : Real;
    Begin
            clrscr;
            Read (DIVIDENDO, DIVISOR);
            If DIVISOR = 0 Then
                    Write ('No Se Puede Hacer La División')
            Else
                    Begin
                            COCIENTE := DIVIDENDO / DIVISOR;
                            Write (Cociente);
                    End;
            readkey;
    End.
```

La línea anterior a **ELSE** no lleva **;** (punto y coma). Si usted agrega el **;** se producirá un error.

[Selección completa video](../vid/seleccionCompleta.mp4 "Pascal-video")

### * CASE-OF

La selección **CASE-OF** se traduce como **EN CASO DE** y se usa para decidir entre varias opciones. CASE-OF requiere de una variable para compararla con una lista de opciones. De encontrar una que sea igual ejecutará el bloque indicado (si no la encuentra no efectuará ninguno de los bloques).

Esta selección sustituye a varios IF-THEN-ELSE en cascada, pero sólo acepta números enteros o caracteres y no funciona para reales ni para cadenas. Ejemplo:

```pascal
    Program Menu;
    Var
        Opcion : Char;
    Begin
        WriteLn ('1) Pollo');
        WriteLn ('2) Cordero');
        WriteLn ('3) Pescado');
        WriteLn ('4) Res');
        WriteLn ('5) Ninguno');
        Write ('Elija una opción: ');
        ReadLn (OPCION);
        Case OPCION OF
        '1' : WriteLn ('Eligió Pollo');
        '2' : WriteLn ('Eligió Cordero');
        '3' : WriteLn ('Eligio Pescado');
        '4' : WriteLn ('Eligió Res');
        End;
    End.
```

[menu video](../vid/menu.mp4 "Pascal-video")

## Estructura de iteración

La **estructura de iteración** o repetición permite la repetición de bloques de instrucciones.

En Pascal existen tres formas para indicar repetición.

### * WHILE-DO

El ciclo **WHILE-DO** se traduce como **MIENTRAS-HACER**, es un ciclo indeterminado. El **WHILE-DO** evalúa una expresión *booleana* y de resultar verdadera ejecutará el bloque indicado después de la palabra **DO**. Cada vez que acabe de ejecutarse el bloque se evaluará de nuevo la condición. El ciclo se detendrá cuando el resultado de la evaluación sea falso. 
 
Ejamplo:

```pascal
    Program Factorial_1;
    { Cálculo del factorial de un número leído desde el teclado }
    Var
        Numero, Factorial, Contador : Integer;
    Begin
        Read (NUMERO);
        FACTORIAL := 1;
        CONTADOR := 1;
        While CONTADOR <= NUMERO Do
            Begin
                FACTORIAL := FACTORIAL * CONTADOR;
                CONTADOR := CONTADOR + 1;
            End;
        Write (FACTORIAL);
    End.
```

[factorial_1 video](../vid/factorial_1.mp4 "Pascal-video")