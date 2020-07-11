Program RaicesCuadraticas;
uses crt;
Var
        A, B, C, X1, X2 : Real;
Begin
        clrscr;
        Write ('Escriba el coeficiente cuadr tico (A): ');
        Read (A);
        Write ('Escriba el coeficiente lineal (B): ');
        Read (B);
        Write ('Escriba el t‚rmino independiente (C): ');
        Read (C);
        X1 := (-B + SQRT (SQR(B) - 4 * A * C)) / (2 * A);
        X2 := (-B - SQRT (SQR(B) - 4 * A * C)) / (2 * A);
        Write ('Las ra¡ces son:', X1:0:2,' y ', X2:0:2);
        readkey;
End.
