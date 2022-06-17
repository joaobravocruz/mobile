import 'dart:io';

main() {
  stdout.write('Cpf: ');
  String? cpfInicial = stdin.readLineSync().toString();
  cpfInicial.split('');

  int controle = 10;
  List<int> cpfCalculado = [];
  for (int i = 0; i <= 8; i++) {
    int calculoCpf = (int.parse(cpfInicial[i]) * controle);
    cpfCalculado.add(calculoCpf);
    controle--;
  }
  int soma = cpfCalculado.reduce((value, element) => value + element);
  int modulo = soma % 11;
  int resto = 11 - modulo;
  if (resto > 9) {
    resto = 0;
  }

  int controle2 = 11;
  List<int> cpfCalculado2 = [];
  for (int i = 0; i <= 9; i++) {
    int calculoCpf2 = (int.parse(cpfInicial[i]) * controle2);
    cpfCalculado2.add(calculoCpf2);
    controle2--;
  }

  int soma2 = cpfCalculado2.reduce((value, element) => value + element);
  int modulo2 = soma2 % 11;
  int resto2 = 11 - modulo2;
  if (resto2 > 9) {
    resto2 = 0;
  }

  if (int.parse(cpfInicial[10]) == resto2 &&
      int.parse(cpfInicial[9]) == resto) {
    print('OK');
  } else {
    print('ERRO');
  }
}
