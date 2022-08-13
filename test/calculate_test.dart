import 'package:first_technical_challenge_escribo/calculate.dart';
import 'package:test/test.dart';

void main() {
  test(
      'Deve retornar o somatório de todos os numeros divisiveis por 3 ou 5 inferiores ao número passado',
      () {
    expect(sumOfIntegersDivisibleByThreeOrFive(10), 23);
  });
}
