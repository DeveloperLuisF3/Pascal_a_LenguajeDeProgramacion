Program FormateoEntero;
uses crt;
Var
        r : Real;
Begin
        clrscr;
        r := 5.715;
        writeln (r:0:2);        { ===> 5.71 }
        writeln (r:4:2);        { ===> 5.71 }
        writeln (r:5:2);        { ===>  5.71 }
        writeln (r:6:2);        { ===>   5.71 }
        writeln (r:7:2);        { ===>    5.71 }
        readkey;
End.