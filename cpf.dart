import 'dart:io';

ValidarCpf(cpfInicial) {
  cpfInicial.split('');
  String? uf;
  switch (int.parse(cpfInicial[8])) {
    case 0:
      uf = "RS";
      break;
    case 1:
      uf = "DF GO MS MT TO";
      break;
    case 2:
      uf = "AC AM AP PA RO RR";
      break;
    case 3:
      uf = "CE MA PI";
      break;
    case 4:
      uf = "AL PB PE RN";
      break;
    case 5:
      uf = "BA SE";
      break;
    case 6:
      uf = "MG";
      break;
    case 7:
      uf = "ES RJ";
      break;
    case 8:
      uf = "SP";
      break;
    case 9:
      uf = "PR SC";
      break;
  }

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
  print("$validado  -  $uf");
}

main() {
  stdout.write('Cpf: ');
  String? cpfInicial = stdin.readLineSync().toString();
  ValidarCpf(cpfInicial);
}
