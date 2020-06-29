Program AreaDelCirculo_II;
uses crt;
Var
        Area, Radio : Real;
Begin
        clrscr;
        Radio := 35;
        Area := PI * Radio * Radio;
        write (Area:0:2);
        readkey;
End.