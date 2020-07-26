Program SeleccionCompleta;
{ Este programa hace una divisi�n, pero verifica que el divisor sea diferente de cero }
uses crt;
Var
        Dividendo, Divisor, Cociente : Real;
Begin
        clrscr;
        Read (DIVIDENDO, DIVISOR);
        If DIVISOR = 0 Then
                Write ('No Se Puede Hacer La Divisi�n')
        Else
                Begin
                        COCIENTE := DIVIDENDO / DIVISOR;
                        Write (Cociente);
                End;
        readkey;
End.
