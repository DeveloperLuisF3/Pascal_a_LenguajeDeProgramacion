# ESTRUCTURA DE UN PROGRAMA EN PASCAL

Un programa en lenguaje Pascal es en realidad un documento (escrito) que contiene una serie de instrucciones y especificaciones que le indican a una computadora cómo resolver un problema.

Sin embargo dichas instrucciones y especificaciones deben ser colocadas en lugares adecuados del texto siguiendo esta estructura:

1. Zona de encabezado.
2. Zona de declaraciones.
3. Cuerpo del módulo.

### Ejemplo:


```pascal
    //Palabra reservada = PROGRAM
    //Nombre del programa = Sumar_Numeros

    Program Sumar_Numeros;  //Zona de Encabezado
    { este programa pide al usuario dos números, los suma e imprime el resultado }

    Var
        A, B, C: Integer;   //Zona de Declaraciones

    Begin
        Write ('Escribe dos números:');  //Cuerpo Del Módulo
        Read (A, B); 
        C := A + B;
        Write ('La suma es: ', C);
    End
```         

La **zona de encabezado** es la primera línea del programa y en ella se indica el nombre o título del programa; la primera palabra debe ser **PROGRAM** seguida de un espacio y un identificador (nombre del programa) que no contenga espacios ni acentos: La línea debe terminar con **;** (punto y coma).

La **zona de declaraciones** es la sección del programa donde se especifican los requerimientos globales del programa: variables que se usarán, valores constantes, nuevos tipos de datos y módulos.

Todo lo que se declare en esta zona será posible usarlo en cualquier parte del programa. Esta zona se explicará con detalles en el siguiente tema.

El **cuerpo del módulo** es la sección del programa donde se encuentran las instrucciones que permiten resolver un problema. Esta parte siempre empieza con la palabra **BEGIN** y termina con la palabra **END**, seguida de punto (**.**).

Lo que aparece entre **{** y **}** es conocido como *comentario* y no forma parte del programa, sólo es una indicación útil para el programador que no altera el funcionamiento del programa.


Los comentarios sirven para indicar el propósito del programa, el autor, la fecha de creación, los requerimientos, aclarar instrucciones, etc.

En Pascal también es posible poner comentarios usando los siguientes simbolos: (* y *).

A continuación un ejemplo de un programa con comentarios:


```pascal
Program Saludo;

Begin
    { esto es un comentario }
    Write ('HOLA');
    (* esto también es un comentario *)
End.
```

Este programa sólo imprimirá HOLA. Las líneas que dicen ser comentarios serán ignoradas. 