Program Menu;
uses crt;
Var
        Opcion : Char;
Begin
        clrscr;
        WriteLn ('1) Pollo');
        WriteLn ('2) Cordero');
        WriteLn ('3) Pescado');
        WriteLn ('4) Res');
        WriteLn ('5) Ninguno');
        Write ('Elija una opci¢n: ');
        ReadLn (OPCION);
        Case OPCION OF
        '1' : WriteLn ('Eligi¢ Pollo');
        '2' : WriteLn ('Eligi¢ Cordero');
        '3' : WriteLn ('Eligi¢ Pescado');
        '4' : WriteLn ('Eligio Res');
        End;
        readkey;
End.
