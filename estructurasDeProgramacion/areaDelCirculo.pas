Program AreaDelCirculo;
uses crt;
Var
        Area, Radio : Real;
Begin
        clrscr;
        Write ('Escriba el radio del c¡rculo: ');
        Read (Radio);
        Area := PI * Radio * Radio;
        Write ('El  rea es ', Area:0:2);
        readkey;
End.