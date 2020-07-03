Program FormateoCadena;
uses crt;
Var
        st : String;
Begin
        clrscr;
        st := 'HOLA';
        writeln (st:3);         { ===> HOLA }
        writeln (st:4);         { ===> HOLA }
        writeln (st:5);         { ===>  HOLA }
        writeln (st:6);         { ===>   HOLA }
        writeln (st:7);         { ===>    HOLA }
        writeln ('ADIOS':6);    { ===>   ADIOS }
        readkey;
End.
