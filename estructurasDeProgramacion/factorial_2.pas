Program Factorial_2;
{ C lculo del factorial de un n£mero le¡do desde el teclado }
uses crt;
Var
        Numero, Factorial, Contador : Integer;
Begin
        clrscr;
        Read (NUMERO);
        FACTORIAL := 1;
        CONTADOR := 1;
        Repeat
                FACTORIAL := FACTORIAL * CONTADOR;
                CONTADOR := CONTADOR + 1;
        Until CONTADOR > NUMERO;
        Write (FACTORIAL);
        readkey;
End.