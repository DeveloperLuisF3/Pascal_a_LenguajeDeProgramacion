Program ConcatenarCadenas;
uses crt;
Var
        Primero, Segundo, Saludo : String;
Begin
        clrscr;
        Primero := 'Hola';
        Segundo := '¨C¢mo est s?';
        Saludo := Primero + ', ' + Segundo;
        WriteLn (Saludo);
        readkey;
End.