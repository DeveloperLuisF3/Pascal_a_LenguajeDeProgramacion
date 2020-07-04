Program Saludo;
uses crt;
Var
        Nombre : String;
Begin
        clrscr;
        WriteLn ('Escriba su nombre: ');
        ReadLn (Nombre);
        WriteLn ('Hola ', Nombre);
        readkey;
End.