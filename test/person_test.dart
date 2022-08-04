import 'package:test/test.dart';
import 'package:unity_test/person.dart';

void main() {
  final person = Person(name: 'Reuel', age: 21, height: 1.8, weight: 64);

  group('IMC |', () {
    test('Imc deve ser do tipo double', () {
      expect(person.imc, isA<double>());
    });
    test('Imc deve ser 19.75', () {
      expect(person.imc, 19.75);
    });

    test('Imc não deve ser diferente de 19.75', () {
      expect(person.imc != 19.75, false);
      expect(person.imc, isNot(equals(20)));
    });
  });

  group('isOlder | ', () {
    test('Se idade é maior que 18 isOlder deve ser true', () {
      expect(person.isOlder, true);
    });

    test('Se idade é igual a 18 isOlder deve ser true', () {
      final person = Person(name: 'João', age: 18, height: 1.8, weight: 64);
      expect(person.isOlder, true);
    });

    test('Se idade é menor que 18 isOlder deve ser false', () {
      final person = Person(name: 'José', age: 16, height: 1.7, weight: 64);
      expect(person.isOlder, false);
    });
  });
}
