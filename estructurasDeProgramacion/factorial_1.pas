Program Factorial_1;
{ C lculo del factorial de un n£mero le¡do desde el teclado }
uses crt;
Var
        Numero, Factorial, Contador : Integer;
Begin
        clrscr;
        Read (NUMERO);
        Factorial := 1;
        CONTADOR := 1;
        While CONTADOR <= NUMERO Do
                Begin
                        FACTORIAL := FACTORIAL * CONTADOR;
                        CONTADOR := CONTADOR + 1;
                End;
        Write (FACTORIAL);
        readkey;
End.
