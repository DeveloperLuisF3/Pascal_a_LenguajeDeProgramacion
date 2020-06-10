# ESTRUCTURA DE UN PROGRAMA EN PASCAL

Un programa en lenguaje Pascal es en realidad un documento (escrito) que contiene una serie de instrucciones y especificaciones que le indican a una computadora cómo resolver un problema.

Sin embargo dichas instrucciones y especificaciones deben ser colocadas en lugares adecuados del texto siguiendo esta estructura:

1. Zona de encabezado.
2. Zona de declaraciones.
3. Cuerpo del módulo.


|           Palabra reservada = PROGRAM                      |
|           Nombre del programa = Sumar_Numeros              |
|_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ |
|   Program Sumar_Numeros;                  |                |
|   {Este programa pide al usuario          |                |
|   dos números, los suma e imprime         |   Encabezado   |
|   el resultado}                           |                |
|_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _| _ _ _ _ _ _ _ _|
|   Var                                     |                |
|       A, B, C : Integer;                  |  Declaraciones |
|_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _| _ _ _ _ _ _ _ _|
|   Begin                                   |                |
|       Write ('Escriba dos números: ');    |    Cuerpo      |
|       Read (A, B);                        |      Del       |
|       C := A + B;                         |    Módulo      |
|       Write ('La suma es: ', C);          |                |
|_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _| _ _ _ _ _ _ _ _|S
