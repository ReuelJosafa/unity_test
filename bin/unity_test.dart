import 'package:unity_test/person.dart';

void main() {
  final person = Person(name: 'Reuel', age: 21, height: 1.8, weight: 64);

  print(person.imc);
}
