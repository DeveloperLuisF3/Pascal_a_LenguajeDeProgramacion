Program Tabular_Seno;
uses crt;
Var
        x, y : Real;
Begin
        clrscr;
        WriteLn ('Tabulaci¢n de la funci¢n Seno');
        WriteLn ('x y');
        x := 0.0;       { 0.0 valor inicial }
        While x <= 2 * PI Do    { 6.28 es el l¡mite de la tabulaci¢n }
         Begin
          y := Sin (x);   { calcular seno de x }
          Write (x:0:2, y:6:2);   { mostrar x, y }
          x := x + 0.1    { incrementar x en 0.1 }
         End;
        readkey;
End.