Program AreaDelCirculo;
{ Este programa calcula el  rea de un c¡rculo de radio 35 }
uses crt;
Var
        Area, Radio : Real;
Begin
        clrscr;
        Radio := 35;
        Area := PI * Radio * Radio;
        write (Area);
        readkey;
End.