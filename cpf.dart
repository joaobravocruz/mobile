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
  int digitoVerificador = (resto > 9) ? 0 : resto;

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
  int digitoVerificador2 = (resto2 > 9) ? 0 : resto2;

  bool validado = ((int.parse(cpfInicial[10]) == digitoVerificador2 &&
      int.parse(cpfInicial[9]) == digitoVerificador));
  print(validado);
}
