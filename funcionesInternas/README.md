# 6. Funciones internas

Una funciòn es una instrucciòn para transformar un dato en otro segùn cierta regla. Por ejemplo, la funciòn *valor absoluto* le quita el signo a un nùmero.

El lenguaje Pascal dispone de un grupo de funciones predefinidas, conocidas como funciones *internas* o *intrìnsecas*.

Lista de las principales funciones:

1. ABS (x) = Valor absoluto de x
2. SQR (x) = Cuadrado de x
3. SQRT (x) = Raìz cuadrada de x
4. ODD (x) = Devuelve TRUE si x es nùmero impar
5. INT (x) = Parte entera de x
6. FRAC (x) = Parte fraccionaria de x
7. TRUNC (x) = Truncar la parte fraccionaria de x
8. ROUND (x) = Redondeo de x
9. SIN (x) = Seno de x
10. COS (x) = Coseno de x
11. ARCTAN (X) = Tangente inversa de x
12. LN (x) = Logaritmo natural de x
13. EXP (x) = Exponencial de x
14. CHR (x) = Caracter equivalente de x
15. ORD (x) = Còdigo nùmerico equivalente de x
16. LENGHT (x) = Longitud de la cadena x
17. RANDOM = Nùmero aleatorio

El valor x que se encierra entre los parèntesis es llamado argumento de la funciòn.

Detalle de cada una de estas funciones.

|  Función     |                           Descripción                            |       Ejemplo      |
|:------------:|:----------------------------------------------------------------:|:------------------:|
|ABS|La función **ABS** recibe como argumento un número, real o entero, y devuelve ese mismo número pero sin considerar su signo.|ABS (12) = 12, ABS (-12) = 12|
|SQR|La función  **SQR** recibe como argumento un número, real o entero, y devuelve el cuadrado de ese número.|SQR (5.1) = 26.1, SQR (5.1) = 26.01|
|SQRT|La función **SQRT** recibe como argumento un número positivo, real o entero, y devuelve la raíz cuadrada de ese número. Si se trata de evaluar esta función con un argumento negativo se producirá un error.|SQRT (100) = 10, SQRT (-3)<---¡error!|
|ODD|La función **ODD**  recibe como argumento un número entero y devuelve el valor de TRUE (verdadero) si el número es impar y el valor de FALSE (falso) si el número es par.|ODD (23) = TRUE, ODD (2) = FALSE, ODD (0.3)<---¡error!|
|INT|La función **INT** recibe como argumento un número real y devuelve solamente la parte entera de ese número.|INT (3.33333) = 3.0, INT (-0.12) = 0.0|
|FRAC|La función **FRAC** recibe como argumento un número real y devuelve solamente la fracción decimal de ese número.|FRAC (3.33333) = 0.33333, FRAC (-0.12)|
|TRUNC|La función **TRUNC** recibe como argumento un número real  y le trunca la parte decimal convirtiéndolo en entero.|TRUNC (3.33333) = 3, TRUNC (-0.12) = 0, TRUNC (5.0) = 5|
|ROUND|La función **ROUND** recibe como argumento un número real y lo redondea al número entero más próximo.|ROUND (6.3) = 6, ROUND (6.8) = 7|
|SIN|La función **SIN** calcula la función trigonomérica seno. Recibe como argumento un ángulo medido en radianes (por lo que debe ser un número real o entero).|SIN (0.7854) = 0.7071|
|COS|La función **COS** calcula la función trigonométrica coseno. Recibe como argumento un ángulo medido en radianes (por lo que debe ser un número real o entero).|COS (0) = 1.0|
|ARCTAN|La función **ARCTAN** calcula la inversa de la función trigonométrica tangente. Recibe como argumento un número real o entero y devuelve el ángulo correspondiente medido en radianes.|ARCTAN (1.7321) = 1.0472|
|LN|La función **LN** recibe como argumento un número positivo, real o entero, y devuelve el logaritmo natural de ese número. Si se trata de evaluar esta función con un argumento negativo o cero se producirá un error.|LN (1) = 0, LN (2) = 0.6931, LN (-3)<---¡error!, LN (0)<---¡error!|
|EXP|La función **EXP** se llama exponencial y es la función inversa al logaritmo. Recibe como argumento un número real o entero.|EXP (0) = 1.0, EXP (0.6931) = 2.0, EXP (-3) = 0.04979|
|CHR|La función **CHR** recibe como argumento un número entero, entre 0 y 255, y devuelve el carácter ASCII equivalente.|CHR (65) = 'A', CHR (88) = 'X', CHR (122) = 'z', CHR ('M')<---¡error!|
|ORD|La función **ORD** recibe como argumento un carácter y devuelve el valor ASCII equivalente.|ORD ('A') = 65, ORD ('X') = 68, ORD ('z') = 122, ORD (12)<---¡error!|
|LENGTH|La función **LENGTH** recibe como argumento una cadena de caracteres y devuelve la longitud (número de caracteres) de esa cadena.|LENGTH ('HOLA') = 4, LENGTH ('Hungría') = 7, LENGTH ('') = 0, LENGTH (12)<---¡error!|
|RANDOM|La función **RANDOM** genera un número al azar (aleatorio). Si no recibe argumentos, el número que se obtenga estará entre 0 y 1. Si recibe algún número **x** como argumento, el valor que se obtenga estará comprendido entre 0 y **x**-1. Es muy importante que antes de utilizar esta función coloque la instrucción **RANDOMIZE** al inicio del programa para asegurarse que sí se obtendrán números aleatorios.|RANDOM, RANDOM (12)|

A continuación un programa que calcula las raíces de una ecuación cuadrática ocupando algunas de las funciones.

```pascal
    Program RaicesCuadraticas;
    Var
        A, B, C, X1, X2 : Real;
    Begin
        Write ('Escriba el coeficiente cuadrático (A): ');
        Read (A);
        Write ('Escriba el coeficiente lineal (B): ');
        Read (B);
        Write ('Escriba el término independiente (C): ');
        Read (C);
        X1 := (-B + SQRT (SQR(B) - 4 * A * C)) / (2 * A);
        X2 := (-B - SQRT (SQR(B) - 4 * A * C)) / (2 * A);
        Write ('Las raíces son:', X1:0:2, ' y ', X2:0:2);
    End.
```

[raicesCuadraticas video](../vid/raicesCuadraticas.mp4 "Ver Pascal-video")

Este es otro ejemplo, un programa para tabular la función seno. Utiliza la sentencia WHILE que no hemos visto aún, pero que se encarga de repetir el cálculo de la función para varios valores.

```pascal
    Program Tabular_Seno;
    Var
        x, y : Real;
    Begin
        WriteLn ('Tabulación de la función Seno);
        WriteLn ('x y');
        x := 0.0;   { 0.0 valor inicial }
        While x <= 2 * PI Do    { 6.28 es el límite de la tabulación }
        Begin
            y := Sin (x);   { calcular seno de x }
            Write (x:0:2,y:6:2);    { mostrar x, y }
            x := x + 0.1;   { incrementar x en o.1 }
        End;
    End.
```

[tabular_seno video](../vid/tabular_seno.mp4 "Ver Pascal-video")

*El radian es otra unidad para medir ángulos y equivale a 57.30 grados.*