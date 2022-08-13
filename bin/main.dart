import 'dart:io';

import 'package:first_technical_challenge_escribo/calculate.dart';

void main() {
  int number;
  String again;
  print(
      '\nEste programa calcula o somatório de todos os valores inteiros divisíveis por 3 ou 5 que sejam inferiores ao número passado');
  do {
    do {
      print('\nDigite um número inteiro válido');
      number = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
      if (number <= 0) {
        print('O valor digitado não é válido');
      }
    } while (number <= 0);
    int result = sumOfIntegersDivisibleByThreeOrFive(number);
    print(result > 0
        ? 'O somátorio dos valores divisíveis por 3 ou 5 menores que $number é $result'
        : 'Não existe nenhum número menor que $number divisível por 3 ou 5');
    print(
        "Deseja realizar um novo calculo? ['S' para continuar ou qualquer outra tecla para finalizar]");
    again = stdin.readLineSync() ?? '';
  } while (again.toLowerCase() == 's');
  print('Fim');
}
