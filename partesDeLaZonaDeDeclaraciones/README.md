# PARTES DE LA ZONA DE DECLARACIONES

Antes de estudiar las variables y constantes que se deben declarar en esta zona es necesario abordar el tema de tipo de datos que es fundamental en el lenguaje Pascal.

## Tipos básicos de datos

Se conoce como **tipo** al conjunto de características que posee un dato y se requiere para que la computadora pueda manejar correctamente los datos.

En Pascal encontramos cinco tipos de datos básicos (también llamados tipos primitivos, estándares o elementales): **INTEGER, REAL, BOOLEAN, CHAR Y STRING**.

El tipo **INTEGER** permite manejar números enteros positivos y negativos, como 5, 1512, -18, 76, 0, etcétera. Este tipo resulta útil para edades, fechas, número de repetición y otras similares.

El tipo **REAL** permite manejar números reales, es decir, números con fracciones decimales, por ejemplo: 3.333, 12.53, 5.0, -16.12, 39156.18, 3.6E12, -1.54E10, 9.9E-12². Este tipo es utilizado para sueldos, resultados de fórmulas, operaciones matemáticas en general, división de números y otras situaciones similares donde las cantidades no son necesariamente enteras.

El tipo **BOOLEAN**  sólo permite dos valores: **TRUE** y **FALSE** (verdadero y falso respectivamente).
Es útil para los resultados de una condición; por ejemplo ¿5 > 6? da un valor de **FALSE** (falso), mientras que ¿5 = 2 + 3? da un valor de **TRUE** (verdadero).

El tipo **CHAR** es utilizado para manejar una letra, un símbolo o un número. En Pascal siempre se encierran los caracteres entre comillas sencillas. por ejemplo: 'A', 'm', '9', '?', '!', '#', 'é', y todos los demás.

El tipo **STRING** se utiliza para *cadenas de caracteres*, es decir mensajes o nombres. En Pascal siempre se encierran entre comillas sencillas. Algunos ejemplos son: 'Juan López', 'Hola', '¿Cómo estás?, 'COMMAND.COM'.

Los datos de tipo **STRING** pueden tener un máximo de 255 caracteres y un mínimo de cero. Una cadena con cero caracteres se llama *cadena vacía* y se representa con dos comillas seguidas ("").

Para concluir cabe mencionar que los programas en Pascal no hacen diferencia entre mayúsculas y minúsculas, por ejemplo, la palabra **PROGRAM** es equivalente a **program**, y también equivalente a **proGRAm**. Sin embargo, en las cadenas sí existe diferencia entre mayúsculas y minúsculas, por ejemplo 'Hola' es diferente de 'HOLA'.

## Rango de los tipos

Debido a que las computadoras tienen sus limitaciones no es posible almacenar números de cualquier tamaño, por ello, todos los tipos tienen un rango de valores válidos, es decir, si se trata de guardar un número fuera de ese rango de producirá un error. En la siguiente tabla se muestra el rango de los tipos básicos. 


|   Tipo    |   Valor mínimo    |   Valor máximo    |
|-----------|:-----------------:|------------------:|
|  INTEGER  |      -32768       |       +32767      |
|    REAL   |      2.9e-39      |       1.7e38      |
|  BOOLEAN  |       FALSE       |        TRUE       |
|    CHAR   | Carácter Ascií 0  | Carácter Ascií 255|
|   STRING  |    0 Caracteres   |   255 Caracteres  |


## Variables

Una **varaiable** es un espacio en la memoria de la computadora donde es posible almacenar un dato. En Pascal es necesario especificar con claridad qué variables se usarán en el programa (antes de usarlas) y qué tipo de información se guardará en esos espacios.

Las variables requeridas se especifican dentro de la zona de declaraciones, en la sección identificada por **var**. Ejemplo:

```pascal
Var
    Contador : Integer;
    Precio : Real;
    esta_lloviendo : Boolean;
    OPCION : Char;
    nombre : String;
    A, B, C : Integer;
End.
```

El valor que le corresponda a una variable será asignado dentro del cuerpo del módulo.


```pascal
Begin
    Contador := 0;              {Contador guardará un 0}
    Precio := 1520.12;          {Precio guardará 1,520.12}
    esta_lloviendo := FALSE;    {Está_lloviendo es falso}

    OPCION := 'A';              {OPCION guardará la letra A}
    nombre := 'Pedro López';

    Read (A, B);                {Leer el valor desde el teclado}
    C := A + B;                 {El valor de C será de A + B}
    Write (C);                  { Escribe el valor de C }
End.        
```

[variables video](../vid/variables.mp4 "Ver Pascal-video")

El tipo **STRING** puede guardar hasta 255 caracteres, sin embargo algunas varibles necesitan menos caracteres (un nombre de persona no suele requerir más de 10). Para evitar el desperdicio de memoria podemos limitar el máximo de caracteres que se puedan almacenar en una variable de tipo STRING como vemos en este ejemplo.


```pascal
Var
    Nombre : String [10]; {Máximo 10 caracteres}
    Telefono : String [7]; {Máximo 7 caracteres}
    st4 : String [4]; {Máximo 4 caracteres}
End.
```

Si se intenta almacenar un mensaje cuyo tamaño sea mayor al permitido por la variable, los caracteres sobrantes se perderán. Por ejemplo, **st4 := 'CADENA';** sólo guardará 'CADE'.

Es muy importante que al asignar valor a una variable éste corresponda al tipo de la misma. A continuación una serie de asignaciones con errores y aciertos:


```pascal
    Var
        A, B : Integer;
        C : Real;
        D : Boolean;
        E : String [30];
        Z : Char;

    Begin
        Z := '3';
    
    {1} A := C + B;   {ERROR!}
    {2} Z := A + B;   {ERROR!}
    {3} E := 'Hola' + Z;  {CORRECTO!}
    {4} D := (A + B);   {ERROR!}
    {5} B := B * 2 + A;  {CORRECTO!}
    {6} E := Z;  {ERROR!}  
    {7} D := A > B;  {CORRECTO!}
    End.
```


La línea {1} es errónea porque el resultado de la suma **C + B** es un real (porque **C** es de tipo **REAL**) y la variable **A** es de tipo **INTEGER**.

La línea {2} es errónea porque el resultado de la suma **A + B** es un entero y la variable **Z** es de tipo **CHAR**.

La línea {3} es correcta porque **Z** es un carácter que se concatena con una cadena.

La línea {4} es errónea porque el resultado de la suma **A + B** es un entero y la variable **D** es de tipo **BOOLEAN**.
 
La linea {5} es correcta porque el resultado de la operación **B * 2 + A** continúa como entero y se asigna una variable de tipo **INTEGER**.

La línea {6} es errónea porque se trata de guardar toda una cadena con el espacio de un sólo carácter.

La línea {7} es correcta porque el resultado de comparar **A > B** es booleano (cierto o falso) y la variable **D** es de tipo **BOOLEAN**.


## Constantes

Es un identificador que sustituye a un valor que no varía con el tiempo.

En Pascal es necesario especificar claramente que constantes se usarán en el programa (antes de usarles) y cúal será su equivalencia.

Las constantes requeridas se especifican dentro de la zona de declaraciones, en la sección identificada con **CONST**. Ejemplo:


```pascal
    Const
        INSTITUCION = 'ESCUELA NACIONAL PREPARATORIA';
        COSTO_PERIODICO = 1500.0;
        VERDADERO = TRUE;
        ADMIRACION = '!';
        LONGITUD = 100;   
```


El valor de las constantes se utilizarán dentro del cuerpo del módulo.


```pascal
    Begin 
        WriteLn (INSTITUCION);
        WriteLn (LONGITUD * LONGITUD);
    End.
```


El ejemplo anterior imprimirá:

    ESCUELA NACIONAL PREPARATORIA
            1000

[Constantes video](../vid/constantes.mp4 "Ver Pascal-video")

El siguiente ejemplo mostrará un error pues dentro del cuerpo del módulo no se puede cambiar el valor a una constante.


```pascal
    Begin
        VERDADERO := FALSE;
    End.
```


## * Otras declaraciones

Dentro de la zona de declaraciones también se pueden declarar los siguientes elementos.

1. Tipos de datos definidos por el usuario dentro de la sección **TYPE**.
2. Módulos dentro de la sección **PROCEDURE**.
3. Funciones definidas por el usuario dentro de la sección **FUNCTION**.


Respecto a estas declaraciones profundizaremos más adelante dentro del texto.