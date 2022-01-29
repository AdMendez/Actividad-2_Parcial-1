//Calculo de un número decimal a binario.

void main() {
  int numero = 10;
  int resto = 0;
  String binario = '';
  double division = 0;

  print('El numero en decimal es: $numero');

  if (numero < 0) {
    print('El numero debe ser negativo. Intente de nuevo...');
  }

  while (numero > 0) {
    resto = numero % 2;
    binario = resto.toString() + binario;

    division = numero / 2;
    numero = division.floor();
  }

  if (numero >= 0) {
    print('El numero en binario es: $binario');
  }
}
