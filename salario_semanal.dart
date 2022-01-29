//Calculo del salario semanal

void main() {
  int horas = 11;
  int salarioTotal = 0;
  int acta = 0;

  if (horas > 0) {
    if (horas > 40) {
      salarioTotal = CalculoSalarioExtra(horas);
    } else {
      salarioTotal = CalculoSalario(horas);
    }

    if (horas < 27) {
      acta = acta + 1;
      print(
          'El empleado ha trabajado menos de 27 horas, por lo cual se levanta $acta acta administrativa.');
      if (acta == 2) {
        print('Está despedido');
      }
    }

    print('El salario del empleado de esta semana es $salarioTotal.');
  } else {
    print('Los números negativos no son permitidos.');
  }
}

int CalculoSalario(int horas) {
  const salarioN = 120;
  return salarioN * horas;
}

int CalculoSalarioExtra(int horas) {
  const salarioN = 120;
  const salarioE = 170;
  int extra = 0;

  extra = horas - 40;
  horas = horas - extra;

  return (salarioN * horas) + (salarioE * extra);
}
