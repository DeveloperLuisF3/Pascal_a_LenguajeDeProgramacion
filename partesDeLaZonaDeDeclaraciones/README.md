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

El tipo **STRING** se utiliza para *cadenas de caracteres*, es decir mensajes o nombres. En Pascal siempre se encierran entre comillas sencillas.Algunos ejemplos son: 'Juan López', 'Hola', '¿Cómo estás?, 'COMMAND.COM'.

Los datos de tipo **STRING** pueden tener un máximo de 255 caracteres y un mínimo de cero. Una cadena con cero caracteres se llama *cadena vacía* y se representa con dos comillas seguidas ("").

Para concluir cabe mencionar que los programas en Pascal no hacen diferencia entre mayúsculas y minúsculas, por ejemplo, la palabra **PROGRAM** es equivalente a **program**, y también equivalente a **proGRAm**. Sin embargo, en las cadenas sí existe diferencia entre mayúsculas y minúsculas, por ejemplo 'Hola' es diferente de 'HOLA'.

## Rango de los tipos

Debido a que las computadoras tienen sus limitaciones no es posible almacenar números de cualquier tamaño, por ello, todos los tipos tienen un rango de valores válidos, es decir, si se trata de guardar un número fuera de ese rango de producirá un error. En la siguiente tabla se muestra el rango de los tipos básicos. 