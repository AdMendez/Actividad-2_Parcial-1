//PALÍNDROMOS

void main() {
  var frase = 'Ateo por Arabia iba raro poeta';
  var i;
  var inverso = '';
  var cont = 1;
  var caracter;
  int espacios = 0;

  for (int a = 0; a < frase.length; a++) {
    caracter = frase.substring(a, cont);
    if (caracter == ' ') {
      espacios = espacios + 1;
    }
    cont = cont + 1;
  }

  espacios = espacios + 1;

  frase = frase.toLowerCase();
  frase = frase.replaceAll(' ', '');
  frase = frase.replaceAll(',', '');

  for (i = frase.length - 1; i >= 0; i--) {
    inverso += String.fromCharCode(frase.runes.elementAt(i));
  }

  if (frase == inverso) {
    print('La frase si es palíndroma, tiene $espacios palabras.');
  } else {
    print('La frase no es palíndroma');
  }
}
