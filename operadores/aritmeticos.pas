Program Aritmeticos;
uses crt;
Var
        a, b, c : Integer;
        d, e, f : Real;
Begin
        clrscr;
        a := 15 + 26;   { en a se almacenar  41 }
        b := 21 mod 4;  { en b se almacenar  1 }
        c := a - b;     { en c se almacenar  40 }
        d := 15.0;      { en d se almacenar  15.0 }
        e := d * b;     { en e se almacenar  15.0 }
        f := d / e;     { en f se almacenar  1.0 }
        WriteLn (a);
        WriteLn (b);
        WriteLn (c);
        WriteLn (d);
        WriteLn (e);
        WriteLn (f);
        readkey;
End.
