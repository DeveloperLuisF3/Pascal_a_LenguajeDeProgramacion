Program SeleccionSimple;
{ Este programa devuelve el valor absoluto de un n£mero }
uses crt;
Var
        i : Integer;
Begin
        clrscr;
        Read (i);
        IF i < 0 Then i := -i;  { S¢lo cambia el signo si la }
        Write (i);              { i es negativa }
        readkey;
End.