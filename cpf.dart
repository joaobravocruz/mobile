import 'dart:io';

ValidarCpf(cpfInicial) {
  cpfInicial.split('');

  int soma = 0;

  for (int i = 1; i <= 9; i++) {
    soma = soma + int.parse(cpfInicial.substring(i - 1, i)) * (11 - i);
  }
  int resto = (soma * 10) % 11;
  int digitoVerificador1 = (resto > 9) ? 0 : resto;

  soma = 0;

  for (int i = 1; i <= 10; i++) {
    soma = soma + int.parse(cpfInicial.substring(i - 1, i)) * (12 - i);
  }
  int resto2 = (soma * 10) % 11;
  int digitoVerificador2 = (resto2 > 9) ? 0 : resto2;

  bool validado = ((int.parse(cpfInicial[10]) == digitoVerificador2 &&
      int.parse(cpfInicial[9]) == digitoVerificador1));
  print(validado);
}

main() {
  stdout.write('Cpf: ');
  String? cpfInicial = stdin.readLineSync().toString();
  ValidarCpf(cpfInicial);
}
