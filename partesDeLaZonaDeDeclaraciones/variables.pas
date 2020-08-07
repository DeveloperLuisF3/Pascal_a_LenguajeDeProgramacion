Program Variables;
uses crt;
Var
        Contador : Integer;
        Precio : Real;
        esta_lloviendo : Boolean;
        OPCION : Char;
        nombre : String;
        A, B, C :Integer;
Begin
        clrscr;
        Contador := 0;                  { Contador guardar  un 0 }
        Precio := 1520.12;              { Precio  guardar  1,520.12 }
        esta_lloviendo := FALSE;        { esta_lloviendo es falso }

        OPCION := 'A';                  { OPCION guardar  la letra A }
        nombre := 'Pedro L¢pez';

        Read (A, B);                    { Leer el valor desde el teclado }
        C := A + B;                     { El valor de c ser  de A + B }
        Write (C);                      { Escribe el valor de C }
        readkey;
End.