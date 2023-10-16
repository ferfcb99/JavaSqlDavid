-- definicion de variables

DECLARE @nombre VARCHAR(50)
SET @nombre = 'David';

declare @numero int
set @numero = 8;

if (@numero % 2 = 0)
	print('es par')

-- ajustar la condicion if, a if-else de tal forma que se defina si el numero leido es par o impar.